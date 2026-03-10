# ai-driver-gene-discovery-lung-cancer
AI-driven identification of hidden driver genes in lung adenocarcinoma using RNA-seq data and network topology analysis.

# AI-Driven Identification of Hidden Driver Genes in Lung Adenocarcinoma

## Overview
This project builds a complete RNA-seq analysis workflow to identify potential driver genes in lung adenocarcinoma using differential expression, network topology, and machine learning.

## Dataset
RNA-seq dataset from NCBI GEO (GSE140343).

## Pipeline
1. Download RNA-seq data from SRA  
2. Quality control (FastQC)  
3. Read trimming (fastp)  
4. Alignment to human genome (HISAT2)  
5. SAM → BAM conversion (SAMtools)  
6. Gene counting (featureCounts)  
7. Differential expression analysis (DESeq2)  
8. Visualization (volcano plot, heatmap)  
9. Significant gene extraction  
10. Protein interaction network analysis (STRING + Cytoscape)  
11. Machine-learning ranking of potential driver genes

## Project Structure
data/ – dataset accessions  
scripts/ – pipeline scripts  
results/ – analysis outputs  

## Output
The final output includes ranked candidate driver genes and visualization plots.
