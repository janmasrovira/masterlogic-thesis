#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd $parent_path

curl --location "https://gitlab.com/janmasrovira/masterlogic-thesis/-/jobs/artifacts/master/download?job=org2tex" --output artifacts.zip
unzip -o artifacts.zip -d workdir
docker create -ti --rm --name cont nopreserveroot/texlive-full:2020.04.17 bash
docker start cont
docker cp workdir cont:/root/
docker cp ../fonts cont:/root/.fonts
docker exec cont bash -c "cd /root/workdir/ && latexmk -pdf report"
docker cp cont:/root/workdir/report.pdf .
docker kill cont
