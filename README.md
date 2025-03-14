# Haunted Places - Cluster Analysis using Tika Similarity and D3.js
Compute similarity scores and clustering for the Haunted Places dataset (with additional derived/joined features of various techniques/sources) using tika similarity: https://github.com/chrismattmann/tika-similarity<br>

## Approach for Cluster Analysis
- ```notebooks/SelectColumns.ipynb```: select specific columns for analysis
- ```notebooks/RowToJSON.ipynb```: convert EVERY df row into their own JSON object and place them in a single directory ```data/JSON/``` in batches ```data/JSON/dir_{partition}/```
- ```notebooks/ComputeSimilarity.ipynb```: run similarity on that directory and place in ```results/similarity/dir_{partition}/{metric}_sim.csv```
- ```notebooks/ComputeCluster.ipynb```: run clusters on that directory and place in ```results/clusters/dir_{partition}/{metric}/```
- ```visualization/Visualization.ipynb```: specify partition and metric, and run cluster visualizations

#### Sample d3 cluster visualization using Jaccard similarity on partition 0 using every feature:
![cluster](https://github.com/user-attachments/assets/16e1dbfd-6a32-45fb-8e17-a43d9b4cc754)
