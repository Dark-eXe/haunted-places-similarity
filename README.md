# Haunted Places Similarity
Computing similarity scores and clustering for the Haunted Places dataset using tika similarity. See /notebooks for demos.

## Environment Setup: hauntedEnv
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
