#!/bin/bash
for xml in *.xml; do
  xsltproc xml2traindata.xslt "$xml"
done
