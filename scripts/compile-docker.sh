#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
workdir=$( realpath $1 )
cd $parent_path

docker create -ti --rm --name cont janmasrovira/texlive:2020-custom
docker start cont
docker cp $workdir cont:/root/workdir
docker cp ../fonts cont:/root/.fonts
docker exec cont sh -c "cd /root/workdir/ && latexmk -pdf report"
docker cp cont:/root/workdir/report.pdf $workdir/
docker cp cont:/root/workdir/report.log $workdir/
docker kill cont
