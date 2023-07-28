docker build --no-cache -t jmeter_base:latest -f Jmeter_Dockerfile .

docker build --no-cache -t jmeter_master -f jmeter-master.dockerfile .
docker build --no-cache -t jmeter_server -f jmeter-server.dockerfile .
