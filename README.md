# ai-driver-gene-discovery-lung-cancer
AI-driven identification of hidden driver genes in lung adenocarcinoma using RNA-seq data and network topology analysis.

This project identifies potential **driver genes in lung adenocarcinoma (LUAD)** using RNA-seq data combined with **network topology analysis and machine learning**.

---

## Objective

The aim of this project is to detect genes that may act as **cancer drivers** by integrating:

• Differential gene expression analysis  
• Protein-protein interaction network analysis  
• Machine learning-based gene ranking  

This automated pipeline helps identify biologically important genes involved in **lung cancer progression**.

---

## Dataset

RNA-seq dataset obtained from **NCBI GEO**.

**Dataset ID:** GSE140343  
**Cancer type:** Lung Adenocarcinoma (LUAD)

The dataset includes:

• Tumor samples  
• Normal lung tissue samples

Raw sequencing data was downloaded from **NCBI SRA**.

---

## Tools & Software

The following bioinformatics tools were used:

- FastQC
- fastp
- HISAT2
- SAMtools
- featureCounts
- DESeq2
- STRING database
- Cytoscape
- Python (Machine Learning)

---

## Pipeline Workflow

![Pipeline Workflow](pipeline_workflow.png)

Steps in the pipeline:

1. Download RNA-seq data from SRA
2. Quality control using FastQC
3. Read trimming using fastp
4. Alignment to human genome using HISAT2
5. SAM to BAM conversion using SAMtools
6. Gene counting using featureCounts
7. Differential expression analysis using DESeq2
8. Visualization (volcano plot and heatmap)
9. Extraction of significant genes
10. Protein interaction network analysis using STRING
11. Machine learning-based driver gene prediction

---

## Results

The pipeline produced the following outputs:

- Differentially expressed genes
- Volcano plot visualization
- Heatmap of top DEGs
- Protein-protein interaction network
- Machine learning predicted driver genes

All output files are available in the **results** directory.

---

## Project Structure
