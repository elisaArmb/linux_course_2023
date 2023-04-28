#!/bin/sh

SBATCH --mem=10G
SBATCH --ntasks=4
SBATCH --time=3:00:00
SBATCH --output=sample1_bam.out
SBATCH --error=sample1_bam.err


module load samtools
samtools sort -m 2G -o sample1.bam -@ 4 sample1.sam
