# Haunted Places Similarity
Computing similarity scores and clustering for the Haunted Places dataset using tika similarity.

## Environment Setup: hauntedEnv
Install Python packages, install brew (below curl command works for Linux/macOS, see https://brew.sh/), install libmagic:<br><br>

$ conda create --name hauntedEnv python=3.9 <br>
$ conda activate hauntedEnv <br>
$ pip install -r requirements.txt <br>
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" <br>
$ eval "$(/opt/homebrew/bin/brew shellenv)" <br>
$ brew install libmagic <br>