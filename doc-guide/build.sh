#!/usr/bin/env bash

# Script for building the doc guide
#
# ./build.sh --paper-size a4 --font-size 10 --template template_doc_a4.tex
# ./build.sh --paper-size a5 --font-size 8 --template template_doc_a5.tex
# ./build.sh --paper-size b5 --font-size 9 --template template_doc_a5.tex

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
declare -r PAPER_A5="a5"
declare -r PAPER_A5="b5"
declare -r PAPER_LETTER="letter"

declare -r DEFAULT_PAPER_SIZE=""

declare -a PAPER_SIZES=(
    ${PAPER_A4}
    ${PAPER_A5}
    ${PAPER_B5}
    ${PAPER_LETTER}
)

declare -r DEFAULT_FONT_SIZE="10"
declare -a -r FONT_SIZES=(
    "6"
    "7"
    "8"
    "9"
    "${DEFAULT_FONT_SIZE}"
    "11"
    "12"
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
  -h, --help              print help and exit
      --debug             run script in debug mode
      --draft             generate draft version PDF document
      --engine            engine to use, pdflatex or xelatex; default is pdflatex
$(printf '                          %s\n' ${PDF_ENGINES[@]})
      --font-size n       body text font point size; default is ${DEFAULT_FONT_SIZE} pt.
$(printf '                          %s point\n' ${FONT_SIZES[@]})
      --latex             output TeX/LaTeX file and generate PDF
      --latex-only        output TeX/LaTeX file and exit
      --markdown file     use input mardown content file
      --no-image          do not generate TeX images
      --no-frontmatter    do not generate user-supplied frontmatter contents
      --no-backmatter     do not generate user-supplied backmatter contents
      --of file           output filename appended with '.pdf'; the default output
                            filename is 'output'
      --paper-size size   paper-size; default is usletter
                            usletter
                            a4
      --show-frame        show page margins
      --template file     use specified template file
      --use-latest        use latest installed Pandoc version

NOTE: Including source files using pp !source(...) is relative to the
      LaTeX/TeX template directory.
EOF
}



declare arg_template="./${DEFAULT_TEMPLATE_FILE}"
declare arg_engine="${DEFAULT_PDF_ENGINE}"
declare arg_paper_size=""

declare param_font_size="${DEFAULT_FONT_SIZE}"
declare param_latest=""
declare param_debug=""
declare param_no_backmatter=""
declare param_no_frontmatter=""
declare param_no_image=""
declare param_markdown_file="${DEFAULT_MARKDOWN_CONTENT_FILE}"
declare param_latex=""
declare param_latex_only=""
declare param_show_frame=""
declare param_paper_size=""

while [ $# -gt 0 ]; do
    case "${1}" in
        --debug)            param_debug="--debug" ; shift ;;
        --font-size)        param_font_size="--font-size ${2}" ; shift 2 ;;
        --engine)           arg_engine="${2,,}" ; shift 2 ;;
        --latex)            param_latex="--latex" ; shift ;;
        --latex-only)       param_latex_only="--latex-only" ; shift ;;
        --markdown)         param_markdown_file="${2}" ; shift 2 ;;
        --no-image)         param_no_image="--no-image" ; shift ;;
        --no-frontmatter)   param_no_frontmatter="--no-frontmatter" ; shift ;;
        --no-backmatter)    param_no_backmatter="--no-backmatter" ; shift ;;
        --paper-size)       param_paper_size="--paper-size ${2}" ; shift 2 ;;
        --show-frame)       param_show_frame="--show-frame" ; shift ;;
        --template)         arg_template="${2}" ; shift 2 ;;
        --use-latest)       param_latest="--use-latest" ; shift ;;
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
    ${param_font_size}                          \
    ${param_paper_size}                         \
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
