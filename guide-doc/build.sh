#!/usr/bin/env bash

# Script for building the doc guide

declare SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

declare DOC_BIN="mdtopdf.sh"
if ! command -v ${DOC_BIN} &> /dev/null
then
    echo_error "File not found: ${DOC_BIN}"
    exit 1
fi
declare DOC_OUT_DIR="./"
declare DOC_OUT_FILE="doc-guide"



source /usr/local/bin/dirstack.sh
source /usr/local/bin/echo.sh



#
# Display script usage
#
function show_usage() {
cat << EOF
Script for creating the documentation guide PDF file using LaTeX.

Usage:
  ${0##*/} [-debug] [option...] doc-id

Values for doc-id:
$(printf '  %s\n' ${DOCUMENTS[@]})

Options:
  -h, --help            print help and exit
      --debug           run script in debug mode
      --draft           generate draft version PDF document
      --engine          engine to use, pdflatex or xelatex; default is pdflatex
      --latex           output TeX/LaTeX file and generate PDF
      --markdown file   use input mardown content file
      --no-image        do not generate TeX images
      --no-frontmatter  do not generate user-supplied frontmatter contents
      --no-backmatter   do not generate user-supplied backmatter contents
      --paper           paper size; default is usletter
                          usletter
                          a4
      --show-frame      show page margins

NOTE: Including source files using pp !source(...) is relative to the
      LaTeX/TeX template directory.
EOF
}



declare -r INPUT_FILE="markdownlist.txt"
declare -r DEFAULT_TEMPLATE_FILE="template_doc.tex"
declare -r DEFAULT_ENGINE="pdflatex"
declare arg_template="${DEFAULT_TEMPLATE_FILE}"
declare arg_engine="${DEFAULT_ENGINE}"

declare param_debug=""
declare param_no_backmatter=""
declare param_no_frontmatter=""
declare param_no_image=""
declare param_markdown_file="${INPUT_FILE}"
declare param_latex=""
declare param_show_frame=""

while [ $# -gt 0 ]; do
    case "${1}" in
        --debug)            param_debug="--debug" ; shift ;;
        --engine)           arg_engine="${2}" ; shift 2 ;;
        --latex)            param_output_latex="--latex" ; shift ;;
        --markdown)         param_markdown_file="${2}" ; shift 2 ;;
        --no-image)         param_no_image="--no-image" ; shift ;;
        --no-frontmatter)   param_no_frontmatter="--no-frontmatter" ; shift ;;
        --no-backmatter)    param_no_backmatter="--no-backmatter" ; shift ;;
        --show-frame)       param_show_frame="--show-frame" ; shift ;;
        --template)         arg_template="${2}" ; shift 2 ;;
        *)                  break ;;
    esac
done



if [ ! -f "${param_markdown_file}" ]; then
    echo "Error: Input markdown content file not found: ${param_markdown_file}"
    exit 1
fi
${DOC_BIN}                                      \
    ${param_debug}                              \
    --paper usletter                            \
    ${param_show_frame}                         \
    ${param_no_image}                           \
    ${param_no_frontmatter}                     \
    ${param_no_backmatter}                      \
    --markdown "${param_markdown_file}"         \
    --template "${arg_template}"                \
    ${param_output_latex}                       \
    --engine "${arg_engine}"                    \
    --od ${DOC_OUT_DIR}                         \
    --of ${DOC_OUT_FILE}
