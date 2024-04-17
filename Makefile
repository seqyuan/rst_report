r2l_paras ?= --jquery

rst2html:
	rst2html5 --bootstrap-css --pretty-print-code $(r2l_paras) --stylesheet=/usr/local/bin/styles.css $(rst) >$(html).tmp
	html-inline $(html).tmp >$(html)
