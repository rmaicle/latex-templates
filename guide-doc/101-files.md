# Files

## Markdown File

## Latex Template

Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. Curabitur dictum gravida mauris. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris ut leo. Cras viverra metus rhoncus sem. Nulla et lectus vestibulum urna fringilla ultrices. Phasellus eu tellus sit amet tortor gravida placerat. Integer sapien est, iaculis in, pretium quis, viverra ac, nunc. Praesent eget sem vel leo ultrices bibendum. Aenean faucibus. Morbi dolor nulla, malesuada eu, pulvinar at, mollis ac, nulla. Curabitur auctor semper nulla. Donec varius orci eget risus. Duis nibh mi, congue eu, accumsan eleifend, sagittis quis, diam. Duis eget orci sit amet orci dignissim rutrum.

## Build Script

The following is the contents of the build script file.

~~~
#!/bin/bash
if [ "$1" = "--help" ]; then
    echo "build_a4 <input> <template> <output>"
    exit
fi
inputfile=${1:-"test.md"}"
template=${2:-"test_book_a4.tex"}
outputfile=${3:-"output_a4.pdf"}
pandoc ${inputfile}                    \
       --template=${template}          \
       -f markdown+raw_tex+footnotes   \
       -t latex                        \
       -o ${outputfile}                \
       --pdf-engine=xelatex            \
       --toc                           \
       --top-level-division=chapter
~~~
