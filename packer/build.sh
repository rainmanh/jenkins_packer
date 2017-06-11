#!/bin/bash


packer validate aws_ami_jenkins.json

if [ $? -ne 0 ]; then
  echo "Sorry, packer validate has failed"
  exit 1
fi

packer build aws_ami_jenkins.json
