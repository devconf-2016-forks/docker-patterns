#!/bin/sh
echo "Starting presentation"

docker --tlsverify=false run -it --rm \
      -v /var/run/docker.sock:/var/run/docker.sock \
      -v $(pwd)/slides:/slides \
      -v $(pwd)/demo:/demo \
      -e MAVEN_OPTS="-Ddocker.host.address=172.17.42.1" \
      -p 9000:9000 -p 57575:57575 -p 35729:35729 \
      rhuss/talk-docker-pattern:javaland2016 $*

#      -v $(pwd)/m2:/root/.m2 \

