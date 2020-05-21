#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
workdir=$( realpath $1 )
cd $parent_path

docker create -ti --rm --name cont nopreserveroot/texlive-full:2020.04.17 bash
docker start cont
docker cp $workdir cont:/root/workdir
docker cp ../fonts cont:/root/.fonts
docker exec cont bash -c "cd /root/workdir/ && latexmk -pdf report"
docker cp cont:/root/workdir/report.pdf $workdir/
docker cp cont:/root/workdir/report.log $workdir/
docker kill cont
