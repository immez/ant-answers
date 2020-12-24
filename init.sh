#rm -rf venv
python3 -m venv venv
. venv/bin/activate
pip3 install --upgrade pip
pip3 install Flask
pip3 install gevent
pip3 install requests
deactivate
head -1024768 /dev/urandom > data.txt