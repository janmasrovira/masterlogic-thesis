#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
workdir=$( realpath $1 )
cd $parent_path # scripts

./get-artifacts.sh $workdir
./compile-docker.sh $workdir
