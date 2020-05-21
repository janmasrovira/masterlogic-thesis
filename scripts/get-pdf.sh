#!/bin/bash

curl --location "https://gitlab.com/janmasrovira/masterlogic-thesis/-/jobs/artifacts/master/download?job=org2tex" --output artifacts.zip
unzip -o artifacts.zip -d workdir
cd workdir
latexmk -pdf report
