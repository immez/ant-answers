. venv/bin/activate
echo "server starting"
python3 server.py &
echo "wait for server"
sleep 3
echo "server started"
curl http://127.0.0.1:5000/sha256 -X POST -d @data.txt
echo ""
ps -ef | grep "python3 server.py"
ps -ef | grep "python3 server.py" | grep -v grep | awk '{print $2}' | xargs kill
deactivate