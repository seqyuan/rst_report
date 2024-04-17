FROM python:3.9-alpine3.18

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

ADD styles.css /usr/local/bin/
ADD Makefile /usr/local/bin/
RUN pip install rst2html5-tools

#RUN apk add nodejs npm && npm install html-inline
RUN apk update && apk upgrade && \
    apk add nodejs=12.22.12-r0  npm=12.22.12-r0 && \
	npm install html-inline

ENTRYPOINT ["make", "-f", "/usr/local/bin/Makefile", "rst2html"]

