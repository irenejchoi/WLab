# Wong Lab Scripts

All the bioinformatics processing and analysis for plasma and saliva cfDNA used in Wong Lab. Created by Irene Choi.


## Install all the required packages, softwares, and tools!

> NOTE:
>You only need to do this once. Hoffman2 has most dependencies already preinstalled. 
> Follow the steps below to install all the ones Hoffman2 does not already have.

**bbmap**

1. Click on this link: https://sourceforge.net/projects/bbmap/.
2. Download bbmap.
3. Drag and drop unzipped bbmap folder into Hoffman2 home directory.
4. Double check that you have bbmerge.sh within the bbmap folder in Hoffman2 home directory.

**fastp**

1. Click on this link: https://github.com/OpenGene/fastp.
2. Go to this section: *or download the latest prebuilt binary for Linux users*
3. Download by running this command on Hoffman2.
```
wget http://opengene.org/fastp/fastp
chmod a+x ./fastp
```
4. Double check that you have fastp in Hoffman2 home directory.