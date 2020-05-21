#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
artifacts=$( realpath $1 )
cd $parent_path

curl --location "https://gitlab.com/janmasrovira/masterlogic-thesis/-/jobs/artifacts/master/download?job=org2tex" --output artifacts.zip
unzip -o artifacts.zip -d $artifacts
rm artifacts.zip
