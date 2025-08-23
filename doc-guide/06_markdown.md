# Markdown

This chapter describes how to format the contents of a document using
a Markdown variant and a little \LaTeX for some specific cases.

A document is a group of structural elements like headings,
paragraphs, quotations, lists, etc. Some structural elements contain
other structural elements like, lists containing quotations, etc.
Some structural elements contain inline elements like bold texts,
emphasized texts, links, etc.

We can divide blocks into two types: container blocks, which can
contain other blocks, and leaf blocks, which cannot.



## Section Headings

Section headings are structured divisions of the document main body:
chapters, sections, subsections, etc.
Except when a section heading appear at the start of the file, section
headings must be preceeded by and followed by one or more blank lines.
Section headings must start with the hash character (`#`) followed by
a space and the section title text.
Section heading levels are specified by the number of hash characters.

~~~{style=syntax}
# Chapter Heading 1

## Section Heading

### Subsection Heading

#### Subsubsection Heading

##### Paragraph Heading

##### Subparagraph Heading

# Chapter Heading 2
~~~



### Attributes

Section headings can have attributes using the following syntax at the
end of the section heading line:

~~~{style=syntax}
{.class}
~~~

Section headings may be omitted from the table of contents by adding
`.unlisted` at the end of the section heading text.

Section headings may be displayed unnumbered in the table of contents
by adding `.unnumbered` at the en dof hte section heading
text.

Section headings may also have _anchors_ so it can be referenced in
the document from elsewhere.
An anchor is specified as `#unique_anchor_name` where
`#unique_anchor_name` _unique_anchor_name_ is a unique label across the entire document.

These may be combined and applied to a section heading.



~~~{style=syntax}
# Preface {.unnumbered}
## About This Document {.unnumbered .unlisted #preface_about_doc}
~~~


### Vertical Space Before First Chapter (Deprecated)

The chapter style moves the first chapter name lower than it should.
The first chapter should be at the top of the page.
To do this, the command `\\vspace*\{-7ex\}` must be executed
before the first chapter.
For convenience, this command has already been added in the template
file.
It is used in the table of contents, list of tables, list of figures,
other front matter pages, main matter, and appendices.



## Links

Links are formatted as `[text](link)`.

~~~{style=syntax}
[TeX](https://en.wikipedia.org/wiki/TeX)
[LaTeX](https://www.latex-project.org/)
~~~



## Paragraph

A paragraph is a block of text surrounded by blank lines.

The following example shows how to write a couple of paragraphs after
the chapter heading.

~~~{style=syntax}
# Chapter Heading

Lorem ipsum dolor sit amet, consectetur adipiscing elit. In diam arcu,
molestie nec rhoncus non, tincidunt vel metus. Lorem ipsum dolor sit
amet, consectetur adipiscing elit. Fusce dictum magna eu nisl eleifend
tincidunt id sed diam. Etiam scelerisque condimentum mauris.

Phasellus condimentum odio sapien, non scelerisque lorem sagittis at.
In pellentesque velit in elementum malesuada. Praesent semper quam nibh,
in tincidunt mi sollicitudin vel. Phasellus ligula felis, tempor eu
metus sit amet, mollis efficitur diam.
~~~



## Table



### Table Caption

Tables may have an optional caption.
A caption is a paragraph beginning with the string Table: (or just :),
which will be stripped off.
It may appear either before or after the table.



### Simple Tables

Enabled by passing _Pandoc markdown_ extension `simple_tables`.
The following description and explanation of _simple tables_ is taken
from Pandoc 2.18 documentation.

~~~{style=syntax}
  Right     Left     Center     Default
-------     ------ ----------   -------
     12     12        12            12
    123     123       123          123
      1     1          1             1
~~~

  Right     Left     Center     Default
-------     ------ ----------   -------
     12     12        12            12
    123     123       123          123
      1     1          1             1

The header and table rows must each fit on one line.
Column alignments are determined by the position of the header text
relative to the dashed line below it.

* If the dashed line is flush with the header text on the right side
  but extends beyond it on the left, the column is right-aligned.
* If the dashed line is flush with the header text on the left side but
  extends beyond it on the right, the column is left-aligned.
* If the dashed line extends beyond the header text on both sides, the
  column is centered.
* If the dashed line is flush with the header text on both sides, the
  default alignment is used (in most cases, this will be left).

The table must end with a blank line, or a line of dashes followed by
a blank line.

The column header row may be omitted, provided a dashed line is used to
end the table. For example:

~~~{style=syntax}
-------     ------ ----------   -------
     12     12        12             12
    123     123       123           123
      1     1          1              1
-------     ------ ----------   -------
~~~

-------     ------ ----------   -------
     12     12        12             12
    123     123       123           123
      1     1          1              1
-------     ------ ----------   -------

When the header row is omitted, column alignments are determined on the
basis of the first line of the table body.
So, in the tables above, the columns would be right, left, center, and
right aligned, respectively.



### Multi-Line Tables

Enabled by passing _Pandoc markdown_ extension
`multiline_tables`.
The following description and explanation of _multi-line tables_ is
taken from Pandoc 2.18 documentation.

Multiline tables allow header and table rows to span multiple lines of
text (but cells that span multiple columns or rows of the table are
not supported). Here is an example:

~~~{style=syntax}
-------------------------------------------------------------
 Centered   Default           Right Left
  Header    Aligned         Aligned Aligned
----------- ------- --------------- -------------------------
   First    row                12.0 Example of a row that
                                    spans multiple lines.

  Second    row                 5.0 Here's another one. Note
                                    the blank line between
                                    rows.
-------------------------------------------------------------

Table: Here's the caption. It, too, may span
multiple lines.
~~~

-------------------------------------------------------------
 Centered   Default           Right Left
  Header    Aligned         Aligned Aligned
----------- ------- --------------- -------------------------
   First    row                12.0 Example of a row that
                                    spans multiple lines.

  Second    row                 5.0 Here's another one. Note
                                    the blank line between
                                    rows.
-------------------------------------------------------------

Table: Here's the caption. It, too, may span
multiple lines.

These work like simple tables, but with the following differences:

* They must begin with a row of dashes, before the header text (unless
  the header row is omitted).
* They must end with a row of dashes, then a blank line.
* The rows must be separated by blank lines.

In multiline tables, the table parser pays attention to the widths of
the columns, and the writers try to reproduce these relative widths in
the output.
So, if you find that one of the columns is too narrow in the output,
try widening it in the Markdown source.

The header may be omitted in multiline tables as well as simple tables:

~~~{style=syntax}
----------- ------- --------------- -------------------------
   First    row                12.0 Example of a row that
                                    spans multiple lines.

  Second    row                 5.0 Here's another one. Note
                                    the blank line between
                                    rows.
----------- ------- --------------- -------------------------

: Here's a multiline table without a header.
~~~

----------- ------- --------------- -------------------------
   First    row                12.0 Example of a row that
                                    spans multiple lines.

  Second    row                 5.0 Here's another one. Note
                                    the blank line between
                                    rows.
----------- ------- --------------- -------------------------

: Here's a multiline table without a header.

It is possible for a multiline table to have just one row, but the row
should be followed by a blank line (and then the row of dashes that
ends the table), or the table may be interpreted as a simple table.



### Grid Tables

Enabled by passing _Pandoc markdown_ extension `grid_tables`.
The following description and explanation of _grid tables_ is taken
from Pandoc 2.18 documentation.

The following is an example of a grid table.

~~~{style=syntax}
: Sample grid table.

+---------+-------+-------------------------------------------------+
| Fruit   | Price | Advantages                                      |
+=========+=======+=================================================+
| Bananas | $1.34 | - built-in wrapper                              |
|         |       | - bright color                                  |
+---------+-------+-------------------------------------------------+
| Oranges | $2.10 | - cures scurvy                                  |
|         |       | - tasty                                         |
+---------+-------+-------------------------------------------------+
| Apples  | $1.10 | Lorem ipsum dolor sit amet, consectetur         |
|         |       | adipiscing elit. In diam arcu, molestie nec     |
|         |       | rhoncus non, tincidunt vel metus.               |
|         |       |                                                 |
|         |       | Lorem ipsum dolor sit amet, consectetur         |
|         |       | adipiscing elit. Fusce dictum magna eu nisl     |
|         |       | eleifend tincidunt id sed diam. Etiam           |
|         |       | scelerisque condimentum mauris.                 |
+---------+-------+-------------------------------------------------+
| Code    | $0.02 | ~~~                                             |
|         |       | int main () {                                   |
|         |       |   printf("Hello, world!\n");                    |
|         |       |   return 0;                                     |
|         |       | }                                               |
|         |       | ~~~                                             |
+---------+-------+-------------------------------------------------+
~~~

: Sample grid table.

+---------+-------+-------------------------------------------------+
| Fruit   | Price | Advantages                                      |
+=========+=======+=================================================+
| Bananas | $1.34 | - built-in wrapper                              |
|         |       | - bright color                                  |
+---------+-------+-------------------------------------------------+
| Oranges | $2.10 | - cures scurvy                                  |
|         |       | - tasty                                         |
+---------+-------+-------------------------------------------------+
| Apples  | $1.10 | Lorem ipsum dolor sit amet, consectetur         |
|         |       | adipiscing elit. In diam arcu, molestie nec     |
|         |       | rhoncus non, tincidunt vel metus.               |
|         |       |                                                 |
|         |       | Lorem ipsum dolor sit amet, consectetur         |
|         |       | adipiscing elit. Fusce dictum magna eu nisl     |
|         |       | eleifend tincidunt id sed diam. Etiam           |
|         |       | scelerisque condimentum mauris.                 |
+---------+-------+-------------------------------------------------+
| Code    | $0.02 | ~~~                                             |
|         |       | int main () {                                   |
|         |       |   printf("Hello, world!\n");                    |
|         |       |   return 0;                                     |
|         |       | }                                               |
|         |       | ~~~                                             |
+---------+-------+-------------------------------------------------+

The row of `=`s separates the table header from the table
body, and can be omitted for a headerless table.
The cells of grid tables may contain arbitrary block elements (multiple
paragraphs, code blocks, lists, etc.).
Cells that span multiple columns or rows are not supported.
Grid tables can be created easily using Emacs’ table-mode
(M-x table-insert).

Alignments can be specified as with pipe tables, by putting colons at
the boundaries of the separator line after the header:

~~~{style=syntax}
+---------------+---------------+--------------------+
| Right         | Left          | Centered           |
+==============:+:==============+:==================:+
| Bananas       | $1.34         | built-in wrapper   |
+---------------+---------------+--------------------+
~~~

+---------------+---------------+--------------------+
| Right         | Left          | Centered           |
+==============:+:==============+:==================:+
| Bananas       | $1.34         | built-in wrapper   |
+---------------+---------------+--------------------+

For headerless tables, the colons go on the top line instead:

~~~{style=syntax}
+--------------:+:--------------+:------------------:+
| Right         | Left          | Centered           |
+---------------+---------------+--------------------+
~~~

+--------------:+:--------------+:------------------:+
| Right         | Left          | Centered           |
+---------------+---------------+--------------------+



#### Grid Table Limitations

Pandoc does not support grid tables with row spans or column spans.
This means that neither variable numbers of columns across rows nor
variable numbers of rows across columns are supported by Pandoc.
All grid tables must have the same number of columns in each row, and
the same number of rows in each column.
For example, the Docutils sample grid tables will not render as
expected with Pandoc.



### Pipe Tables

Enabled by passing _Pandoc markdown_ extension `pipe_tables`.
The following description and explanation of _pipe tables_ is taken
from Pandoc 2.18 documentation.

The following is an example of a grid table.

~~~{style=syntax}
| Right | Left | Default | Center |
|------:|:-----|---------|:------:|
|   12  |  12  |    12   |    12  |
|  123  |  123 |   123   |   123  |
|    1  |    1 |     1   |     1  |

  : Demonstration of pipe table syntax.
~~~

| Right | Left | Default | Center |
|------:|:-----|---------|:------:|
|   12  |  12  |    12   |    12  |
|  123  |  123 |   123   |   123  |
|    1  |    1 |     1   |     1  |

  : Demonstration of pipe table syntax.

The syntax is identical to PHP Markdown Extra tables.
The beginning and ending pipe characters are optional, but pipes are
required between all columns.
The colons indicate column alignment as shown.
The header cannot be omitted.
To simulate a headerless table, include a header with blank cells.

Since the pipes indicate column boundaries, columns need not be
vertically aligned, as they are in the above example.
So, this is a perfectly legal (though ugly) pipe table:

~~~{style=syntax}
fruit| price
-----|-----:
apple|2.05
pear|1.37
orange|3.09
~~~

fruit| price
-----|-----:
apple|2.05
pear|1.37
orange|3.09

The cells of pipe tables cannot contain block elements like paragraphs
and lists, and cannot span multiple lines.
If any line of the markdown source is longer than the column width
(see --columns), then the table will take up the full text width and
the cell contents will wrap, with the relative cell widths determined
by the number of dashes in the line separating the table header from
the table body.
(For example ---|- would make the first column 3/4 and the second
column 1/4 of the full text width.)
On the other hand, if no lines are wider than column width, then cell
contents will not be wrapped, and the cells will be sized to their
contents.

Note: pandoc also recognizes pipe tables of the following form, as can
be produced by Emacs' _orgtbl-mode_:

~~~{style=syntax}
| One | Two   |
|-----+-------|
| my  | table |
| is  | nice  |
~~~

The difference is that `+` is used instead of `|`.
Other _orgtbl_ features are not supported.
In particular, to get non-default column alignment, you’ll need to add
colons as above.



## Code \codesectwo{Block}

A *code block* is a block of text treated as verbatim text. A code
block in the original definition of markdown is indented by four
spaces or one tab character. It must be preceeded and followed by one
or more blank lines.

~~~{style=syntax}
@\Note{blank line}@
____verbatim text here    @\Note{indented 4 spaces}@
________indented text     @\Note{indented 8 spaces}@
@\Note{blank line}@
~~~

The indented code block above is rendered as

~~~{style=syntax}
verbatim text here
    indented text
~~~



### Fenced Code Block

In addition to the original markdown indented _code block_, a
_fenced code block_ is a block of text between a pair of "fence
lines". The fence lines start and end with at least three tilde
(`~`) characters. All texts inside the fence lines are treated as
verbatim text.

The following shows how to define a fenced code block.

~~~~~{style=syntax}
~~~    @\Note{fence}@
...
~~~    @\Note{fence}@
~~~~~

For consistency, _fenced code blocks_ are surrounded by blank lines.

It is better to use backtick (`` ` ``) characters as fence lines
when wrapping a fenced code block that uses the tilde (`~`)
characters. It may be best to show this as an example.

~~~~~{style=syntax}
```     @\Note{enclosing fence using 3 the backtick characters}@
~~~     @\Note{start of the enclosed fenced code block to be displayed}@
...     @\Note{contents}@
~~~     @\Note{end of the enclosed fenced code block to be displayed}@
```     @\Note{end of enclosing fence}@
~~~~~

It is also possible to use the tilde (`~`) characters to wrap a fenced
code block that uses the tilde (`~`) characters but the number of tilde
characters must be more than the enclosed fenced code block tilde
characters.

`````{style=syntax}
~~~~~   @\Note{enclosing fence using 5 tilde characters}@
~~~     @\Note{start of the enclosed fenced code block to be displayed}@
...     @\Note{contents}@
~~~     @\Note{end of the enclosed fenced code block to be displayed}@
~~~~~   @\Note{end of enclosing fence}@
`````



### Fenced Code \codesecthree{Block Attributes}

Using fenced code blocks allows the declaration of _attributes_.
_Attributes_ provide additional capabilities on how to display
verbatim texts.

_Attributes_ are enclosed between curly braces right after the opening
fence.
Multiple _attributes_ are whitespace-separated.

\lstset{emph={attribute}, emphstyle=\itshape}
`````{style=syntax}
~~~{attribute@\textsubscript{1}@ attribute@\textsubscript{2}@ ... attribute@\textsubscript{n}@}
...
~~~
`````

_Attributes_ may be declared in multiple lines.

\lstset{emph={attribute}, emphstyle=\itshape}
`````{style=syntax}
~~~{
attribute@\textsubscript{1}@
attribute@\textsubscript{2}@
...
attribute@\textsubscript{n}@
}
...
~~~
`````

The following subsections discuss the attributes that are commonly used.
Fenced code block _attributes_ are discussed in detail in the _listings_
package.



#### Language Attribute

LaTeX recognizes a set of pre-defined programming language identifiers
that is usually used for formatting and coloring *keywords*,
*comments*, and *strings*. The language attribute is specified as
`.language`.

The following shows how to display the code block as a
C++ programming language text.

`````{style=syntax}
~~~{.cpp}
// This is a comment
#include <iostream>
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~
`````

All the text in the block are treated as a C++ programming language.
C++ keywords, comments, and strings are formatted accordingly.

~~~{.cpp style=syntax}
// This is a comment
#include <iostream>
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~

Here is another _code block_ that contains _bash_ script.

`````{style=syntax}
~~~{.bash}
# This is a comment
declare var="This is a string."
echo "String: ${var}"
~~~
`````



#### Number Lines Attribute

Fenced code blocks may be decorated with number lines.
Number lines are useful when referencing specific lines of text.

The number line attribute is specified using `.numberLines`.

~~~~~{style=syntax}
~~~{.numberLines}
#include <iostream>
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~
~~~~~

All lines of text are numbered from 1 to 6.

~~~{.numberLines style=syntax}
#include <iostream>
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~



#### Starting Line Attribute

The *starting line* attribute is used to display the fenced code block
with line numbers starting from the specified number.

A starting line attribute is specified using the `startFrom` keyword
and specifying a number.

~~~~~{style=syntax}
~~~{.numberLines startFrom="3"}
#include <iostream>
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~
~~~~~

The code block above will be rendered as:

~~~{.numberLines startFrom="5" style=syntax}
#include <iostream>
// Main function is called here
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~



#### Escape Character Attribute

The default escape character used in code blocks is the _at_ (`@`)
symbol.
There may come a scenario when the same symbol is used inside the code
block.
To avoid, special treatment of the *at* symbol in a code block, either
define another escape character or disable the use of the escape
character by defining a blank.

````{style=syntax escapechar=$}
~~~{escapechar=!}       $\Note{Replace with exclamation character}$
The at ('@') symbol.
~~~

~~~{escapechar=}        $\Note{Declare as blank}$
The at ('@') symbol.
~~~
````



#### Style \codesecfour{Attribute}

The LaTeX template used defines custom styles for displaying fenced
code blocks. They are discussed in the following subsections.



##### Style \codesecfive{terminal}

The *terminal* style is intended to be used to display text as they
would appear in a terminal, console or operating system shell.

The following shows a command and a short command output. Commands
are sometimes highlighted by displaying them in bold text.

````{style=listing}
~~~{style=terminal}
12345678901234567890123456789012345678901234567890123456789012345678901234567890
         1         2         3         4         5         6         7         8
abcdefghijklmnopqrstuvwzyz
ABCDEFGHIJKLMNOPQRSTUVWZYZ
$ sudo pacman -Syyu         @\Note{command}@
[sudo] password for <user>:
:: Synchronizing package databases...
 core                      148.9 KiB   596K/s 00:00 [####################] 100%
 extra                    1762.9 KiB  1332K/s 00:01 [####################] 100%
 community                   5.3 MiB  1969K/s 00:03 [####################] 100%
 multilib                  183.2 KiB  2035K/s 00:00 [####################] 100%
 herecura                   58.8 KiB   114K/s 00:01 [####################] 100%
:: Starting full system upgrade...
 there is nothing to do
~~~
````

~~~{style=terminal}
12345678901234567890123456789012345678901234567890123456789012345678901234567890
         1         2         3         4         5         6         7         8
abcdefghijklmnopqrstuvwzyz
ABCDEFGHIJKLMNOPQRSTUVWZYZ
$ sudo pacman -Syyu         @\Note{command}@
[sudo] password for <user>:
:: Synchronizing package databases...
 core                      148.9 KiB   596K/s 00:00 [####################] 100%
 extra                    1762.9 KiB  1332K/s 00:01 [####################] 100%
 community                   5.3 MiB  1969K/s 00:03 [####################] 100%
 multilib                  183.2 KiB  2035K/s 00:00 [####################] 100%
 herecura                   58.8 KiB   114K/s 00:01 [####################] 100%
:: Starting full system upgrade...
 there is nothing to do
~~~




##### Style \codesecfive{syntax}

The *syntax* style is intended to be used to display command syntaxes,
command usage, and other syntactic text.

~~~{style=syntax}
12345678901234567890123456789012345678901234567890123456789012345678901234567890
         1         2         3         4         5         6         7         8
abcdefghijklmnopqrstuvwzyz
ABCDEFGHIJKLMNOPQRSTUVWZYZ
git status [<options>...] [--] [<pathspec>...]
...
OPTIONS
       -s, --short
           Give the output in the short-format.

       -b, --branch
           Show the branch and tracking info even in short-format.
...
~~~



##### Style \codesecfive{listing}

The *listing* style is intended to be used to display source code
listings.

~~~{style=listing}
12345678901234567890123456789012345678901234567890123456789012345678901234567890
         1         2         3         4         5         6         7         8
abcdefghijklmnopqrstuvwzyz
ABCDEFGHIJKLMNOPQRSTUVWZYZ
#include <iostream>
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~



##### Style \codesecfive{listingcap}

This style is intended to be used when a code block is inteded to be
captioned.
This can be achieved with the use of the _caption_ attribute.
This style displays the caption over a grayish background color and
draws a frame around the code block.

\begin{verbnobox}[\hspace{14pt}]
\begin{lstlisting}[style=listingcap,caption={This is an example of a fenced
code block using \texttt{style=listingcap}. Lorem ipsum dolor sit amet,
consectetuer adipiscing elit. Ut purus elit, vestibulum ut, placerat ac,
adipiscing vitae, felis. Curabitur dictum gravida mauris.\\

Second paragraph.}]
12345678901234567890123456789012345678901234567890123456789012345678901234567890
         1         2         3         4         5         6         7         8
#include <iostream>
int main() {
    std::cout << "Hello, world!";
    return 0;
}
\end{lstlisting}
\end{verbnobox}


Note that the caption text is enclosed between curly brackets.

The above code is rendered as:

\begin{lstlisting}[style=listingcap,caption={This is an example of a
fenced code block using \texttt{style=listingcap}. Lorem ipsum dolor
sit amet, consectetuer adipiscing elit. Ut purus elit, vestibulum ut,
placerat ac, adipiscing vitae, felis. Curabitur dictum gravida mauris.\\
Second paragraph.}]
12345678901234567890123456789012345678901234567890123456789012345678901234567890
         1         2         3         4         5         6         7         8
#include <iostream>
int main() {
    std::cout << "Hello, world!";
    return 0;
}
\end{lstlisting}

This paragraph is here only to show the amount of vertical space after
a source code listing with caption.



### Input Listing From File

Source code files can be imported and rendered as fenced code blocks
using the `lstinputlisting` command.

It may be necessary to specify the relative path to the *input file*
when it is in a sub-directory.
It is desirable to put the input listing files into its own directory.

Part of the caption text may be formatted as teletype text using the
LaTeX command `\texttt{}`.

~~~{style=syntax}
\lstinputlisting[options]{file}
~~~

\noindent Options

\begin{description}[leftmargin=5em,rightmargin=5em,labelindent=2.75em,style=sameline]
\tightlist
\item[\texttt{language}] Most general programming languages are
recognized.
A list of recognized programming languages may be found in the LaTeX
`listing.pdf` package documentation.
\item[\texttt{firstline}]
Display line numbers.
The `auto` option argument starts the line number at 1.
Specifying a number like 100 starts the line number at 100.
Using `last` option argument displays the last line number of
the source code moving up relative to a previously defined listing
using the `firstline=n`.
\item[\texttt{caption}]
The caption text.
Part of the text may be formatted as teletype text using the LaTeX
command `texttt{}`.
\end{description}

~~~{style=syntax}
\lstinputlisting[
    caption=File inclusion using \codetext{style=lstinputlisting},
    language=C++,
    style=listingcap
]{./listing/input_listing.cpp}
~~~

\lstinputlisting[caption=This is a sample file inclusion using \texttt{style=lstinputlisting}, language=C++,style=listingcap]{./listing/input_listing.cpp}



### Long Line Breaks

Long lines are broken only at whitespace characters.

The following example uses text in a single line as source code
listing to show where the lines break.

~~~{style=listing}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi
vehicula condimentum euismod. Mauris mollis semper congue. Suspendisse
maximus tincidunt mattis. Sed convallis vestibulum mattis. Vivamus
sodales et neque ac fringilla.
~~~

When the listing are long and does not contain whitespace, it can be
"forced" to break by introducing whitespaces where the line break is
desired.
Forcing a line break is possible by introducing a new line and
immitate a line break by displaying a continuation character,
`!{\textcolor{red}{$\hookrightarrow$}}!`. Note that the starting and
the ending exclamation points are escape characters.

````{style=syntax escapechar=^}
~~~{style=listing escapechar=!}
[Environment32]
DFLAGS=-I%@P%/../../src/phobos -I%@P%/../../src/druntime/import -L-L%@P%/../lib32
    !{\textcolor{red}{$\hookrightarrow$}}! -L--export-dynamic

[Environment64]
DFLAGS=-I%@P%/../../src/phobos -I%@P%/../../src/druntime/import -L-L%@P%/../lib64
    !{\textcolor{red}{$\hookrightarrow$}}! -L--export-dynamic -fPIC
~~~
````

The above will be displayed as:

~~~{style=listing escapechar=!}
[Environment32]
DFLAGS=-I%@P%/../../src/phobos -I%@P%/../../src/druntime/import -L-L%@P%/../lib32
    !{\textcolor{red}{$\hookrightarrow$}}! -L--export-dynamic

[Environment64]
DFLAGS=-I%@P%/../../src/phobos -I%@P%/../../src/druntime/import -L-L%@P%/../lib64
    !{\textcolor{red}{$\hookrightarrow$}}! -L--export-dynamic -fPIC
~~~



### Emphasizing Identifiers



#### Underlined

It is possible to _emphasize_ identifiers inside code blocks by
underlining them.
This is achieved by using the `\lstset` LaTeX command and passing the
`emph` and `emphstyle` parameters.

\lstset{emph={}, emphstyle=}
~~~{style=syntax}
\lstset{emph={main,return}, emphstyle=\underbar}
~~~

This shows how to emphasize some text in the code.
For this, we are telling it to emphasize the texts `main` and `return`
by underlining them.

~~~~~{style=syntax}
\lstset{emph={main,return}, emphstyle=\underbar}
~~~{.cpp style=syntax}
// This is a comment
#include <iostream>
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~
~~~~~

The command above is rendered as follows:

\lstset{emph={main,return}, emphstyle=\underbar}
~~~{.cpp style=syntax}
// This is a comment
#include <iostream>
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~
\lstset{emph={}, emphstyle=}

Note that `return` is not underlined.
This is because `return` is a keyword which is rendered according to the
language setting.



#### Bold Text

It is possible to _emphasize_ identifiers inside code blocks by
rendering them as bold texts.
This is achieved by using the `\lstset` LaTeX command and passing the
`emph` and `emphstyle` parameters.

\lstset{emph={}, emphstyle=}
~~~{style=syntax}
\lstset{emph={main,return}, emphstyle=\bfseries}
~~~
\lstset{emph={}, emphstyle=}

This shows how to emphasize the `main` and `iostream` texts by rendering
them as bold texts.

\lstset{emph={}, emphstyle=}
~~~~~{style=syntax}
\lstset{emph={main,iostream}, emphstyle=\bfseries}
~~~{.cpp style=syntax}
// This is a comment
#include <iostream>
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~
~~~~~
\lstset{emph={}, emphstyle=}

The command above is rendered as follows:

\lstset{emph={main,iostream}, emphstyle=\bfseries}
~~~{.cpp style=syntax}
// This is a comment
#include <iostream>
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~
\lstset{emph={}, emphstyle=}



#### Multiple Styles

It is possible to emphasize different keywords using different styles.
Take note of the `%` continuation character used at the end of the
first line of `\lstset`.

\lstset{emph={}, emphstyle=}
~~~~~{style=syntax}
\lstset{emph={main},        emphstyle=\underbar,%
        emph={[2]iostream}, emphstyle={[2]\color{red}}}
~~~{.cpp style=syntax}
// This is a comment
#include <iostream>
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~
~~~~~
\lstset{emph={}, emphstyle=}

It will be rendered as:

\lstset{emph={main},        emphstyle=\underbar,%
        emph={[2]iostream}, emphstyle={[2]\color{red}}}
~~~{.cpp style=syntax}
// This is a comment
#include <iostream>
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~
\lstset{emph={}, emphstyle=, emph={[2]}, emphstyle=}



#### Clearing Styles

It may sometimes be necessary to manually clear the styles set using
the `\lstset` command.

~~~{style=syntax}
\lstset{emph={}, emphstyle=}
~~~

For previously using multiple styles, each must be cleared.

~~~{style=syntax}
\lstset{emph={},    emphstyle=,%
        emph={[2]}, emphstyle=}
~~~



### Erasing Source Code Comments

It is possible to not display source code comments inside code blocks.
This is achieved by the following command.

\lstset{emph={}, emphstyle=, emph={[2]}, emphstyle=}
~~~{style=syntax}
\lstset{morecomment=[is]{/*}{*/}}
~~~

Here is an example code block where we specify to _erase_ the text
between the `/*` and `*/` delimiters.

\lstset{emph={}, emphstyle=}
~~~~~{style=syntax}
\lstset{morecomment=[is]{/*}{*/}}
~~~{.cpp style=syntax}
// This is a comment
#include <iostream>     /* This comment should not be rendered */
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~
~~~~~
\lstset{emph={}, emphstyle=}

It will be rendered as:

\lstset{morecomment=[is]{/*}{*/}}
~~~{style=syntax}
// This is a comment
#include <iostream>     /* This comment should not be rendered */
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~
\lstset{emph={}, emphstyle=}



### Styling Delimited Text

It is also possible to style delimited text by using the `\lstset`
LaTeX command and the `moredelim` parameter.
Note that this does not work with fenced code blocks with language
argument.

\lstset{emph={}, emphstyle=}
~~~~~{style=syntax}
\lstset{moredelim=[is][\itshape]{(*}{*)}}
~~~{style=syntax}
// This is a comment
#include <iostream>     (*This text should italicized without the delimeters*)
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~
~~~~~
\lstset{emph={}, emphstyle=}

It will be rendered as:

\lstset{moredelim=**[is][\itshape]{@<}{>@}}
~~~{style=syntax}
// This is a comment
#include <iostream>     @<This text should italicized without the delimeters>@
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~
\lstset{emph={}, emphstyle=}

There has got to be some other solutions.



### Notes Syntax

Add embelishment on a _note_ text to highlight something for the reader.
Notes can be used in terminal output and code listings using the
`@\Note{}@` command.

This feature is affected by the `escapechar` used.



#### Terminal Output Notes

Terminal output notes using `@\Note{}@` command.

````{style=terminal escapechar=$}
~~~{style=terminal}
@\Note{This is the note syntax on a terminal style listing}@
~~~
````

The code above is rendered as:

~~~{style=terminal}
@\Note{This is the note syntax on a terminal style listing}@
~~~

#### Syntax and Listing Notes

Syntax and listing notes using `@\Note{}@` command.

````{style=syntax escapechar=$}
~~~{style=syntax}
@\Note{This is the note syntax on a syntax style listing}@
~~~
````

The code above is rendered as:

~~~{style=syntax}
@\Note{This is the note syntax on a syntax style listing}@
~~~



## Block Quote

A block of text may be specified as a block quote by starting each
line of text with a greater than (`>`) character and an optional
space. The right angle bracket (`>`) character may be placed up to
three (3) spaces from the left margin. The quote block must be
between blank lines.

~~~{style=syntax}
> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut purus
> elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
> Curabitur dictum gravida mauris.
~~~

The block quote above is rendered as the following:

> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut purus
> elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
> Curabitur dictum gravida mauris.



### Nested Block Quote

Among the block elements that can be contained in a block quote are other
block quotes. That is, block quotes can be nested:

~~~{style=syntax}
> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut purus elit,
> vestibulum ut, placerat ac, adipiscing vitae, felis. Curabitur dictum gravida
> mauris.
>
> > Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut purus elit,
> > vestibulum ut, placerat ac, adipiscing vitae, felis. Curabitur dictum
> > gravida mauris.
~~~

The block quote above is rendered as the following:

> Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
> Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
> Curabitur dictum gravida mauris.
>
> > Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
> > Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
> > Curabitur dictum gravida mauris.



### Fenced Code Block Inside a Block Quote

It is possible to put a fenced code block within a block quote. The
fenced code block must align with the block quote text.

```{style=syntax}
> This is a block quote and the following fenced code block is indented.
>
> ~~~
> int main() {
>     std::cout << "Hello, world!";
>     return 0;
> }
> ~~~
```

The fenced code block will appear indented inside the block quote as
in the following output.

> This is a block quote and the following fenced code block is indented.
>
> ~~~
> int main() {
>     std::cout << "Hello, world!";
>     return 0;
> }
> ~~~



## Lists

A *list* is a sequence of one or more list items prefixed with a
*list marker* of the same type. A *list marker* could either be a
*bullet list marker* or an *ordered list marker*.

When a group of list items are prefixed with bullet list markers, the
group is an unordered list. When a group of list items are prefixed
with ordered list markers, the group is an ordered list.



### Unordered List

A list is said to be *unordered* when list items have no defined
sequence. An unordered list uses the *bullet list marker*.

A *bullet list marker* could be an asterisk (`*`), a plus (`+`) or a
hyphen (`-`) character.

An example of how to define an unordered list using an asterisk as
bullet list marker.

~~~{style=syntax}
* List item one
* List item two
* List item three
~~~



### Ordered List

A list is said to be *ordered* when list items are sequenced. An
ordered list uses the *ordered list marker*.

An *ordered list marker* may start with a sequence of arabic digits
(0-9), lowercase Latin alphabet (a-z), or lowercase roman numerals
and may be followed by either a period (`.`) or a close parenthesis
(`)`) character.

An *ordered list marker* may also start with a sequence of uppercase
Latin alphabet (A-Z) and uppercase roman numerals (I-...) but it must
be followed only by a close parenthesis (`)`) character.

An example of how to define an ordered list using arabic digits as
ordered list marker.

~~~{style=syntax}
1. List item one
2. List item two
3. List item three
~~~



### Nesting An Unordered List

A nested unordered list may be defined by indenting the inner list
by four (4) space characters. An unordered list may be nested up to
a maximum of eight levels.

~~~{style=syntax}
* An unordered list one
    - Leve one
        + Level two
            - Level three
                * Level four
                    - Level five
                        + Level six
                            * Level seven
                                - Level eight
                                - Level eight
                            * Level seven
                        + Level six
                    - Level five
                * Level four
            - Level three
        + Level two
    - Level one
* An unordered list two
~~~

The Markdown above is rendered as the following nested list.

* An unordered list one
    - Leve one
        + Level two
            - Level three
                * Level four
                    - Level five
                        + Level six
                            * Level seven
                                - Level eight
                                - Level eight
                            * Level seven
                        + Level six
                    - Level five
                * Level four
            - Level three
        + Level two
    - Level one
* An unordered list two



### Nesting An Ordered List

A nested ordered list may be defined by indenting the inner list by
four (4) space characters. The maximum nesting level is eight.

The same rules apply to nested ordered lists in using ordered list
markers.

1. Inner ordered list items may start with a sequence of arabic digits
(0-9), lowercase Latin alphabet (a-z), or lowercase roman numerals
and may be followed by either a period (`.`) or a close parenthesis
(`)`) character.

2. Inner ordered list items may start with a sequence of uppercase
Latin alphabet (A-Z) and uppercase roman numerals (I-...) but it must
be followed only by a close parenthesis (`)`) character.

~~~{style=syntax}
1. An ordered list one
    I) Level one
        i. Level two
            A) Level three
                a. Level four
                    1. Level five
                        I) Level six
                            i. Level seven
                                A) Level eight
                                B) Lorem ipsum dolor sit amet, consectetuer
                                   adipiscing elit. Ut purus elit, vestibulum
                                   ut, placerat ac, adipiscing vitae, felis.
                                   Curabitur dictum gravida mauris. Nam arcu
                                   libero, nonummy eget, consectetuer id,
                                   vulputate a, magna.
                            ii. Level seven
                        II) Level six
                    2. Level five
                b. Level four
            B) Level three
        ii. Level two
    II) Level one
2. An ordered list two
~~~

The Markdown above is rendered as the following nested list.

1. An ordered list one
    I) Level one
        i. Level two
            A) Level three
                a. Level four
                    1. Level five
                        I) Level six
                            i. Level seven
                                A) Level eight
                                B) Lorem ipsum dolor sit amet, consectetuer
                                   adipiscing elit. Ut purus elit, vestibulum
                                   ut, placerat ac, adipiscing vitae, felis.
                                   Curabitur dictum gravida mauris. Nam arcu
                                   libero, nonummy eget, consectetuer id,
                                   vulputate a, magna.
                            ii. Level seven
                        II) Level six
                    2. Level five
                b. Level four
            B) Level three
        ii. Level two
    II) Level one
2. An ordered list two



### Loose List

A *loose list* is a list whose list items are separated by blank
lines.

~~~{style=syntax}
* List item one

* List item two

* List item three

1. List item one

2. List item two

3. List item three
~~~

The Markdown above is rendered as the following lists.

* List item one

* List item two

* List item three

1. List item one

2. List item two

3. List item three



### Custom Vertical Spacing

It is possible to create a list with custom vertical spacing. But this
requires knowledge of LaTeX code.

The following is an example of creating a list in raw LaTeX.

~~~{style=syntax}
\begin{itemize}[parsep=1ex]
\item List item one
    \begin{itemize}[parsep=1ex]
    \item Nested list one
    \item Nested list two
        \begin{itemize}[parsep=1ex]
        \item More nested list one
            \begin{itemize}[parsep=1ex]
            \item Deep nested list one
            \item Deep nested list two
            \end{itemize}
        \item More nested list two
        \end{itemize}
    \item Nested list three
    \end{itemize}
\item List item two
\end{itemize}
~~~

And the following list is the output of the LaTeX code above.

\begin{itemize}[parsep=1ex]
\item List item one
    \begin{itemize}[parsep=1ex]
    \item Nested list one
    \item Nested list two
        \begin{itemize}[parsep=1ex]
        \item More nested list one
            \begin{itemize}[parsep=1ex]
            \item Deep nested list one
            \item Deep nested list two
            \end{itemize}
        \item More nested list two
        \end{itemize}
    \item Nested list three
    \end{itemize}
\item List item two
\end{itemize}



### Prevent Auto Formatting

~~~{style=syntax}
* Item 1
* Item 2  \
  Item 2.1  \
  Item 2.2
* Item 3
    * Item 3.1 \
        Item 3.1.1 \
        Item 3.1.2
~~~

* Item 1
* Item 2  \
  Item 2.1  \
  Item 2.2
* Item 3
    * Item 3.1 \
        Item 3.1.1 \
        Item 3.1.2


### List Item Block-Level Contents

Block-level contents may be defined inside a list item. It is however
not quite aesthetically pleasing with compact lists.

Each block-level content must be indented with four (4) space
characters. The block-level content must also be preceeded and
followed by at least one blank line.



#### Paragraph

A paragraph or more may be defined inside a list item.

~~~{style=syntax}
* List Item

    First paragraph in a list item. Lorem ipsum         @\Note{First paragraph}@
    dolor sit amet, consectetuer adipiscing elit.
    Ut purus elit, vestibulum ut, placerat ac,
    adipiscing vitae, felis.

    Second paragraph in a list item. Lorem ipsum        @\Note{Second paragraph}@
    dolor sit amet, consectetuer adipiscing elit.
    Ut purus elit, vestibulum ut, placerat ac,
    adipiscing vitae, felis.
~~~

The following is the output of the Markdown above.

* List Item

    First paragraph in a list item. Lorem ipsum dolor sit amet,
    consectetuer adipiscing elit. Ut purus elit, vestibulum ut,
    placerat ac, adipiscing vitae, felis.

    Second paragraph in a list item. Lorem ipsum dolor sit amet,
    consectetuer adipiscing elit. Ut purus elit, vestibulum ut,
    placerat ac, adipiscing vitae, felis.



#### Fenced Code Block

A *fenced code block* may be defined inside a list item by indenting
the block with four (4) spaces.

~~~{style=syntax}
* List Item. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
  Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.

    ~~~{style=syntax}
    #include <iostream>
    int main() {
        std::cout << "Hello world!";
        return 0;
    }
    ~~~
~~~

The following is the output of the Markdown above.

* List Item. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
  Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.

    ~~~{style=syntax}
    #include <iostream>
    int main() {
        std::cout << "Hello world!";
        return 0;
    }
    ~~~



#### Block Quote Block

A *quote block* may also be defined inside a list item by indenting
the block with four (4) spaces.

~~~{style=syntax}
* List Item. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
  Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.

    > Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut purus
    > elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
    > Curabitur dictum gravida mauris.
~~~

The following is the output of the Markdown above.

* List Item. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
  Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.

    > Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut purus
    > elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
    > Curabitur dictum gravida mauris.



### Special `@` List Marker

The special *at* (`@`) symbol list marker can be used for
sequentially numbered examples. The first list item with a `@` marker
will be numbered `1`, the next `2`, and so on, throughout the entire
document. The numbered examples need not occur within a single list.
Each new list item using the symbol will take up where the last
stopped. For example:

~~~{escapechar=! style=syntax}
(@)  First example.         !\Note{1}!
(@)  Second example.        !\Note{2}!

...                         !\Note{Any number of block-level content}!

(@)  Third example.         !\Note{3}!
~~~

The following example is how the above Markdown may be applied and
rendered.

(@)  First example.
(@)  Second example.

Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut purus
elit, vestibulum ut, placerat ac, adipiscing vitae, felis. Curabitur
dictum gravida mauris. Nam arcu libero, nonummy eget, consectetuer
id, vulputate a, magna.

1. Ordered list item one
2. Ordered list item two
3. Ordered list item three

(@)  Third example.

Numbered examples can also be "labeled" and referred to elsewhere in
the document.

~~~{escapechar=! style=syntax}
(@good) This is a good example.
(@bad) This is a bad example.

As example (@good) illustrates, ...

Careful not to do example (@bad).
~~~

The above Markdown is rendered as

(@good) This is a good example.
(@bad) This is a bad example.

As example (@good) illustrates, ...

Careful not to do example (@bad).



### Definition List

A *definition list* is a list of *terms* and their corresponding one
or more *definitions*.

Each term must be preceeded by a blank line and placed on its own
line. Definitions are placed on their own line and start with either
the colon (`:`) or the tilde (`~`) character. The markers may be
indented up to two (2) space characters only.

~~~{style=syntax}
Term 1
: First definition.
: Second definiton.

Term 2
~ First definition of the second term.
~ Second definition of the second term.
~~~

Term 1
: First definition.
: Second definiton.

Term 2
~ First definition of the second term.
~ Second definition of the second term.



#### Code Block

To create a code block within a definition list, the code block must
be indented by four spaces.

~~~{style=syntax}
Term 1
: First definition. Lorem ipsum dolor sit amet, consectetuer
adipiscing elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing
vitae, felis. Curabitur dictum gravida mauris. Nam arcu libero,
nonummy eget, consectetuer id, vulputate a, magna.

    \lstset{emph={git --version}, emphstyle=\bfseries}
    ~~~{.bash style=terminal}
    $ git --version
    git version 2.22.0
    ~~~

: Second definiton. Lorem ipsum dolor sit amet, consectetuer
adipiscing elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing
vitae, felis. Curabitur dictum gravida mauris. Nam arcu libero,
nonummy eget, consectetuer id, vulputate a, magna.
~~~

The code above is rendered as:

Term 1
: First definition. Lorem ipsum dolor sit amet, consectetuer
adipiscing elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing
vitae, felis. Curabitur dictum gravida mauris. Nam arcu libero,
nonummy eget, consectetuer id, vulputate a, magna.

    \lstset{emph={git --version}, emphstyle=\bfseries}
    ~~~{.bash style=terminal}
    $ git --version
    git version 2.22.0
    ~~~

: Second definiton. Lorem ipsum dolor sit amet, consectetuer
adipiscing elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing
vitae, felis. Curabitur dictum gravida mauris. Nam arcu libero,
nonummy eget, consectetuer id, vulputate a, magna.



#### Block Quote

To create a block quote within a definition list, the block quote must
be indented by four spaces.

The following shows an example of how to create a definition list.

~~~{style=syntax}
Term 1
: First definition. Lorem ipsum dolor sit amet, consectetuer
adipiscing elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing
vitae, felis. Curabitur dictum gravida mauris. Nam arcu libero,
nonummy eget, consectetuer id, vulputate a, magna.

    > Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut
    > purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
    > Curabitur dictum gravida mauris. Nam arcu libero, nonummy eget,
    > consectetuer id, vulputate a, magna.

: Second definiton. Lorem ipsum dolor sit amet, consectetuer
adipiscing elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing
vitae, felis. Curabitur dictum gravida mauris. Nam arcu libero,
nonummy eget, consectetuer id, vulputate a, magna.
~~~

The code above is rendered as:

Term 1
: First definition. Lorem ipsum dolor sit amet, consectetuer
adipiscing elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing
vitae, felis. Curabitur dictum gravida mauris. Nam arcu libero,
nonummy eget, consectetuer id, vulputate a, magna.

    > Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut
    > purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
    > Curabitur dictum gravida mauris. Nam arcu libero, nonummy eget,
    > consectetuer id, vulputate a, magna.

: Second definiton. Lorem ipsum dolor sit amet, consectetuer
adipiscing elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing
vitae, felis. Curabitur dictum gravida mauris. Nam arcu libero,
nonummy eget, consectetuer id, vulputate a, magna.



### Custom Indention

It is sometimes necessary or desirable to indent a *definition list*
when displaying option argument definitions.
For that, raw \LaTeX commands must be used.

The environment arguments `leftmargin` and `labelindent` are used to set
the indentions.
The code below uses 5 em or 0.691 inches for the `leftmargin` and
`rightmargin` and 0.380 inches for the `labelindent`.

~~~{style=syntax}
\begin{description}[leftmargin=5em,rightmargin=5em,labelindent=2.75em]
\item[\texttt{-x}]
\lipsum[][1-3]

This is another paragraph.
\item[\texttt{-f}]
\lipsum[][2-7]
\end{description}
~~~

The second paragraph of the first *term* precedes an empty line.

\begin{description}[leftmargin=5em,rightmargin=5em,labelindent=2.75em]
\item[\texttt{-x}]
\lipsum[][1-3]

This is another paragraph.
\item[\texttt{-f}]
\lipsum[][2-7]
\end{description}

Notice that the second *definition list* above is rendered after some vertical
space after the *description* of the first *term*.
This is the default behaviour.
If the vertical space is desired to be removed between the *terms* and
*descriptions*, the `\tightlist` command must be called after
`begin{description}`.

~~~{style=syntax}
\begin{description}[leftmargin=5em,rightmargin=5em,labelindent=2.75em]
\tightlist
\item[\texttt{-x}]
\lipsum[][1-3]

This is another paragraph.
\item[\texttt{-f}]
\lipsum[][2-7]
\end{description}
~~~

\begin{description}[leftmargin=5em,rightmargin=5em,labelindent=2.75em]
\tightlist
\item[\texttt{-x}]
\lipsum[][1-3]

This is another paragraph.
\item[\texttt{-f}]
\lipsum[][2-7]
\end{description}

Notice that the second paragraph of the first *term* follows the first
paragraph without any vertical space in between. The `\tightlist` also
removes this vertical space along with the vertical spaces between
*terms*.


### Definition List Same Line

Pandoc generates *definition list* wrapped in a *description*
environment and rendered as `\tightlist`.
To display the *term* and the *description* on the same line, the
option `style` must be set to `sameline`.

````{style=syntax escapechar=!}
\begin{description}[style=sameline]
\tightlist
\item[\texttt{-x}]
This is a paragraph.
\item[\texttt{-f}]
This is another paragraph. Let me try this longer line of sentence if
it will wrap around as intended.
\item[\texttt{-z}]
This is another paragraph. What about multiple paragraphs in one line
item?

This second paragraph should be indented.

{code here}
This is the third paragraph and should be indented too.
\end{description}
````

Note that the code and the third paragraph above is not separated by
an empty line. This may be internal to \LaTeX.

I do not know how to put the code that displays the terminal output
within the code block above. The code is displayed below.

\begin{verbnobox}[\hspace{14pt}]
\begin{lstlisting}[escapechar=@]
@\OUTb{$ git --version}@
git version 2.22.0
\end{lstlisting}
\end{verbnobox}

The output of the code snippets above is shown as follows:

\begin{description}[style=sameline]
\tightlist
\item[\texttt{-x}]
This is a paragraph.
\item[\texttt{-f}]
This is another paragraph. Let me try this longer line of sentence if
it will wrap around as intended.
\item[\texttt{-z}]
This is another paragraph. What about multiple paragraphs in one line
item?

This second paragraph should be indented.

\begin{lstlisting}[escapechar=@]
@\OUTb{\$ git --version}@
git version 2.22.0
\end{lstlisting}
This is the third paragraph and should be indented too.
\end{description}




## Alerts

_Alerts_ are a *Markdown* extension that can be used to emphasize
certain type of information.

~~~{style=syntax}
\begin{inote}[NOTE]
\lipsum[][1-3]
\end{inote}

\begin{itip}[TIP]
\lipsum[][1-3]
\end{itip}

\begin{iimportant}[IMPORTANT]
\lipsum[][1-3]
\end{iimportant}

\begin{iwarning}[WARNING]
\lipsum[][1-3]
\end{iwarning}

\begin{icaution}[CAUTION]
\lipsum[][1-3]
\end{icaution}
~~~

\begin{inote}[NOTE]
\lipsum[][1-3]
\end{inote}

\begin{itip}[TIP]
\lipsum[][1-3]
\end{itip}

\begin{iimportant}[IMPORTANT]
\lipsum[][1-3]
\end{iimportant}

\begin{iwarning}[WARNING]
\lipsum[][1-3]
\end{iwarning}

\begin{icaution}[CAUTION]
\lipsum[][1-3]
\end{icaution}



## Images



### Single Image



#### Display Centered Image

To be able to display an image that is centered horizontally, it is necessary to
provide a caption.
This requirement is now necessary when using _Pandoc_ 3.1.11.

~~~{style=syntax}
![Centering requires a caption.](alice.jpeg){width=25%}
~~~

![Centering requires a caption.](alice.jpeg){width=25%}



#### Display Centered Image with Width Setting.

~~~{style=syntax}
![Image with width set to 175px.](alice.jpeg){width=175px}
~~~

![Image with width set to 175px.](alice.jpeg){width=175px}



### Two Images

Using _markdown_ to display two images side by side is not handled well
by _Pandoc_.
This is therefore a workaround using embedded _LaTeX_ within the
markdown file.

~~~{style=syntax}
\begin{figure}[h]
\includegraphics[width=2in]{alice.jpeg}
\space
\includegraphics[width=2in]{alice.jpeg}
\centering
\end{figure}
~~~

\begin{figure}[h]
\includegraphics[width=2in]{alice.jpeg}
\qquad
\includegraphics[width=2in]{alice.jpeg}
\centering
\end{figure}


\noindent __Other references__

* [https://tex.stackexchange.com/questions/246537/side-by-side-images-in-latex](https://tex.stackexchange.com/questions/246537/side-by-side-images-in-latex)
* [https://tex.stackexchange.com/questions/37581/latex-figures-side-by-side](https://tex.stackexchange.com/questions/37581/latex-figures-side-by-side)


## Footnote

A _footnote_ is text at the bottom of the page identified with a
_footnote mark_,
A footnote mark is numbered sequentially.
A new page resets the footnote mark numbering.

A _footnote_ is defined by creating a _footnote label_ and a
corresponding _footnote content_.

A footnote label starts with a caret (`^`) symbol followed by a number
or text that does not contain whitespace characters.
Text footnote labels are converted into a number and is ordered
automatically.
A footnote label is enclosed in square brackets (`[]`).
A footnote label at the end of a sentence always appears after the
punctuation mark.

A footnote content starts with a footnote label followed by a colon
(`:`) character, a space, and the text.
Footnote contents are placed on its own line.
Footnote contents should contain more than just a URL.

~~~{style=syntax}
First footnote.[^1]
Text footnote label.[^fnlabel]

[^1]: This is the footnote content.
[^fnlabel]: This is a footnote.
~~~

It is possible to use multiple footnotes but the footnote label
separator is not rendered properly.



### Long Footnote Content

This is how to format a long footnote content that have two paragraphs.

~~~{style=syntax}
This is a long footnote with multiple paragraphs.[^longnote_multipar]

[^longnote_multipar]:
    Long note with subsequent paragraphs.
    Subsequent paragraphs are indented following a blank line to show
    that they belong to the previous footnote.

    This is the second paragraph for this footnote.
    Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
    Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
~~~

This is a long footnote with multiple paragraphs.[^longnote_multipar]

[^longnote_multipar]:
    Long note with subsequent paragraphs.
    Subsequent paragraphs are indented following a blank line to show
    that they belong to the previous footnote.

    This is the second paragraph for this footnote.
    Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
    Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.



### Multiple Footnote References

Multiple footnote references is possible by putting the footnote markers
consecutively.

~~~{style=syntax}
This is for the second and third footnotes.[^second_footnote]
[^third_footnote]               @\Note{can be continued in a new line}@


[^second_footnote]: This is the second footnote.
[^third_footnote]: Showing mutiple footnotes.
~~~

This is for the second and third footnotes.[^second_footnote]
[^third_footnote]

[^second_footnote]: This is the second footnote.
[^third_footnote]: Showing mutiple footnotes.



### Inline Footnotes

Footnotes can also be defined inline. Inline footnote starts with the
caret (`^`) symbol followed by the footnote content wrapped in square
brackets.

~~~{style=syntax}
This is an inline footnote.^[Lorem ipsum dolor sit amet, consectetur
adipiscing elit.]
~~~

This is an inline footnote.^[Lorem ipsum dolor sit amet, consectetur
adipiscing elit.]



### Forcing a Newline

Sometimes it is desirable or even necessary to format a footnote text
by putting some text on a separate line.
This can be achieved by using the backslash character (`\`).

~~~{style=syntax}
[^newline_footnote]:
    This is the footnotes first line.\
    This is the second line for this footnote.
~~~

See the result.[^newline_footnote]

[^newline_footnote]:
    This is the footnote's first line.\
    This is the second line for this footnote.



### Inline Code

Inline code within a footnote text is rendered using `\texttt{}`.`

~~~{style=syntax}
This is an inline footnote.^[Lorem ipsum dolor sit amet, \texttt{consectetur}
adipiscing elit.]
~~~



### Table Footnotes

Put footnote markers inside the table and display footnote texts at the
bottom of the table.

~~~{style=syntax}
\begin{center}
\captionof{table}{Server hardware options summary}
\begin{threeparttable}[t]
\centering
    \begin{tabular}{ l l p{8cm} }
    \toprule
    {\textbf{Category}} & {\textbf{Description}} \\
    \midrule
    Processor          & Intel Xeon Intel Xeon Silver 4210R \\
    Memory             & 128GB RDIMM 2666MT/s \\
    Storage Controller & Onboard SATA/SAS RAID Controller \\
    Hard Disks         & 2 x 1TB 7.2K RPM SATA 6Gbps 512n 2.5in Hot-plug \\
    Network Controller & 1Gb LOM (LAN on motherboard) \\
    Power Supply       & Redundant Hot-Swap Power Supply\tnote{1} \\
    Form Factor        & Tower (rack-mountable)\tnote{2} \\
    \bottomrule
    \end{tabular}
    \begin{tablenotes}
        \small
        \item[1] Total wattage is dependent on system components.
        \item[2] Tower servers are quieter than their rack equivalents.
    \end{tablenotes}
\end{threeparttable}
\end{center}
~~~

\begin{center}
\captionof{table}{Server hardware options summary}
\begin{threeparttable}[t]
\centering
    \begin{tabular}{ l l p{8cm} }
    \toprule
    {\textbf{Category}} & {\textbf{Description}} \\
    \midrule
    Processor          & Intel Xeon Intel Xeon Silver 4210R \\
    Memory             & 128GB RDIMM 2666MT/s \\
    Storage Controller & Onboard SATA/SAS RAID Controller \\
    Hard Disks         & 2 x 1TB 7.2K RPM SATA 6Gbps 512n 2.5in Hot-plug \\
    Network Controller & 1Gb LOM (LAN on motherboard) \\
    Power Supply       & Redundant Hot-Swap Power Supply\tnote{1} \\
    Form Factor        & Tower (rack-mountable)\tnote{2} \\
    \bottomrule
    \end{tabular}
    \begin{tablenotes}
        \small
        \item[1] Total wattage is dependent on system components.
        \item[2] Tower servers are quieter than their rack equivalents.
    \end{tablenotes}
\end{threeparttable}
\end{center}



### LaTeX FootNote Code

Sometimes formatting uses native LaTeX code wherein Markdown code is
not possible to use.
Here is an example of defining footnotes within a description list:

~~~{style=syntax}
\begin{description}[leftmargin=0.75in,labelindent=0.5in]
\item[One]
    Lorem ipsum\footnote{This is a footnote inside a description list}
    dolor sit amet, consectetuer adipiscing elit.
    Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
\item[Two]
    Lorem ipsum\footnote{Here is another footnote inside this description list}
    dolor sit amet, consectetuer adipiscing elit.
    Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
\end{description}
~~~

\begin{description}[leftmargin=0.75in,labelindent=0.5in]
\item[One]
    Lorem ipsum\footnote{This is a footnote inside a description list}
    dolor sit amet, consectetuer adipiscing elit.
    Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
\item[Two]
    Lorem ipsum\footnote{Here is another footnote inside this description list}
    dolor sit amet, consectetuer adipiscing elit.
    Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
\end{description}



## Text Formatting


### Normal, Bold, and Italics in Raw \LaTeX

Use `\textbf{}` and `\textit{}` for short chunks.

Use `\bfseries`, `\itshape`, and `\normalfont` inside {...} groups for
longer sections or switches.



### Bold and Italics in Markdown

Texts can be rendered as italics by enclosing the text between a single
asterisk (`*`) or underscore (`_`).

~~~{style=syntax}
This text will render the word *italic* as an _italic_ text.
~~~

This text will render the word *italic* as an _italic_ text.

Texts can be rendered as bold by enclosing the text between two
consecutive asterisks (`**`) or underscores (`__`).

~~~{style=syntax}
This text will render the word **bold** as a __bold__ text.
~~~

This text will render the word **bold** as a __bold__ text.



### Subscripts and Superscripts

Subscripts and superscripts are written using the caret (`^`) and the
underscore (`_`) symbols.

~~~{style=syntax}
Text^superscript
Text_subscript
~~~

Subscripts and superscripts are most commonly used in mathematical
equations.
This inline equation $a^{2} + b^{2} = c^{2}$ is written as:

~~~{style=syntax}
This inline equation $a^{2} + b^{2} = c^{2}$ is written as:
~~~



### Raw \LaTeX

Raw \LaTeX can be written as the following:

~~~{style=syntax}
\begin{equation}
$$$$ f(x) = \sum_{i=0}^{n} \frac{a_i}{1+x}
\end{equation}
~~~

and will be rendered as

\begin{equation}
$$$$ f(x) = \sum_{i=0}^{n} \frac{a_i}{1+x}
\end{equation}

An equation can be written inline as:

~~~{style=syntax}
This is an inline equation
$f(x) = \sum_{i=0}^{n} \frac{a_i}{1+x}$.
~~~

This is an inline equation
$f(x) = \sum_{i=0}^{n} \frac{a_i}{1+x}$.




### Special Characters

~~~{style=syntax}
\textregistered
\texttrademark
\TeX
\LaTeX
~~~



### Space

A space can be added by using `\space`.



### Double Hyphens

Double hyphens are called TeX-Ligatures that are converted to _endash_.
To break this, the hyphens need to be separated by an open and close
parenthesis (`-{}-`)[^two_hyphens].

[^two_hyphens]: https://tex.stackexchange.com/a/9814/192244



### Page Break

Add a page break by using `\pagebreak`.
All contents after the `\pagebreak` will go to the next page.

Sometimes `\cleardoublepage` is necessary to remove vertical space on
the new page.



### Inline Code

Inline code may be rendered using raw LaTeX code using `\texttt`.

~~~{style=syntax}
This is an example of a paragraph containing \texttt{inline code}.
~~~

This is an example of a paragraph containing \texttt{inline code}.



### Indenting a Text Block

Blocks of text may be indented using `\begin{addmargin}` and
`\end{addmargin}`.

~~~{style=syntax}
\begin{addmargin}[3em]{3em}% 3em left, 3em right
\lipsum[][1-5]
\end{addmargin}
~~~

\begin{addmargin}[3em]{3em}% 3em left, 3em right
\lipsum[][1-5]
\end{addmargin}


See also section [Definition List: Custom Indention][Custom Indention].



### Unindenting a Text Block

A block of text may be unindented using `\noindent`.



### Same Line Left and Right Texts


From _[https://tex.stackexchange.com/questions/294150/left-and-right-aligned-on-same-line](https://tex.stackexchange.com/questions/294150/left-and-right-aligned-on-same-line)_.

~~~{style=syntax}
\noindent\textbf{\underline{Student:}}
\hfill
\textbf{\underline{Supervisor:}} \
Mr. Thatshisname
\hfill
Prof. Whatshisname
\mbox{}\hfill{lone line}
~~~

Note that the code above uses `\noindent` since the document indents
succeeding paragraphs of sections.

\
\noindent\textbf{\underline{Student:}}
\hfill
\textbf{\underline{Supervisor:}} \
Mr. Thatshisname
\hfill
Prof. Whatshisname \
\mbox{}\hfill{lone line} \

The following is a variation of the code above where the texts at the
right are left-aligned.

~~~{style=syntax}
\begin{minipage}{2in}
\flushleft\textbf{\underline{Student:}} \\
Mr. Thatshisname
\end{minipage}
\hfill
\begin{minipage}{1.3in}
\textbf{\underline{Supervisor:}} \\
Prof. Whatshisname
\end{minipage}
~~~

Note that the code uses `\flushleft` to _unindent_ the `minipage`.

\
\flushleft\begin{minipage}{2in}
\textbf{\underline{Student:}} \\
Mr. Thatshisname
\end{minipage}
\hfill
\begin{minipage}{1.3in}
\textbf{\underline{Supervisor:}} \\
Prof. Whatshisname
\end{minipage}



# Panda

_TODO_

