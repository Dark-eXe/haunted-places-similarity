# Steps:
1. ```SelectColumns.ipynb``` to filter columns from ```data/finalized_df.csv``` to ```data/columns.txt```, produces ```data/my_df.csv```
2. ```RowtoJSON.ipynb``` to unpack ```data/my_df.csv``` into individual JSON partitions in ```data/JSON/``` (created in notebook)<br>
3. ```ComputeSimilarity.ipynb``` to generate similarites in ```results/similarity/```<br>
4. ```ComputeCluster.ipynb``` to compute clusters in ```results/clusters/```<br><br>

Cluster visualizations found in ```visualization/```
