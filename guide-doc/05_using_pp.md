# Using `pp`

## Including Source Files

Including source files is relative to the LaTeX/TeX template directory.
To have a visual cue, the following is a directory hierarchy rendering.

~~~{style=terminal}
root
`-- dev
|   |-- build.sh
|   |   |-- build.sh
|   |   |-- build_boost.sh
|   |   |-- build_decnumber.sh
|   |   |-- build_wx.sh
|   |   |-- compilers.json
|   |   |-- cpu.sh
|   |   |-- ...
|   |-- doc
|   |   |-- dev-guide
|   |   |   |-- appendix
|   |   |   |-- build
|   |   |   |-- components
|   |   |   |-- frontmatter
|   |   |   |-- libraries
|   |   |   |-- ...
|   |   |-- ...
|   |-- ...
|-- tools
    |-- latex-templates
    |-- md-to-pdf
    |-- ...
~~~



~~~{style=listing}
!source(../../dev/build.sh/compilers.json)
~~~
