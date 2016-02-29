#!/bin/sh
echo "Starting presentation"

docker --tlsverify=false run -it --rm \
      -v /var/run/docker.sock:/var/run/docker.sock \
      -v $(pwd)/slides:/slides \
      -v ~/.m2:/root/.m2 \
      -e MAVEN_OPTS="-Ddocker.host.address=172.17.42.1" \
      -e JAVA_HOME="/usr/lib/jvm/default-jvm/" \
      -p 9000:9000 -p 57575:57575 -p 35729:35729 \
      rhuss/talk-redhat-msa-day:london-2015 $*

