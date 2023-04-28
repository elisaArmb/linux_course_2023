#!/bin/sh

SBATCH --mem=10G
SBATCH --ntasks=4
SBATCH --time=3:00:00
SBATCH --output=sample1_bam.out
SBATCH --error=sample1_bam.err


samtools index -@4 sample1.bam

samtools idxstats sample1.bam > sample1.idxstats
samtools flagstat sample1.bam > sample1.flagstat

