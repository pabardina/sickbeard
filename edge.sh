#!/bin/bash

# Does the user want the latest version
if [ -z "$EDGE" ]; then
  echo "Bleeding edge not requested"
else
  apt-get install -qy git
  rm -rf /opt/sickbeard
  git clone https://github.com/sarakha63/Sick-Beard /opt/sickbeard
  chown -R nobody:users /opt/sickbeard
fi
