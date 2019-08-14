#!/usr/bin/env bash

# Script for building the doc guide

param_debug=""
param_show_frame=""
param_output_latex=""

while [ $# -gt 0 ]; do
    case "${1}" in
        -debug)         param_debug="-debug"
                        shift
                        ;;
        -o)             param_output_latex="-o"
                        shift
                        ;;
        -showframe)     param_show_frame="-showframe"
                        shift
                        ;;
        *)              break ;;
    esac
done

../md-to-pdf/build.sh                   \
    ${param_debug}                      \
    `#-softcopy`                        \
    -papersize usletter                 \
    ${param_show_frame}                 \
    -i ./guide-doc/source.txt           \
    -td ../latex-templates              \
    -tf ./doc/template_doc.tex          \
    ${param_output_latex}               \
    -od ./                              \
    -of latex-template-doc-guide
