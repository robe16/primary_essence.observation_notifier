FROM resin/rpi-raspbian:latest
MAINTAINER robe16

# Update
RUN apt-get update && apt-get install -y python python-pip

WORKDIR /primary_essence/observation_notifier

# Bundle app source
COPY src /primary_essence/observation_notifier

# Copy app dependencies
COPY requirements.txt requirements.txt

# Install app dependencies
RUN pip install -r requirements.txt

# Run application
CMD python run.py
