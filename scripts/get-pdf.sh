#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
workdir=$(pwd)/$1

./get-artifacts.sh
unzip -o artifacts.zip -d workdir
cd workdir
latexmk -pdf report
