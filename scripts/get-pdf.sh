#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
workdir=$( realpath $1 )

./get-artifacts.sh $workdir
cd $workdir
latexmk -pdf report
