r2l_paras ?= --jquery
ABS_FILE_PATH := $(realpath $(rst))  
ABS_FILE_DIR := $(dir $(ABS_FILE_PATH))  

rst2html:
	cd $(ABS_FILE_DIR) && \
	rst2html5 --bootstrap-css --pretty-print-code $(r2l_paras) --stylesheet=/usr/local/bin/styles.css $(rst) >$(html).tmp.html && \
	html-inline $(html).tmp.html >$(html)
