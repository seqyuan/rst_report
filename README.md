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

### convert docker image to singularity
```
singularity build rst_report_1.0.sif docker://ghcr.io/seqyuan/rst_report:1.0
```

