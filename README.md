# docker_testing_logs
docker容器输出测试日志

打包镜像

```
docker build -t docker_testing_logs:v1.0.0 .
```

运行容器
```
docker run -d -it --name=docker-testing-logs docker_testing_logs:v1.0.0
```

测试
```
LiangdeMacBook-Pro:log-test liangbo$ docker logs -f docker-testing-logs
2019-05-22 09:24:42,768 - log-test-v1.0.0 - INFO - 测试数据: ======= 宋红霞 青海省武汉县高港彭路s座 784263 sunxiuying@hotmail.com
2019-05-22 09:24:42,768 - log-test-v1.0.0 - WARNING - 测试数据: ======= 毕博诚信息有限公司
2019-05-22 09:24:42,768 - log-test-v1.0.0 - ERROR - 测试数据: ======= 校对/录入 18288231352
2019-05-22 09:24:44,772 - log-test-v1.0.0 - INFO - 测试数据: ======= 洪秀荣 河南省淑珍市门头沟合山街k座 785730 lei31@lei.cn
2019-05-22 09:24:44,773 - log-test-v1.0.0 - WARNING - 测试数据: ======= 国讯网络有限公司
2019-05-22 09:24:44,773 - log-test-v1.0.0 - ERROR - 测试数据: ======= 印刷机械机长 13060393896
2019-05-22 09:24:46,780 - log-test-v1.0.0 - INFO - 测试数据: ======= 曾玉梅 内蒙古自治区香港县徐汇梧州路t座 651266 wei78@gmail.com
2019-05-22 09:24:46,781 - log-test-v1.0.0 - WARNING - 测试数据: ======= 和泰科技有限公司
```
