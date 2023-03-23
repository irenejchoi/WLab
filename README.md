# Wong Lab Scripts

All the bioinformatics processing and analysis for plasma and saliva cfDNA used in Wong Lab. Created by Irene Choi.


## Install all the required packages, softwares, and tools!

> NOTE:
> You only need to do this once. Hoffman2 has most dependencies already preinstalled. 
> Follow the steps below to install all the ones Hoffman2 does not already have.

**bbmap**

1. Click on this link: https://sourceforge.net/projects/bbmap/.
2. Download bbmap and unzip.
3. Drag and drop unzipped bbmap folder into Hoffman2 home directory.
4. Double check that you have bbmerge.sh within the bbmap folder in Hoffman2 home directory.

**fastp**

1. Click on this link: https://github.com/OpenGene/fastp.
2. Go to this section: *or download the latest prebuilt binary for Linux users*.
3. Download by running this command on Hoffman2.
```
wget http://opengene.org/fastp/fastp
chmod a+x ./fastp
```
4. Double check that you have *fastp* in Hoffman2 home directory.

**qualimap**

1. Click on this link: http://qualimap.conesalab.org/.
2. Go to this section: *Downloads*.
3. Download *qualimap_v2.2.1.zip* and unzip.
4. Drag and drop unzipped *qualimap_v2.2.1* folder into Hoffman2 home directory.
5. Double check that you have *qualimap_v2.2.1* in Hoffman2 home directory.

**srsly-umi**

1. Click on this link: https://www.claretbio.com/products/srsly-umi.
2. Go to this section: *Option 1*.
3. Load Python on Hoffman2.
```
module load python
```
4. Download by running this command on Hoffman2.
```
pip install srslyumi
```

**umi_tools**

1. Click on this link: https://umi-tools.readthedocs.io/en/latest/QUICK_START.html.
2. Go to this section: *Step 1: Install UMI-Tools*.
3. Load Python on Hoffman2.
```
module load python
```
4. Download by running this command on Hoffman2.
```
pip install umi_tools
```

**picard**

1. Download *picard.jar* from this GitHub.
2. Drag and drop *picard.jar* into Hoffman2 home directory.

> NOTE:
> This is a sketchy way of downloading it. This will have to do for now.
> Make sure it looks like a coffee mug!

**blacklist regions**

1. Download *blacklist.bed* from this GitHub.
2. Drag and drop *blacklist.bed* into Hoffman2 home directory.

> NOTE:
> These are the blacklisted regions we are removing!
