#!/bin/bash

# Download RNA-seq data from NCBI SRA

while read sample
do
    echo "Downloading $sample"
    prefetch $sample
    fasterq-dump $sample --split-files
done < ../data/sample_accessions.txt
