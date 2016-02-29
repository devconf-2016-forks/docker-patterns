#!/bin/sh

echo "Building rhuss/talk-redhat-msa-day:london-2015"
docker --tlsverify=false build -t rhuss/talk-redhat-msa-day:london-2015 .
