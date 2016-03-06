FROM rhuss/docker-reveal:latest

ADD slides/ /
ADD examples/ /
RUN cd /butterfly && \
    cp /etc/butterfly/themes/color-neon/style.sass butterfly/sass/main.sass && \
    sassc butterfly/sass/main.sass > butterfly/static/main.css

# Checkout & warmup
#RUN cd / && \
#    git clone https://github.com/rhuss/docker-maven-sample.git && \
#    cd docker-maven-sample && \
#    mvn clean package install || true
