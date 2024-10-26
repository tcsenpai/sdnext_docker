FROM nvidia/cuda:12.6.2-base-ubuntu22.04

RUN apt-get update && apt-get install -y curl git

# Install Python
RUN apt-get install -y python3 python3-pip python3-venv

# Install Bash
RUN apt-get install -y bash

# Install dos2unix
RUN apt-get install -y dos2unix

# Install libgl1-mesa-glx
# NOTE This is needed for some extensions and will save a lot of headaches later
RUN apt-get install -y libgl1-mesa-glx libglib2.0-0


# Install pip requirements
#COPY app/automatic/requirements.txt .
#RUN pip install -r requirements.txt

