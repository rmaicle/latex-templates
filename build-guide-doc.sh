#!/usr/bin/env bash

# Script for building the doc guide

../md-to-pdf/build.sh                   \
    -i ./guide-doc/source.txt           \
    -td ../latex-templates              \
    -tf ./doc/template_doc_us.tex       \
    -od ./                              \
    -of latex-template-doc-guide
