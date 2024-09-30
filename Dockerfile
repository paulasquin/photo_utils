FROM python:3.10

RUN apt-get update && \
    apt-get install -y ffmpeg
    
# Upgrade pip
RUN pip install --upgrade pip

# Install depdencies
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt 

WORKDIR /app

CMD /bin/bash
