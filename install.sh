#!/bin/bash

JAR="https://sdp15.github.io/GoodB0iServer.jar"
wget "${JAR}"
RESOURCES_LOCATION="https://sdp15.github.io/default_resources.zip"
curl "${RESOURCES_LOCATION}" --output "default_resources.zip"
unzip "default_resources.zip"
default_config=$(wget -qO- https://sdp15.github.io/default_config.conf)
dir=$(pwd)
default_config=${default_config/graph_default/"${dir}/default/resources/graph.json"}
default_config=${default_config/products_default/"${dir}/default/resources/products.json"}
default_config=${default_config/racks_default/"${dir}/default/resources/racks.json"}
default_config=${default_config/lists_default/"${dir}/default/resources/lists.json"}


echo $default_config > config.conf