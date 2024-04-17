FROM python:3.9-alpine3.18

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

ADD styles.css /opt
ADD Makefile /opt
RUN pip install rst2html5-tools

WORKDIR /opt
RUN apk update && apk upgrade && \
    apk add nodejs npm make && \
    npm install -g html-inline

ENTRYPOINT ["make", "-f", "/opt/Makefile", "rst2html"]

