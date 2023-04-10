# Preface {.unnumbered}



#### About This Document {.unnumbered .unlisted}

This document is a technical guide in the preparation and generation
of PDF documents from Markdown source files. It discusses the
software and utilities and how to format source documents.



#### Intended Audience {.unnumbered .unlisted}

This document is intended for readers who have at least a basic
knowledge on how to use a Unix-like system and its command-line
interface.

This document assumes that the reader have access to a Unix-like
system with command-line interface to be able to follow the
instructions provided. A few commands require root access on machines
where system operations are required. In such situations, the reader
is expected to have a clear understanding of the responsibilities of
having root access to a system.



#### Text Conventions {.unnumbered .unlisted}



##### Conventions in Paragraph Texts {.unnumbered .unlisted}

The following typographical conventions are used in paragraph texts,
list items, and block quotes.

\textnormal{\textit{Italic}}

: Indicates new terms, filenames, file extensions, file paths, email
addresses, and Uniform Resource Identifiers (URIs).

\textnormal{\texttt{Constant width (Bera Mono)}}

: Used to refer to program elements such as variable or function names,
databases, data types, environment variables, statements, and
keywords.

**`Constant width bold (Bera Mono)`**

: Shows commands or other texts that should be typed literally by the
user.

\textnormal{\texttt{\textit{Constant width italic (Bera Mono)}}}

: Shows text that should be replaced with user-supplied values or by
values determined by context.



##### Conventions in Verbatim Texts {.unnumbered .unlisted}

The following typographical conventions are used in verbatim texts
like terminal program output texts, program source code listings,
command syntaxes and command texts.

The constant width Latin Modern Typewriter font is used to display
text that would appear in a terminal, console or in an operating system
shell. Italicized texts after \ding{224}\space symbols are meant to
be comments, notes, or additional information for the reader.

~~~{style=terminal}
$ echo "hello, world" >> ~/hello.txt    @\Note{Put content to file}@
$ cat ~/hello.txt                       @\Note{Display contents of file}@
$ hello, world
~~~

The constant width Bera mono font is used to display source code
listings and syntax texts. Italicized texts after \ding{224}\space
symbols are meant to be comments, notes, or additional information
for the reader.

~~~{style=syntax}
@\Note{Result of executing 'pandoc ---help'}@
pandoc [OPTIONS] [FILES]
  -f FORMAT, -r FORMAT  --from=FORMAT, --read=FORMAT
  -t FORMAT, -w FORMAT  --to=FORMAT, --write=FORMAT
  -o FILE               --output=FILE
~~~

Commands that need to be executed with root permissions appear as a
`sudo` operation.

~~~{style=terminal}
# Install the Git package
$ sudo pacman -S --noconfirm git
~~~



#### Attribution {.unnumbered .unlisted}

Linux\textregistered\space is the registered trademark of Linus Torvalds in the United States and other countries.

UNIX is a registered trademark of The Open Group in the United States and other countries.

\TeX\texttrademark\space is a trademark of the American Mathematical Society.

Microsoft\textregistered\space, Windows\textregistered\space are registered trademarks of Microsoft Corporation.

TrueType\texttrademark\space is a trademark and Apple\textregistered\space and Macintosh\textregistered\space are registered trademarks of Apple Computer Inc.



\pagebreak
\cleardoublepage
