# Formatting

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
chapters, sections, subsections, etc. Except when a section headings
appear at the start of the file, section headings must be preceeded
and followed by one or more blank lines. It must start with one to
six hash (`#`) characters, a space character, and followed by the
section title text.

~~~{style=syntax}
# Chapter Heading 1

## Section Heading

### Subsection Heading

# Chapter Heading 2
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

A *table* is a columnar display of data in multiple rows. A table
have a header row which displays the column names, a delimiter row,
and the data rows.

~~~{style=syntax}
|          |          |          |      @\Note{header row}@
|----------|----------|----------|      @\Note{delimiter row}@
|          |          |          |      @\Note{data row}@
|          |          |          |      @\Note{data row}@
~~~



### Column Content Alignment

Column alignment is specified using the colon (`:`) character in the
delimiter row. A column is left-aligned by default or may be
explicitly specifyied with a leading colon (`:---`). A column is made
right-aligned by specifying a trailing colon (`---:`). To combine the
two (`:--:`) means to center the display of the column content.

The following example illustrates the syntax. The header row contains
a bit longer column names to easily notice the aligments of the
column contents.

~~~{style=syntax}
| Centered Content | Left-aligned | Right-aligned |
|:----------------:|:-------------|--------------:|
| name 1           | 0.05         | 4.50          |
| name 2           | 1.95         | 11.15         |
~~~

The Markdown source above is rendered as the following table.

| Centered content | Left-aligned | Right-aligned |
|:----------------:|:-------------|--------------:|
| name 1           | 0.05         | 4.50          |
| name 2           | 1.95         | 11.15         |



## Code Block

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

In addition to the original markdown indented *code block*, a
*fenced code block* is a block of text between a pair of "fence
lines". The fence lines start and end with at least three tilde
(`~`) characters. All texts inside the fence lines are treated as
verbatim text.

The following shows how to define a fenced code block.

~~~~~{style=syntax}
~~~    @\Note{fence}@
...
~~~    @\Note{fence}@
~~~~~

For consistency, *fenced code blocks* are surrounded by blank lines.

It is better to use a backtick (`` ` ``) characters as fence lines
when wrapping a fenced code block that uses the tilde (`~`)
characters. It may be best to show this as an example.

~~~~~{style=syntax}
```     @\Note{fence using 3 the backtick characters}@
~~~     @\Note{start of the fenced code block to be displayed}@
...     @\Note{contents}@
~~~     @\Note{end of the fenced code block to be displayed}@
```     @\Note{fence}@
~~~~~

In fact, the markdown source of this document uses the
backtick-wrapped fenced code blocks to display fenced code blocks
that uses the tilde character.



### Fenced Code Block Attributes

Using fenced code blocks allows the declaration of *attributes*. These
attributes provide additional capabilities on how to display verbatim
texts.

Attributes are enclosed between curly braces right after the opening
fence.

~~~~~{style=syntax}
~~~{@\LSTi{attribute\textsubscript{1}} \LSTi{attribute\textsubscript{2}} \LSTi{...}@ @\LSTi{attribute\textsubscript{n}}@}
...
~~~
~~~~~

Attributes may be declared in multiple lines.

`````{style=syntax}
~~~{
@\LSTi{attribute\textsubscript{1}}@
@\LSTi{attribute\textsubscript{2}}@
@\LSTi{...}@
@\LSTi{attribute\textsubscript{n}}@
}
...
~~~
`````

The following subsections discuss the attributes that are commonly
used. Fenced code block attributes are discussed in detail in the
*listings* package.



#### Language Attribute

LaTeX recognizes a set of pre-defined programming language identifiers
that is usually used for formatting and coloring *keywords*,
*comments*, and *strings*. The language attribute is specified as
`.language`.

The following shows how to display the code block as a
C++ programming language text.

~~~~~{style=syntax}
~~~{.cpp}
// This is a comment
#include <iostream>
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~
~~~~~

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



#### Number Lines Attribute

Fenced code blocks may be decorated with number lines. Number lines
are useful when referencing specific lines of text.

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

~~~{.numberLines startFrom="3" style=syntax}
#include <iostream>
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~



#### Escape Character Attribute

The default escape character used in code blocks is the *at*
(`@`) symbol. There may come a scenario when the same symbol is used
inside the code block. To avoid, special treatment of the *at* symbol in
a code block, either define another escape character or disable the
use of the escape character by defining a blank.

````{style=syntax escapechar=$}
~~~{escapechar=!}       $\Note{Replace with exclamation character}$
The at ('@') symbol.
~~~

~~~{escapechar=}        $\Note{Declare empty}$
The at ('@') symbol.
~~~
````



#### Long Line Breaks

Long lines are broken only at whitespace characters.

The following example uses text in a single line as source code
listing to show where the lines break.

~~~{style=listing}
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vehicula condimentum euismod. Mauris mollis semper congue. Suspendisse maximus tincidunt mattis. Sed convallis vestibulum mattis. Vivamus sodales et neque ac fringilla.
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


#### Style Attribute

The LaTeX template used defines custom styles for displaying fenced
code blocks. They are discussed in the following subsections.



##### style=terminal

The *terminal* style is intended to be used to display text as they
would appear in a terminal, console or operating system shell.

The following shows a command and a short command output. Commands
are sometimes highlighted by displaying them in bold text.

~~~{style=terminal}
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



##### style=syntax

The *syntax* style is intended to be used to display command syntaxes,
command usage, and other syntactic text.

~~~{style=syntax}
git status [<options>...] [--] [<pathspec>...]
...
OPTIONS
       -s, --short
           Give the output in the short-format.

       -b, --branch
           Show the branch and tracking info even in short-format.
...
~~~



##### style=listing

The *listing* style is intended to be used to display source code
listings.

~~~{style=listing}
#include <iostream>
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~



##### style=lines

This style is intended to be used with the *caption* attribute and
combined with other styles. It draws lines at the top and bottom of
the code block.

~~~{style=listing style=lines
caption="This is an example of a fenced code block using
\texttt{style=lines}. Lorem ipsum dolor sit amet, consectetuer
adipiscing elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing
vitae, felis. Curabitur dictum gravida mauris."
label=fenced_code_block_sample
}
#include <iostream>
int main() {
    std::cout << "Hello, world!";
    return 0;
}
~~~



### Special Syntax

#### Notes or Comments

````{style=syntax escapechar=$}
~~~{style=terminal}
@\Note{comment/note text here}@     $\Note{This is the note syntax}$
~~~
````



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
> Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut purus elit, vestibulum
> ut, placerat ac, adipiscing vitae, felis. Curabitur dictum gravida mauris.
>
> > Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut purus elit,
> > vestibulum ut, placerat ac, adipiscing vitae, felis. Curabitur dictum gravida
> > mauris.
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
> This is a block quote and the following is a code block indented
> with five spaces.
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

> This is a block quote and the following code block is indented with five
> spaces.
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
                                   Curabitur dictum gravida mauris. Nam arcu libero,
                                   nonummy eget, consectetuer id, vulputate a, magna.
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
                                   Curabitur dictum gravida mauris. Nam arcu libero,
                                   nonummy eget, consectetuer id, vulputate a, magna.
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



### Custom List Spacing

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



### List Item Block-Level Contents

Block-level contents may be defined inside a list item. It is however
not quite aesthetically pleasing with compact lists.

Each block-level content must be indented with four (4) space
characters. The block-level content must also be preceeded and
followed by at least one blank line.



#### Paragraph

A paragraph may be defined inside a list item. Aside from the whole
paragraph block being indented with four space characters, it is also
allowed to indent only the first line of the paragraph.

~~~{style=syntax}
* List Item

    First paragraph in a list item. Lorem ipsum         @\Note{Indented first line}@
dolor sit amet, consectetuer adipiscing elit. Ut
purus elit, vestibulum ut, placerat ac, adipiscing
vitae, felis.

    Second paragraph in a list item. Lorem ipsum        @\Note{Indented block}@
    dolor sit amet, consectetuer adipiscing elit.
    Ut purus elit, vestibulum ut, placerat ac,
    adipiscing vitae, felis.
~~~

The following is the output of the Markdown above.

* List Item

    First paragraph in a list item. Lorem ipsum dolor sit amet,
consectetuer adipiscing elit. Ut purus elit, vestibulum ut, placerat
ac, adipiscing vitae, felis.

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

    > Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut purus elit,
    > vestibulum ut, placerat ac, adipiscing vitae, felis. Curabitur dictum gravida
    > mauris.
~~~

The following is the output of the Markdown above.

* List Item. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.

    > Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut purus elit,
    > vestibulum ut, placerat ac, adipiscing vitae, felis. Curabitur dictum gravida
    > mauris.



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



#### Code Block

To create a code block within a definition list, the code block must
be indented by four spaces.

~~~{style=syntax}
Term 1
: First definition. Lorem ipsum dolor sit amet, consectetuer
adipiscing elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing
vitae, felis. Curabitur dictum gravida mauris. Nam arcu libero,
nonummy eget, consectetuer id, vulputate a, magna.

    ~~~{.bash style=terminal}
    $ @\CMDb{git --version}@
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

    ~~~{.bash style=terminal}
    $ @\CMDb{git --version}@
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



## Footnote

A *footnote* is defined by creating a *footnote label* and a
corresponding *footnote content*.

A footnote label starts with a caret (`^`) symbol followed by a
number or text that does not contain whitespace characters. A
footnote label is enclosed in square brackets (`[]`).

A footnote content starts with a footnote label enclosed in square
brackets, followed by a colon (`:`) character, a space, and the text.
Footnote contents are placed on its own line.

~~~{style=syntax}
First footnote.[^1]

[^1]: This is the footnote content.
~~~

Text footnote labels are converted into a number and is ordered
automatically.

~~~{style=syntax}
Text footnote label.[^fnlabel]

[^fnlabel]: This is a footnote.
~~~



### Long Footnote Content

This is how to format a long footnote content that have two
paragraphs.

~~~
Long footnote, multiple paragraph.[^longnote_multiparagraph]
Second footnote.[^second_footnote]
Third footnote.[^third_footnote]

[^longnote_multiparagraph]:
    Long note with subsequent paragraphs. Subsequent paragraphs are indented
    following a blank line to show that they belong to the previous footnote.

    This is the second paragraph for this footnote. Lorem ipsum dolor sit amet,
    consectetuer adipiscing elit. Ut purus elit, vestibulum ut, placerat ac,
    adipiscing vitae, felis. Curabitur dictum gravida mauris. Nam arcu libero,
    nonummy eget, consectetuer id, vulputate a, magna.
[^second_footnote]: This is the second footnote.
[^third_footnote]: This is the third footnote.
~~~

The Markdown paragraph above is rendered in the following paragraph
and the corresponding footnote is at the bottom of this page.

Long footnote, multiple paragraph.[^longnote_multiparagraph]
Second footnote.[^second_footnote]
Third footnote.[^third_footnote]

[^longnote_multiparagraph]:
    Long note with subsequent paragraphs. Subsequent
    paragraphs are indented following a blank line to show that they
    belong to the previous footnote.

    This is the second paragraph for this footnote. Lorem ipsum dolor sit amet,
    consectetuer adipiscing elit. Ut purus elit, vestibulum ut, placerat ac,
    adipiscing vitae, felis. Curabitur dictum gravida mauris. Nam arcu libero,
    nonummy eget, consectetuer id, vulputate a, magna.
[^second_footnote]: This is the second footnote.
[^third_footnote]: This is the third footnote.


### Inline Footnotes

Footnotes can also be defined inline. Inline footnote starts with the
caret (`^`) symbol followed by the footnote content wrapped in square
brackets.

~~~{style=syntax}
This is an inline footnote.^[Lorem ipsum dolor sit amet, consectetur
adipiscing elit.]
~~~



## Text Formatting

### Bold

### Italics

### Subscripts and Superscripts

### Special Characters

