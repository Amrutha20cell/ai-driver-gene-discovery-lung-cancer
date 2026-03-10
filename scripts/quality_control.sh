#!/bin/bash

# Quality control for RNA-seq data using FastQC

mkdir -p ../results/fastqc_reports

fastqc ../data/raw_fastq/*.fastq -o ../results/fastqc_reports
