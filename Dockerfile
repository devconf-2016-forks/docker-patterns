FROM rhuss/docker-reveal:latest

ADD slides/ /

# Checkout & warmup
RUN cd / && \
    git clone https://github.com/rhuss/docker-maven-sample.git && \
    cd docker-maven-sample && \
    mvn clean package install || true

