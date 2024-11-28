FROM pytorch/pytorch:2.5.0-cuda12.4-cudnn9-devel

##### 更新與套件安裝 #####
RUN apt update && \
    apt upgrade -y && \
    apt install -y git && \
    apt-get clean && \
    apt autoremove -y && \
    rm -rf /var/lib/apt/lists/*
##### 更新與套件安裝 #####

##### 複製檔案和安裝環境 #####
RUN mkdir workspace
COPY ./ANNs/ /workspace/
RUN pip install -U -r /workspace/requirements.txt
##### 複製檔案和安裝環境 #####