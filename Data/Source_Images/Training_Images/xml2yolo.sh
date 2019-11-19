#!/bin/bash
echo "image","xmin","ymin","xmax","ymax","label"
for xml in *.xml; do
  xsltproc xml2yolo.xslt "$xml"
done
