FROM python:3.9-alpine3.18

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

ADD styles.css /usr/local/bin/
ADD Makefile /usr/local/bin/
RUN pip install rst2html5-tools

ENTRYPOINT ["make", "-f", "/usr/local/bin/Makefile", "rst2html"]