from pandas import *
import numpy as np
import pysam
import subprocess
import sys

# reading CSV file
# manually input .csv file
data = read_csv("OC_intersect.csv")
 
# converting column data to list
name = data['name'].tolist()
chr_info = data['chr_info'].tolist()

# iterate through each gene from CSV file
for i in range(len(name)):
    # obtain gene chromosome, start, end regions
    region = chr_info[i]
    # generate gene_name based on the gene name
    # manuall input directory with FILENAME (without .bam)
    gene_name = sys.argc[0] + name[i] + ".sam"
    # call run_geneintersect_view.sh to run samtools view with input of output file name (gene_name), input file (manually write in), gene region
    # manually input directory of run_geneintersect_view.sh, directory with FILENAME (with .bam)
    subprocess.call(['/u/home/n/neeti/run_geneintersect_view.sh', str(gene_name), sys.argc[0] + ".bam", str(region)])