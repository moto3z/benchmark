# jmeter

- 오리지널 : https://medium.com/@praveenkrjha93/create-a-docker-file-for-jmeter-along-with-the-plugins-2b8af0eabe4a

```
docker build --no-cache -t jmeter_base:latest -f jmeter.dockerfile .



docker build --no-cache -t jmeter_base:latest -f Jmeter_Dockerfile .
docker run -it jmeter_base:latest
```

- 이거보셈 : https://github.com/ajeetraina/jmeter-docker/tree/master

## 엔그

- 엔그라인더 : http://localhost:9000/

- 아.. 왜안되는지 모르겠다..
```sh
docker run -d -v ~/ngrinder-controller:/opt/ngrinder-controller --name controller -p 80:80 -p 16001:16001 -p 12000-12009:12000-12009 ngrinder/controller && docker run -d --name agent --link controller:controller ngrinder/agent
```