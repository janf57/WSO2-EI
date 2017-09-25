#!/bin/sh

echo Iniciando Integrator
/opt/${WSO2_PRODUCT_FOLDER}/bin/integrator.sh --run &
sleep 10

echo Iniciando Analytics
/opt/${WSO2_PRODUCT_FOLDER}/wso2/analytics/bin/wso2server.sh --run -Dprofile="analytics-default" &
sleep 10

echo Iniciando BPM
/opt/${WSO2_PRODUCT_FOLDER}/wso2/business-process/bin/wso2server.sh --run -Dprofile="business-process-default" &
sleep 10

echo Iniciando Broker
/opt/${WSO2_PRODUCT_FOLDER}/wso2/broker/bin/wso2server.sh --run -Dprofile="broker-default" &