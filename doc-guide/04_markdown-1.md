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
Section headings must start with the hash (`#`) character followed by a
space and the section title text.
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
`{.unlisted}` at the end of the section heading text.

Section headings may be displayed unnumbered in the table of contents
by adding `{.unnumbered}` at the en dof hte section heading text.

Section headings may also have _anchors_ so it can be referenced in the
document from elsewhere. An anchor is specified as
`{#unique_anchor_name}` where _unique_anchor_name_ is a unique label
across the entire document.

These may be combined and applied to a section heading.



~~~{style=syntax}
# Preface {.unnumbered}
## About This Document {.unnumbered .unlisted #preface_about_doc}
~~~


### Vertical Space Before First Chapter (Deprecated)

The chapter style moves the first chapter name lower than it should.
The first chapter should be at the top of the page.
To do this, the command `\vspace*{-7ex}` must be executed before the
first chapter.
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

Lorem ipsum dolor sit amet, consectetur adipiscing elit. In diam arcu, molestie nec
rhoncus non, tincidunt vel metus. Lorem ipsum dolor sit amet, consectetur adipiscing
elit. Fusce dictum magna eu nisl eleifend tincidunt id sed diam. Etiam scelerisque
condimentum mauris.

Phasellus condimentum odio sapien, non scelerisque lorem sagittis at. In pellentesque
velit in elementum malesuada. Praesent semper quam nibh, in tincidunt mi sollicitudin
vel. Phasellus ligula felis, tempor eu metus sit amet, mollis efficitur diam.
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

Enabled by passing _Pandoc markdown_ extension `multiline_tables`.
The following description and explanation of _multi-line tables_ is
taken from Pandoc 2.18 documentation.

Multiline tables allow header and table rows to span multiple lines of
text (but cells that span multiple columns or rows of the table are not
supported). Here is an example:

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

+---------------+---------------+--------------------+
| Fruit         | Price         | Advantages         |
+===============+===============+====================+
| Bananas       | $1.34         | - built-in wrapper |
|               |               | - bright color     |
+---------------+---------------+--------------------+
| Oranges       | $2.10         | - cures scurvy     |
|               |               | - tasty            |
+---------------+---------------+--------------------+
~~~

: Sample grid table.

+---------------+---------------+--------------------+
| Fruit         | Price         | Advantages         |
+===============+===============+====================+
| Bananas       | $1.34         | - built-in wrapper |
|               |               | - bright color     |
+---------------+---------------+--------------------+
| Oranges       | $2.10         | - cures scurvy     |
|               |               | - tasty            |
+---------------+---------------+--------------------+

The row of `=`s separates the table header from the table body, and can
be omitted for a headerless table.
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
