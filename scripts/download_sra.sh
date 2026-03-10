#!/bin/bash

# Download RNA-seq data from NCBI SRA

mkdir -p ../data/raw_fastq

while read sample
do
    echo "Downloading $sample"
    prefetch $sample
    fasterq-dump $sample --split-files -O ../data/raw_fastq
done < ../data/sample_accessions.txt
