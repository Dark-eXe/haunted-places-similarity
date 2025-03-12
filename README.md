# Haunted Places Similarity
Compute similarity scores and clustering for the Haunted Places dataset using tika similarity: https://github.com/chrismattmann/tika-similarity<br>

## Current Approach
- ```notebooks/RowToJSON.ipynb```: convert EVERY df row into their own JSON object and place them in a single directory ```data/JSON/``` in batches ```data/JSON/dir_{partition}/```
- ```notebooks/ComputeSimilarity.ipynb```: run similarity on that directory and place in ```results/similarity/dir_{partition}/{metric}_sim.csv```
- ```notebooks/ComputeCluster.ipynb```: run clusters on that directory and place in ```results/clusters/dir_{partition}/{metric}/```
- ```visualization/Visualization.ipynb```: specify partition and metric, and run cluster visualizations

#### Sample d3 cluster visualization using Jaccard similarity on partition 0 using every feature:
![cluster](https://github.com/user-attachments/assets/16e1dbfd-6a32-45fb-8e17-a43d9b4cc754)


## Original Approach (instructor-given tutorial on tika similarity)
follows https://github.com/chrismattmann/tika-similarity/wiki/Tutorial <br>
executed on 1 split...
```diff
tikasimilarity/distance/jaccard_similarity.py --inputDir data/splits/dir_001 --outCSV results/jaccard.csv
```
but x,y coordinates retain same names in results/jaccard.csv making it hard to interpret (don't know if that even matters when running clusters later).<br>
Achieved first cluster on 1 split...
```diff
tikasimilarity/cluster/edit-cosine-circle-packing.py --inputCSV results/jaccard.csv --cluster 2
```
and have put results/clusters/.
<br>
