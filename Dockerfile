FROM python:3.9-alpine3.18

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

ADD styles.css /usr/local/bin/
RUN pip install rst2html5-tools

#SHELL ["conda", "run", "-n", "rs4", "/bin/bash", "-c"]

#CMD ["rst2html5", "--bootstrap-css", "--pretty-print-code", "--jquery", "--stylesheet=/usr/local/bin/styles.css"]
CMD ["rst2html5", "--stylesheet=/usr/local/bin/styles.css"] 
