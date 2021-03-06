#!/usr/bin/env bash

# Script for building the doc guide

param_debug=""
param_show_frame=""
param_output_latex=""
param_output_image_generate=""
param_source="./source.txt"
# param_source="./source_test.txt"

while [ $# -gt 0 ]; do
    case "${1}" in
        --debug)        param_debug="-debug"
                        shift
                        ;;
        -o)             param_output_latex="-o"
                        shift
                        ;;
        --showframe)    param_show_frame="-showframe"
                        shift
                        ;;
        --imagex)       param_output_image_generate="-imagex"
                        shift
                        ;;
        --source)       param_source="${2}"; shift 2 ;;
        *)              break ;;
    esac
done

../../md-to-pdf/build.sh                \
    ${param_debug}                      \
    -softcopy                           \
    -papersize usletter                 \
    -fontsize 10                        \
    `#-beforetitlerule -1pt`               \
    `#-aftertitlerule 7.2pt`               \
    ${param_show_frame}                 \
    ${param_output_image_generate}      \
    `#-copyrightx`                      \
    -i "${param_source}"                \
    -tf template_doc.tex                \
    ${param_output_latex}               \
    -od ./                              \
    -of document-creation-guide
