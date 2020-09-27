#!/bin/bash

# change the image tag before building

APP_VERSION=v0.1.9
APP_NAME=vue3app

docker build -t ${APP_NAME}:${APP_VERSION} .

docker login --username=zhuxmei520@163.com registry.cn-hangzhou.aliyuncs.com

docker tag ${APP_NAME}:${APP_VERSION} registry.cn-hangzhou.aliyuncs.com/zgang/${APP_NAME}:${APP_VERSION}

docker push registry.cn-hangzhou.aliyuncs.com/zgang/${APP_NAME}:${APP_VERSION}

echo "test this app:"
echo "docker run -p 8888:80 -d ${APP_NAME}:${APP_VERSION}"
