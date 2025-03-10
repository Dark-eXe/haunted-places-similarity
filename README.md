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
! Alternative Approach:
! convert EVERY df row into their own JSON object
! place them in a single directory
! run similarity Python scripts on that directory
```

## Environment Setup: hauntedEnv
```diff
- Update: etllib must be invoked in CLI, so no notebook for converting TSV to JSON.

Example execution from etllib directory:
tsvtojson -t ../haunted-places-similarity/data/my_df.tsv -j ../haunted-places-similarity/data/my_df.json -o data -c colheaders.conf -s 0.8
```
Install Python packages, install brew (below curl command works for Linux/macOS, see https://brew.sh/), install libmagic:<br><br>
In terminal:
```
conda create --name hauntedEnv python=3.9
conda activate hauntedEnv
pip install -r requirements.txt
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install libmagic
```
