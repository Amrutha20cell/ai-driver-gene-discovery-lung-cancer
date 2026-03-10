#!/bin/bash

# Adapter trimming and quality filtering using fastp

mkdir -p ../results/trimmed_reads

for file in ../data/raw_fastq/*_1.fastq
do
    base=$(basename $file "_1.fastq")

    fastp \
    -i ../data/raw_fastq/${base}_1.fastq \
    -I ../data/raw_fastq/${base}_2.fastq \
    -o ../results/trimmed_reads/${base}_1_trimmed.fastq \
    -O ../results/trimmed_reads/${base}_2_trimmed.fastq \
    -h ../results/trimmed_reads/${base}_fastp.html \
    -j ../results/trimmed_reads/${base}_fastp.json
done
