r2l_paras ?= --jquery

rst2html:
	rst2html5 --bootstrap-css --pretty-print-code $(r2l_paras) --stylesheet=/usr/local/bin/styles.css >$(outhtml).tmp
	html-inline $(outhtml).tmp >$(outhtml)
