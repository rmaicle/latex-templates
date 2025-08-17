# Toolchain

This chapter discusses the installation and configuration of the
softwares and tools.



## TexLive

TBD

### `tllocalmgr`

Manage TeXLive packages.

~~~{style=terminal}
$ tllocalmgr
Retrieving new TeXLive database from CTAN...
Initializing ...
Welcome to the TeXLive Local Manager shell. Type 'help' for assistance.
tllocalmgr> help
               clean -- Clean local build tree
                help -- Print helpful information
                info -- Print info on CTAN packages
             install -- Locally install new CTAN packages
          installdoc -- Locally install documentation of CTAN packages
          installsrc -- Locally install sources of CTAN packages
           listfiles -- List all files in CTAN packages
                quit -- Quit tllocalmgr
              search -- Search info on CTAN packages
         searchfiles -- Search for files in CTAN packages
           shortinfo -- Print a one-liner description of CTAN packages
              status -- Current status of TeXLive installation
             texhash -- Refresh the TeX file database
              update -- Locally update CTAN packages
               usage -- Print more detailed help
tllocalmgr>
~~~



## Pandoc

Pandoc is a Haskell library for converting from one markup format to
another, and a command-line tool that uses this library.

The `pandoc` version used in this guide is 3.7.0.2.
The binary release is available at [https://github.com/jgm/pandoc/releases](https://github.com/jgm/pandoc/releases) (pandoc-3.7.0.2-linux-amd64.tar.gz).



### Install Tarball (Linux)

On any distro, the tarball may be installed into `\$DEST` by the
following command:

~~~{style=terminal}
$ tar xvzf $TGZ --strip-components 1 -C $DEST
~~~

where `$TGZ` is the path to the downloaded tarball and `$DEST` is
the destination directory, usually `/usr/local` or `~/.local`.

See *Pandoc Installation*[^pandoc-install] documentation for more information.

[^pandoc-install]: [https://pandoc.org/installing.html](https://pandoc.org/installing.html)



### Pandoc Default Template for LaTeX

As of Pandoc version 3.2.1, a macro has been added to the default
template for generating LaTeX output.
When using custom LaTeX template, be sure to copy \pandocbounded macro
from the LaTeX default template.

~~~{style=terminal}
$ pandoc -D latex > default-template-latex.tex
~~~

Copy the `\pandocbounded` macro to the custom LaTeX template.

~~~{style=syntax escapechar=!}
$if(graphics)$
\usepackage{graphicx}
\makeatletter
\newsavebox\pandoc@box
\newcommand*\pandocbounded[1]{% scales image to fit in text height/width
  \sbox\pandoc@box{#1}%
  \Gscale@div\@tempa{\textheight}{\dimexpr\ht\pandoc@box+\dp\pandoc@box\relax}%
  \Gscale@div\@tempb{\linewidth}{\wd\pandoc@box}%
  \ifdim\@tempb\p@<\@tempa\p@\let\@tempa\@tempb\fi% select the smaller of both
  \ifdim\@tempa\p@<\p@\scalebox{\@tempa}{\usebox\pandoc@box}%
  \else\usebox{\pandoc@box}%
  \fi%
}
% Set default figure placement to htbp
\def\fps@figure{htbp}
\makeatother
$endif$
~~~

The code snippet above may be found the pandoc templates project[^pandoc-template-latex-common].

[^pandoc-template-latex-common]: [https://github.com/jgm/pandoc-templates/blob/master/common.latex](https://github.com/jgm/pandoc-templates/blob/master/common.latex)



## Panda

Panda[^panda] is free and open source software that is heavily
inspired by *abp*[^abp]
reimplemented as *Pandoc Lua filter*[^pandoc-lua-filter] that works on
Pandoc's abstract syntax tree (AST).

It provides several interesting features:

    * variable expansion (minimalistic templating)
    * conditional blocks
    * file inclusion (e.g. for source code examples)
    * script execution (e.g. to include the result of a command)
    * diagrams (Asymptote, blockdiag, ditaa, gnuplot, Graphviz, lsvg,
      ermaid, PlantUML)

[^abp]: [https://codeberg.org/cdsoft/abp](https://codeberg.org/cdsoft/abp)
[^panda]: [https://github.com/CDSoft/panda](https://github.com/CDSoft/panda)
[^pandoc-lua-filter]: [https://pandoc.org/lua-filters.html](https://pandoc.org/lua-filters.html)



## Lua eXtended

`luax`[^luax] is a Lua interpreter and REPL based on Lua 5.4, augmented with
some useful packages.

[^luax]: [https://codeberg.org/cdsoft/luax](https://codeberg.org/cdsoft/luax)



## lsvg

`lsvg` is a Lua interpreter specialized to generate SVG images.
It was initially inspired by `svg-lua`.
It is based on LuaX and uses a pure Lua library to generate SVG images.
It optionally requires ImageMagick to make PNG, JPEG or PDF images.
