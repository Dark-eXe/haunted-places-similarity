# Steps:
1. ```RowtoJSON.ipynb``` to unpack ```data/my_df.csv``` into individual JSON partitions in ```data/JSON/``` (created in notebook)<br>
2. ```ComputeSimilarity.ipynb``` to generate similarites in ```results/```<br>
3. ```ComputeCluster.ipynb``` to compute clusters in ```results/clusters/``` and in HTML view<br><br>
*** files needed to be in directory for cluster visualization ***<br>
JSON cluster files: ```circle.json```, ```clusters.json```, ```levelCluster.json```<br>
HTML cluster files: ```circlepacking.html```, ```cluster-d3.html```, ```levelCluster-d3.html```
