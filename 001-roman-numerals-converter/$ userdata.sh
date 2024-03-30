#!/bin/bash -x

# update te oS
yum update -y

# install python and flask
yum install python3 -y

yum install pip -y
pip3 install flask

# install application files
cd /home/ec2-user
mkdir templates
FOLDER="https://raw.githubusercontent.com/gigis/my-repository/main/001-roman-numerals-converter"
wget ${FOLDER}/app.py
wget -P templates ${FOLDER}/templates/index.html
wget -P templates ${FOLDER}/templates/result.html