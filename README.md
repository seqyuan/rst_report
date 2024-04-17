# rst_report
docker image for convert rstfile to html

```shell
sudo docker run --rm -v /mypath:/mypath \
	ghcr.io/seqyuan/rst_report:1.0 \
	rst=/mypath/report.rst \
	html=/mypath/report.html
```

### rst2html5 parameters
```shell
sudo docker run --rm -v /mypath:/mypath \
	ghcr.io/seqyuan/rst_report:1.0 \
	rst=/mypath/report.rst \
	html=/mypath/report.html \
	r2l_paras=--jquery
```
