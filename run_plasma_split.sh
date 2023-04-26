# UPDATED BY IRENE CHOI 18 Apr 2023

#!/bin/bash
#$ -cwd
# error = Merged with joblog
#$ -o joblog.$JOB_ID
#$ -j y
# Edit the line below as needed
#$ -l h_rt=4:00:00,h_data=4G
# Add multiple cores/nodes as needed:
#$ -pe shared 4
# Email address to notify
#$ -M $USER@mail
# Notify when
#$ -m bea

# echo job info on joblog:
echo "Job $JOB_ID started on:   " `hostname -s`
echo "Job $JOB_ID started on:   " `date `
echo " "

# load the job environment:
source /u/local/Modules/default/init/modules.sh
export PATH=$PATH:~/.local/bin

# substitute the command to run your code below:

# use 3 arguments: 
# [1] /u/INPUT_DIRECTORY (do not include FILENAME) 
# [2] FILENAME (do not include _R1 or _R3, use ONLY sample name)
# ex: qsub run_plasma_split.sh /u/home/c/choi/ P_H7

# split into ultrashort and mononucleosomal
module load anaconda3
module load python
conda activate dt_choi
alignmentSieve -b $1$2"_processing/"$2"_sorted_blacklisted.bam" --filterMetrics log.txt -p 8 --minFragmentLength 25 --maxFragmentLength 99 -o $1$2"_processing/"$2"_ultrashort.bam"
alignmentSieve -b $1$2"_processing/"$2"_sorted_blacklisted.bam" --filterMetrics log.txt -p 8 --minFragmentLength 100 --maxFragmentLength 250 -o $1$2"_processing/"$2"_mononucleosomal.bam"
conda deactivate

echo "___________US/MN___________"

# sort bam
module load samtools
samtools sort -o $1$2"_processing/"$2"_sorted_us.bam" $1$2"_processing/"$2"_ultrashort.bam"
samtools sort -o $1$2"_processing/"$2"_sorted_mn.bam" $1$2"_processing/"$2"_mononucleosomal.bam"

echo "___________SORT_US/MN___________"

# index bam
module load samtools
samtools index $1$2"_processing/"$2"_sorted_us.bam"
samtools index $1$2"_processing/"$2"_sorted_mn.bam"

echo "___________INDEX_US/MN___________"

# echo job info on joblog:
echo " " 
echo "Job $JOB_ID ended on:   " `hostname -s`
echo "Job $JOB_ID ended on:   " `date `
echo " "