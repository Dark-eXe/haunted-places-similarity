# Haunted Places Similarity
Computing similarity scores and clustering for the Haunted Places dataset using tika similarity. See /notebooks for demos.<br>
Planned Approach: follow https://github.com/chrismattmann/tika-similarity/wiki/Tutorial <br><br>

CURRENT STATUS:<br>
executed on 1 split...
```diff
tikasimilarity/distance/jaccard_similarity.py --inputDir data/splits/dir_001 --outCSV results/jaccard.csv
```
but x,y coordinates retain same names in results/jaccard.csv making it hard to interpret (don't know if that even matters when running clusters later).<br>
Achieved first cluster on 1 split...
```diff
tikasimilarity/cluster/edit-cosine-circle-packing.py --inputCSV results/jaccard.csv --cluster 2
```
and have put result home folder for now.
<br>

### Alternative Approach (CURRENTLY PURSUING)
```diff
! convert EVERY df row into their own JSON object
! place them in a single directory
! run similarity Python scripts on that directory
```
