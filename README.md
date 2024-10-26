# SD.Next (Automatic1111's Vladamantic fork) Docker Container

This unofficial docker container is based on the work of [vladmandic](https://github.com/vladmandic) and aims to provide a simple and easy way to run the SD.Next web UI. It should be compatible with all the OSes that docker is supported on.

## How it works

The container will automatically clone the repository and install the dependencies on the first run. On subsequent runs, it will pull the latest changes and start the web UI.ù

You can also:

- Edit the exposed ports in the docker-compose file
- Edit what happens at runtime in the entrypoint.sh file (included flags, etc.)

## Installing models and similar

The container mounts the app/automatic_repo folder as a volume, so you can add models and other files to it.
After the first run, you will find the folder under app/automatic_repo.

## Pre-run script

You can add a pre_run.sh file to the app folder, and it will be run on startup. This can be used to install dependencies for python in case something is missing.

## Run

```
docker compose up --build -d
```
