# AI-Driven Discovery of Driver Genes in Lung Adenocarcinoma

This project identifies potential **driver genes in lung adenocarcinoma (LUAD)** using RNA-seq data combined with **network topology analysis and machine learning**.
The pipeline automates RNA-seq processing, differential expression analysis, network biology analysis, and machine-learning-based driver gene prediction.

---

## Objective

The objective of this project is to identify **potential cancer driver genes** by integrating:

• RNA-seq differential expression analysis
• Protein-protein interaction network analysis
• Machine learning-based gene ranking

This pipeline helps identify biologically significant genes involved in **lung cancer progression**.

---

## Dataset

RNA-seq dataset obtained from **NCBI GEO**.

Dataset ID: **GSE140343**
Cancer Type: **Lung Adenocarcinoma (LUAD)**

The dataset contains:

• Tumor samples
• Normal lung tissue samples

Raw sequencing data was downloaded from **NCBI SRA**.

---

## Tools and Software

The following bioinformatics tools were used in this project:

• FastQC
• fastp
• HISAT2
• SAMtools
• featureCounts
• DESeq2
• STRING Database
• Cytoscape
• Python (Machine Learning)

---

## Pipeline Workflow

![Pipeline Workflow](pipeline_workflow.png)

Pipeline steps:

1. Download RNA-seq data from SRA
2. Perform quality control using FastQC
3. Trim reads using fastp
4. Align reads to the human reference genome using HISAT2
5. Convert SAM files to BAM using SAMtools
6. Perform gene counting using featureCounts
7. Perform differential expression analysis using DESeq2
8. Visualize results using volcano plots and heatmaps
9. Extract significant genes
10. Perform protein interaction network analysis using STRING and Cytoscape
11. Apply machine learning to rank potential driver genes

---

## Project Structure

ai-driver-gene-discovery-lung-cancer/

data/
│   sample_accessions.txt
│   README.md

scripts/
│   download_sra.sh
│   quality_control.sh
│   alignment_hisat2.sh
│   sam_to_bam.sh
│   gene_counts.sh
│   deseq2_analysis.R
│   extract_significant_genes.R
│   heatmap_top_genes.R
│   prepare_string_network.R
│   ml_driver_gene_prediction.py
│   README.md

results/
│   deseq2_results.csv
│   driver_gene_predictions.csv
│   volcano_plot.png
│   heatmap_top_genes.png
│   string_network.png
│   README.md

README.md

---

## How to Run the Pipeline

1. Download RNA-seq data from NCBI SRA.

bash scripts/download_sra.sh

2. Perform quality control.

bash scripts/quality_control.sh

3. Align reads to the human genome.

bash scripts/alignment_hisat2.sh

4. Convert SAM files to BAM format.

bash scripts/sam_to_bam.sh

5. Perform gene counting.

bash scripts/gene_counts.sh

6. Run differential expression analysis.

Rscript scripts/deseq2_analysis.R

7. Extract significant genes and generate visualization.

Rscript scripts/extract_significant_genes.R
Rscript scripts/heatmap_top_genes.R

8. Run machine learning model to identify potential driver genes.

python scripts/ml_driver_gene_prediction.py

---

## Results

The pipeline produces the following outputs:

• Differentially expressed genes identified using DESeq2
• Volcano plot visualization of gene expression changes
• Heatmap of top differentially expressed genes
• Protein-protein interaction network analysis
• Machine learning prediction of potential driver genes

All output files are available in the **results** directory.

---

## Future Improvements

Possible future extensions of this project include:

• Integration of pathway enrichment analysis
• Validation using independent RNA-seq datasets
• Implementation of additional machine learning models
• Integration with clinical metadata

---

## Author

Amrutha
Bioinformatics Project
