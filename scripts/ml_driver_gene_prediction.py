# Machine learning model to prioritize potential driver genes

import pandas as pd
from sklearn.ensemble import RandomForestClassifier

# Load differential expression results
data = pd.read_csv("../results/deseq2_results.csv")

# Remove rows with missing values
data = data.dropna()

# Create label: 1 = potential driver gene
data["label"] = ((abs(data["log2FoldChange"]) > 2) & (data["padj"] < 0.01)).astype(int)

# Select features
features = data[["log2FoldChange", "pvalue", "padj"]]

# Labels
labels = data["label"]

# Train Random Forest model
model = RandomForestClassifier(n_estimators=100, random_state=42)
model.fit(features, labels)

# Predict driver gene probability
data["driver_score"] = model.predict_proba(features)[:,1]

# Rank genes
ranked = data.sort_values("driver_score", ascending=False)

# Save ranked driver genes
ranked.to_csv("../results/predicted_driver_genes.csv", index=False)

print("Driver gene prediction complete!")
