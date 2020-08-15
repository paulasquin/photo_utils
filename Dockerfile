FROM python:3.8

# Upgrade pip
RUN pip install --upgrade pip

# Install depdencies
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt 

WORKDIR /app

CMD /bin/bash
