# rst_report
docker image for convert rstfile to html

```shell
sudo docker run -it -v /mypath:/mypath ghcr.io/seqyuan/rst_report:1.0 rst2html5 --stylesheet=/usr/local/bin/styles.css /mypath/report.rst >/mypath/report.html
```
