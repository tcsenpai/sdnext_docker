#!/bin/bash

# If no folder named automatic, clone the repository
if [ ! -d "automatic_repo" ]; then
    git clone https://github.com/vladmandic/automatic automatic_repo
    cd automatic_repo
else
    cd automatic_repo
    git pull
fi

#pip install -r requirements.txt
bash webui.sh --debug --insecure --listen