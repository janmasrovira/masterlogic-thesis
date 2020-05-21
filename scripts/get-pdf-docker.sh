#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path # scripts

./get-artifacts.sh
./compile-docker.sh workdir
