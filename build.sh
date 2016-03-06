#!/bin/sh

echo "Building rhuss/talk-docker-pattern:javaland2016"
docker --tlsverify=false build -t rhuss/talk-docker-pattern:javaland2016 .
