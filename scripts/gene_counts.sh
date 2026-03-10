#!/bin/bash

# Count reads mapped to genes using featureCounts

mkdir -p ../results/gene_counts

featureCounts \
-a ../reference/annotation.gtf \
-o ../results/gene_counts/gene_counts.txt \
../results/bam/*_sorted.bam
