# Prepare gene list for STRING network analysis

genes <- read.table("../results/significant_genes.txt",
                    header = FALSE,
                    stringsAsFactors = FALSE)

colnames(genes) <- "Gene"

# Save a clean list for STRING upload
write.table(genes,
            "../results/string_gene_list.txt",
            row.names = FALSE,
            col.names = FALSE,
            quote = FALSE)
