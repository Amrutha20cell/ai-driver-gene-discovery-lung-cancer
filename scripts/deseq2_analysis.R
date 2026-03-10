# Differential expression analysis using DESeq2

library(DESeq2)

# Load count matrix
countData <- read.table("../results/gene_counts/gene_counts.txt",
                        header=TRUE,
                        row.names=1,
                        comment.char="#")

# Remove first five columns if produced by featureCounts
countData <- countData[ ,6:ncol(countData)]

# Sample conditions
condition <- factor(c(rep("Tumor",5), rep("Normal",5)))

colData <- data.frame(row.names=colnames(countData),
                      condition)

# Create DESeq dataset
dds <- DESeqDataSetFromMatrix(countData = countData,
                              colData = colData,
                              design = ~ condition)

dds <- DESeq(dds)

# Extract results
res <- results(dds)

# Save results
write.csv(as.data.frame(res),
          "../results/deseq2_results.csv")
