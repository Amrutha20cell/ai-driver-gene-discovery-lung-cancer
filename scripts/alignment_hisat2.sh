#!/bin/bash

# Align RNA-seq reads to the human genome using HISAT2

mkdir -p ../results/alignment

for file in ../results/trimmed_reads/*_1_trimmed.fastq
do
    base=$(basename $file "_1_trimmed.fastq")

    hisat2 \
    -x ../reference/genome_index \
    -1 ../results/trimmed_reads/${base}_1_trimmed.fastq \
    -2 ../results/trimmed_reads/${base}_2_trimmed.fastq \
    -S ../results/alignment/${base}.sam
done
