# Heatmap of top differentially expressed genes

library(pheatmap)

# Load count matrix
counts <- read.table("../results/gene_counts/gene_counts.txt",
                     header=TRUE,
                     row.names=1,
                     comment.char="#")

# Remove annotation columns from featureCounts output
counts <- counts[,6:ncol(counts)]

# Select top 50 most variable genes
top_genes <- head(order(apply(counts, 1, var), decreasing=TRUE), 50)

# Subset count matrix
heatmap_data <- counts[top_genes,]

# Normalize (log transform)
heatmap_data <- log2(heatmap_data + 1)

# Generate heatmap
pheatmap(heatmap_data,
         cluster_rows=TRUE,
         cluster_cols=TRUE,
         show_rownames=FALSE,
         main="Top 50 Variable Genes")

# Save heatmap
png("../results/heatmap_top_genes.png", width=1000, height=800)
pheatmap(heatmap_data,
         cluster_rows=TRUE,
         cluster_cols=TRUE,
         show_rownames=FALSE)
dev.off()
