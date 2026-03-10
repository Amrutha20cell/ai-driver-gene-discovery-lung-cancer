# Volcano plot for differential expression results

library(ggplot2)

# Load DESeq2 results
res <- read.csv("../results/deseq2_results.csv")

# Create significance column
res$significance <- "Not Significant"
res$significance[res$padj < 0.05 & res$log2FoldChange > 1] <- "Upregulated"
res$significance[res$padj < 0.05 & res$log2FoldChange < -1] <- "Downregulated"

# Plot volcano
p <- ggplot(res, aes(x=log2FoldChange, y=-log10(padj), color=significance)) +
    geom_point(alpha=0.6) +
    theme_minimal() +
    labs(title="Volcano Plot: Tumor vs Normal",
         x="Log2 Fold Change",
         y="-Log10 Adjusted P-value")

# Save plot
ggsave("../results/volcano_plot.png", plot=p, width=8, height=6)
