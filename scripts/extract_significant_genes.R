# Extract significant genes for network analysis

res <- read.csv("../results/deseq2_results.csv")

# Filter significant genes
sig_genes <- subset(res, padj < 0.05 & abs(log2FoldChange) > 1)

# Save gene list
write.table(sig_genes$X,
            "../results/significant_genes.txt",
            row.names=FALSE,
            col.names=FALSE,
            quote=FALSE)
