# UPDATED BY IRENE CHOI 3 Mar 2023

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
module load bedtools
module load samtools

# substitute the command to run your code below:

# use 4 arguments: 
# [1] /u/DIRECTORY (do not include FILE.bam) 
# [2] .bam FILENAME (without .bam) 
# [3] /u/DIRECTORY (do not include FILE.bed) 
# [4] .bed FILENAME (without .bed)
# ex: qsub run_geneintersect.sh /u/home/c/choi/ UBC1 /u/home/c/choi/ OC_intersect

# # index bam (comment out if already done)
# samtools index $1$2".bam"

# create intersect directory (comment out if already done)
mkdir $1$2"_intersect/"

# bedtools intersect with relation to [4] .bed file
bedtools intersect -u -abam $1$2".bam" -b $3$4".bed" > $1$2"_intersect/"$2"_"$4"_intersected.bam"

# echo job info on joblog:
echo " " 
echo "Job $JOB_ID ended on:   " `hostname -s`
echo "Job $JOB_ID ended on:   " `date `
echo " "
