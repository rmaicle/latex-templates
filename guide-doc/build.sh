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

# Engine: [pdflatex | xelatex | lualatex]
declare -r DEFAULT_PDF_ENGINE="pdflatex"
declare -r ALTERNATIVE_PDF_ENGINE="xelatex"

declare -a PDF_ENGINES=(
    "${DEFAULT_PDF_ENGINE}"
    "${ALTERNATIVE_PDF_ENGINE}"
)

declare -r PAPER_A4="a4"
declare -r PAPER_USLETTER="usletter"

declare -r DEFAULT_PAPER_SIZE="${PAPER_A4}"

declare -a PAPER_SIZES=(
    ${PAPER_A4}
    ${PAPER_USLETTER}
)

declare -r DEFAULT_TEMPLATE_FILE="template_doc.tex"
declare -r DEFAULT_MARKDOWN_CONTENT_FILE="markdownlist.txt"
declare -r DEFAULT_IMAGE_CONTENT_FILE="imagelist.txt"



source /usr/local/bin/dirstack.sh
source /usr/local/bin/echo.sh



#
# Display script usage
#
function show_usage() {
cat << EOF
Script for creating the documentation guide PDF file using LaTeX.

Usage:
  ${0##*/} [option, ...] doc-id

Values for doc-id:
$(printf '  %s\n' ${DOCUMENTS[@]})

Options:
  -h, --help            print help and exit
      --debug           run script in debug mode
      --draft           generate draft version PDF document
      --engine          engine to use, pdflatex or xelatex; default is pdflatex
$(printf '                        %s\n' ${PDF_ENGINES[@]})
      --latex           output TeX/LaTeX file and generate PDF
      --latex-only      output TeX/LaTeX file and exit
      --markdown file   use input mardown content file
      --no-image        do not generate TeX images
      --no-frontmatter  do not generate user-supplied frontmatter contents
      --no-backmatter   do not generate user-supplied backmatter contents
      --paper           paper size; default is usletter
                          usletter
                          a4
      --show-frame      show page margins
      --use-latest      use latest installed Pandoc version

NOTE: Including source files using pp !source(...) is relative to the
      LaTeX/TeX template directory.
EOF
}



declare arg_template="${DEFAULT_TEMPLATE_FILE}"
declare arg_engine="${DEFAULT_PDF_ENGINE}"
declare arg_paper_size="${DEFAULT_PAPER_SIZE}"

declare param_latest=""
declare param_debug=""
declare param_no_backmatter=""
declare param_no_frontmatter=""
declare param_no_image=""
declare param_markdown_file="${DEFAULT_MARKDOWN_CONTENT_FILE}"
declare param_latex=""
declare param_latex_only=""
declare param_show_frame=""

while [ $# -gt 0 ]; do
    case "${1}" in
        --debug)            param_debug="--debug" ; shift ;;
        --engine)           arg_engine="${2,,}" ; shift 2 ;;
        --use-latest)       param_latest="--use-latest" ; shift ;;
        --latex)            param_latex="--latex" ; shift ;;
        --latex-only)       param_latex_only="--latex-only" ; shift ;;
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
    ${param_latest}                             \
    ${param_debug}                              \
    --paper ${arg_paper_size}                   \
    ${param_show_frame}                         \
    ${param_no_image}                           \
    ${param_no_frontmatter}                     \
    ${param_no_backmatter}                      \
    --image ${DEFAULT_IMAGE_CONTENT_FILE}       \
    --markdown "${param_markdown_file}"         \
    --template "${arg_template}"                \
    ${param_latex}                              \
    ${param_latex_only}                         \
    --engine "${arg_engine}"                    \
    --od ${DOC_OUT_DIR}                         \
    --of ${DOC_OUT_FILE}
