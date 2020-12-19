#/bin/bash

PROJECT_ROOT=${PWD}

cd ${PROJECT_ROOT}/app-one && go build app-one.go && docker build -t go-app-one .
cd ${PROJECT_ROOT}/app-two && go build app-two.go && docker build -t go-app-two .
cd ${PROJECT_ROOT}/flask-app && docker build -t flask-app .


docker-compose -f docker-compose.yaml up -d