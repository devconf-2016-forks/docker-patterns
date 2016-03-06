FROM rhuss/docker-reveal:latest

ADD slides /slides/
ADD demo /demo/

RUN mkdir -p /demo/maven && \
    cd /demo/maven && \
    git clone https://github.com/rhuss/docker-maven-sample.git 
