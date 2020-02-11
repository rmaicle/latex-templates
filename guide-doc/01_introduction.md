# Introduction

This document is a guide in the preparation and generation of
PDF documents from Markdown source files. This chapter provides the
reader a brief introduction to the technologies that are directly
and indirectly involved in the production process.



## \TeX

\textit{\TeX} or *TeX* is a typesetting system designed and written
by Donald E. Knuth starting in 1977. It is popular for producing book
quality text for scientific and technical works. It has been noted as
one of the most sophisticated digital typographical systems. The
source code of TeX has been placed into the *public domain*.

\TeX\space is the ISO basic Latin alphabet rendering of the Greek
letters *tau*, *epsilon*, and *chi* (\textit{$\tau\epsilon\chi$}).
The Greek letter *chi* ($\chi$) is pronounced as 'ch' in the Scottish
word *loch* like in *lochness monster* or the abbreviation *tech*
from the word *technology*. The typeset *epsilon* character,
$\epsilon$, that appears displaced in \TeX\space is intentional to
distinguish it as the typesetting system. In computer files that does
not allow \TeX\space to be written with the displaced 'E' character,
it is usually written as *TeX*.

Since version 3.0 of TeX, updates have been indicated by adding an
extra digit at the end of the decimal. This version numbering system
will asymptotically approach the value of $\pi$. The current version
of TeX is 3.14159265, last updated on January 12, 2014.



## \LaTeX

\textit{\LaTeX} or *LaTeX*  is a document preparation system created
by Leslie B. Lamport based on TeX to simplify TeX typesetting and is
called the \LaTeX\space format (Lamport TeX). It is pronounced either
as "Lah-tech" or "Lay-tech".

In September 1984, Lamport released version 2.06a of the LaTeX macros.
In August 1985, version 2.09 was released. LaTeX2e, also known as
*The New Standard LaTeX* is the current version since it replaced
version 2.09 in 1994[^latex-209]. As of 2019, LaTeX3, which was
started in the early 1990s, is a long-term research project to develop
the next version of the LaTeX typesetting system.

 LaTeX is free software and is distributed under the LaTeX Project
 Public License (LPPL).

[^latex-209]: Lamport releases LaTeX 2.09, his last version of the
LaTeX macros. (Incidentally, version 2.09 was to be called
"version 3.0", but Addison-Wesley ignored Lamport's instructions not
to publish the note that mentions 2.09, and instead put it on the
copyright page. So Lamport's last version of LaTeX became known as
version 2.09 for posterity.)



## TeX Live

*TeX Live* is a cross-platform, free software distribution for the
TeX document production system. TeX Live was originally started by
Sebastian Rahtz in 1996 in collaboration with the TeX user groups
worldwide. It includes major TeX-related programs, macro packages,
and fonts for most flavors of Unix, including GNU/Linux, macOS, and
the Microsoft Windows operating system.

This document references Tex Live 2019 released on 29 April 2019.



## Pandoc

*Pandoc* is a tool written by John MacFarlane since 2006 for
converting from one markup format to another. Pandoc understands an
extended and slightly revised version of John Gruber's
Markdown[^markdown-intro] syntax. These extensions and revisions are
necessary to provide multiple output formats aimed by Pandoc's design.
This document references pandoc version 2.7.3.

[^markdown-intro]: Daring Fireball: Markdown [https://web.archive.org/web/20190611162426/https://daringfireball.net/projects/markdown/](https://web.archive.org/web/20190611162426/https://daringfireball.net/projects/markdown/). Archived from the original [http://daringfireball.net/projects/markdown/](http://daringfireball.net/projects/markdown/) on 2019-06-11. Retrieved 2019-07-04.



## PP

*PP* is a an open source text preprocessor for Pandoc. The preprocessor
can be used to generate diagrams, execute arbitrary shell script and
display the output in a code block or simply display source files in
code blocks. The source and guide may be obtained from
[https://github.com/CDSoft/pp](https://github.com/CDSoft/pp).



## Markdown

*Markdown* is a plain text formatting syntax primarily intended to be
easy to write and easy to read. The markdown language was created by
John Gruber in 2004 with the collaboration of Aaron Swartz on the
formatting syntax. Since then, Markdown gave rise to other variants
like MultiMarkdown, GitHub Flavored Markdown, and CommonMark.
CommonMark was started in 2012 as an effort to standardize the
Markdown syntax by a group of people including Jeff Atwood and John
MacFarlane.



## PDF

A *PDF* file is a file format based on the PostScript language
developed by Adobe in the 1990s. A PDF file encapsulates a complete
description of a document which includes fonts, vector graphics and
raster images and other information needed.

A PDF file is a file format based on the PostScript language that
encapsulates a complete description of a document which includes
fonts, vector graphics, raster images and other information.

PDF was a proprietary format developed by Adobe until it was released
as an open standard on July 1, 2008. It was then published by the
International Organization for Standardization as ISO 32000-1:2008 in
the same year. ISO 32000-1:2008 which references version 1.7 of the
PDF specification contains proprietary technologies defined only by
Adobe. These proprietary technologies that are not standardized and
whose specifications are published only on Adobe's website are not
supported by popular third-party PDF implementations. ISO 32000-2:2017
which was published on July 28, 2017 does not include any proprietary
technologies as normative references.



## Document Processing

The following diagram illustrates the simplified process flow of
generating a PDF document. It shows the softwares involved, input
files and where in the process they are used, and the output files
produced by each process.

![Simplified Document Processing](fig_01_1_process.png)

