#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN=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
git clone https://$TOKEN@github.com/yhnkaya/Capstone-Project-Blog-Page-App--Django--on-AWS-Environment.git
cd /home/ubuntu/Capstone
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/Capstone/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80