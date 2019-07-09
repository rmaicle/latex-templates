# TeX/LaTeX

The system configuration.

~~~
/usr/share/texmf
/usr/share/texmf-dist

/var/lib/texmf
~~~

Installed Packages are in: /var/lib/texmf/arch/installedpkgs/*.pkgs

~~~
$ texconfig conf
~~~

Will output, binaries found by search $PATH, active configuration files, font map files and kpathsea variables.

## Manual Installation

You should not manually install files into `/usr/share/texmf-dist/tex/latex/` \
`<package name>/*`. Instead, install local `.sty` files in `TEXMFLOCAL` if they
should be available to all users, or into `TEXMFHOME` if they are specific to
you. Use `kpsewhich -var TEXMFLOCAL` to get the local directory and install
into `<local` \
`directory>/tex/latex/<package name>/`. The `TEXMFHOME` directory
will automatically be searched when TeX tools are executed. If you use
`TEXMFLOCAL`, you need to update the database in order for the files to be
found.

### Install .sty Files

TeX Live (and teTeX) uses its own directory indexes (files named ls-R), and
you need to refresh them after you copy something into one of the TeX trees
or TeX can not see them. The command is `mktexlsr`. The `texhash` command is
a symbolic link of `mktexlsr`. The command `texconfig rehash` simply calls
`mktexlsr`. The command `texconfig-sys` is a symbolic link that wraps the
`texconfig` command.

~~~
$ mktexlsr --help
Usage: mktexlsr [OPTION]... [DIR]...

Rebuild ls-R filename databases used by TeX.  If one or more arguments
DIRS are given, these are used as the directories in which to build
ls-R. Else all directories in the search path for ls-R files
($TEXMFDBS) are used.
~~~

A command line program to search through these indexes is `kpsewhich`.
Hence you can check that TeX can find a particular file by running

~~~
kpsewhich <filename.sty>
~~~

The output should be the full path to that file.

Alternatively, `.sty` files that are intended only for a particular user should go in the `<home>/texmf/` tree.
For instance, the latex package `wrapfig` consists of the file `wrapfig.sty` and would go in `<home>/texmf/tex/latex/wrapfig/wrapfig.sty`.
There is no need to run `mktexlsr` or equivalent because `<home>/texmf` is searched every time `tex` is run.

## Typeface

The default typeface in LaTeX is Computer Modern (CM).
This typeface was designed by Donald Knuth for use with TeX because it is a book face, and he designed TeX originally for typesetting books.
Because it is one of the very few book typefaces with a comprehensive set of fonts, including a full suite of mathematics, it has remained the default.
Until recently, the mathematical symbols for Times in wordprocessors were a commercial product which is often unavailable to users of free software.[^AnIntroductionToTypeSettingWithLatex2011]

The following showcases the current fonts used in this document.

Roman font
: current Roman family is Bitstream Charter (bch).
: \fontfamily{bch}\selectfont Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

\fontfamily{\rmdefault}\selectfont

Sans serif font
: current Sans serif family is Latin Modern Sans Serif (lmss).
: \fontfamily{lmss}\selectfont Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

\fontfamily{\rmdefault}\selectfont

Typewriter font
: current Typewriter font is Inconsolata (zi4).
: \fontfamily{zi4}\selectfont Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

The following commands load the packages and set the default fonts to be used:

~~~
\usepackage{charter}
\usepackage[varl,scaled=1.0]{zi4}

\renewcommand*\rmdefault{bch}
\renewcommand*\sfdefault{cmss}
\renewcommand*\ttdefault{zi4}
~~~

### Serif Fonts

#### Computer Modern Roman (cmr)

\fontfamily{cmr}\selectfont
Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

#### Bitstream Charter

\fontfamily{bch}\selectfont
Bitstream Charter was designed by Matthew Carter for display on low resolution devices, and is useful for many applications, including bookwork.
The fontfamily name is bch.

Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

#### Palatino

\fontfamily{ppl}\selectfont
Palatino was designed by Hermann Zapf and is one of the most popular typefaces today.
The fontfamily name is ppl.

Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

#### Utopia

\fontfamily{put}\selectfont
Utopia was designed by Robert Slimbach and combines Transitional features and contemporary details.
The fontfamily name is put .

Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

#### New Century Schoolbook

\fontfamily{pnc}\selectfont
New Century Schoolbook was designed by Morris Benton for ATF (American Type Founders) in the early 20th century.
As its name implies it was designed for maximum legibility in schoolbooks.
The fontfamily name is pnc.

Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

#### Times Roman

\fontfamily{ptm}\selectfont
Times Roman is Linotype's version of the Times New Roman face designed by Stanley Morison for the Monotype Corporation for printing The Times newspaper.
The fontfamily name is ptm.

Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

#### Nimbus Roman

\fontfamily{unm}\selectfont
Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

#### ITC Bookman

\fontfamily{pbk}\selectfont
ITC Bookman was originally sold in 1860 by the Miller & Richard foundry in Scotland; it was designed by Alexander Phemister.
The ITC revival is by Ed Benguiat.
The fontfamily name is pbk.

Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

#### Pandora

\fontfamily{panr}\selectfont
Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

#### URW Antiqua

\fontfamily{uaq}\selectfont
Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

### Sans Serif Fonts

#### Latin Modern Sans Serif

\fontfamily{lmss}\selectfont
Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

#### Computer Modern Sans Serif (cmss)

\fontfamily{cmss}\selectfont
Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

#### Computer Modern Bright Sans Serif

\fontfamily{cmbr}\selectfont
Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

#### Helvetica

\fontfamily{phv}\selectfont
Helvetica was originally designed for the Haas foundry in Switzerland by Max Miedinger; it was later extended by the Stempel foundry and further refined by Linotype.
The fontfamily name is phv.

Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

#### Bera Sans

\fontfamily{fvs}\selectfont
Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

#### Iwona

\fontfamily{iwona}\selectfont
Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

#### Kurier

\fontfamily{kurier}\selectfont
Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

### Typewriter Fonts

#### Computer Modern Typewriter (cmtt)

\fontfamily{cmtt}\selectfont
Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

\noindent 12345678901234567890123456789012345678901234567890123456789012345678901234567890

#### Courier

\fontfamily{pcr}\selectfont
Courier is a monospaced font that was originally designed by Howard Kettler at IBM and then later redrawn by Adrian Frutiger.
The fontfamily name is pcr .

Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

\noindent 12345678901234567890123456789012345678901234567890123456789012345678901234567890

#### Bera Mono

\fontfamily{fvm}\selectfont
Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

\noindent 12345678901234567890123456789012345678901234567890123456789012345678901234567890

#### Inconsolata

\fontfamily{zi4}\selectfont
Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

\noindent 12345678901234567890123456789012345678901234567890123456789012345678901234567890

#### Latin Modern

\fontfamily{lmtt}\selectfont
Lorem ipsum dolor sit amet, _consectetuer adipiscing elit_. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. __Curabitur dictum gravida mauris__. Nam arcu libero, nonummy eget, consectetuer id, vulputate a, magna. Donec vehicula augue eu neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.

\noindent 12345678901234567890123456789012345678901234567890123456789012345678901234567890

\fontfamily{\rmdefault}\selectfont

[^AnIntroductionToTypeSettingWithLatex2011]: An Introduction to TypeSetting with Latex, 2011

