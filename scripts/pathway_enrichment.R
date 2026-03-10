library(clusterProfiler)
library(org.Hs.eg.db)

genes <- read.csv("../results/significant_genes.csv")

gene_list <- genes$gene_symbol

ego <- enrichGO(gene = gene_list,
                OrgDb = org.Hs.eg.db,
                keyType = "SYMBOL",
                ont = "BP",
                pAdjustMethod = "BH")

dotplot(ego)

ggsave("../results/go_enrichment.png")
