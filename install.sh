#!/bin/bash

JAR="https://sdp15.github.io/GoodB0iServer.jar"
wget "${JAR}"
RESOURCES_LOCATION="https://sdp15.github.io/default_resources.zip"
curl "${RESOURCES_LOCATION}" --output "default_resources.zip"
unzip "default_resources.zip"
wget -O config.conf https://sdp15.github.io/default_config.conf
dir=$(pwd)
sed -i -e 's@'"graph_default"'@'"${dir}/default_resources/graph.json"'@g' config.conf
sed -i -e 's@'"products_default"'@'"${dir}/default_resources/products.json"'@g' config.conf
sed -i -e 's@'"racks_default"'@'"${dir}/default_resources/racks.json"'@g' config.conf
sed -i -e 's@'"lists_default"'@'"${dir}/default_resources/lists.json"'@g' config.conf

