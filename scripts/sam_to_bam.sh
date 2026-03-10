#!/bin/bash

# Convert SAM files to sorted BAM files using SAMtools

mkdir -p ../results/bam

for file in ../results/alignment/*.sam
do
    base=$(basename $file ".sam")

    samtools view -bS $file > ../results/bam/${base}.bam
    samtools sort ../results/bam/${base}.bam -o ../results/bam/${base}_sorted.bam
done
