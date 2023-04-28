#!/bin/sh

SBATCH --mem=10G
SBATCH --ntasks=4
SBATCH --time=3:00:00
SBATCH --output=output.out
SBATCH --error=error.err



kallisto quant --rf-stranded --threads=4 --index=/ceph/project/obds/shared/resources/1_linux/rnaseq/kallisto_index/mus_musculus_ensemble_index --output-dir=/project/obds/earmbrec/1_linux/2_rnaseq/1_fastq/kallisto *fastq.gz
