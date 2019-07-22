# Markdown

Markdown[^markdown] is an open format[^markdown-license], simple plain text formatting syntax designed to be easy to read and write.
The Markdown language was created by John Gruber[^john-gruber] in collaboration with Aaron Swartz on the formatting syntax[^aaron-swartz]. The name Markdown has become an umblrella term for other variants like MultiMarkdown[^multimarkdown], CommonMark[^commonmark] and GitHub Flavored Markdown[^gfm].

[^markdown]: Daring Fireball: Markdown [https://web.archive.org/web/20190611162426/https://daringfireball.net/projects/markdown/](https://web.archive.org/web/20190611162426/https://daringfireball.net/projects/markdown/). Archived from the original [http://daringfireball.net/projects/markdown/](http://daringfireball.net/projects/markdown/) on 2019-06-11. Retrieved 2019-07-04.

[^markdown-license]: Markdown License: [https://daringfireball.net/projects/markdown/license](https://daringfireball.net/projects/markdown/license). Daring Fireball. Retrieved 2019-07-04.

[^john-gruber]:  John Gruber [https://en.wikipedia.org/wiki/John_Gruber](https://en.wikipedia.org/wiki/John_Gruber).

[^aaron-swartz]: Aaron Swartz [https://en.wikipedia.org/wiki/Aaron_Swartz](https://en.wikipedia.org/wiki/Aaron_Swartz). Aaron Swartz: Weblog [https://web.archive.org/web/20190601023329/http://www.aaronsw.com/weblog/001189](https://web.archive.org/web/20190601023329/http://www.aaronsw.com/weblog/001189). Archived from the original [http://www.aaronsw.com/weblog/001189](http://www.aaronsw.com/weblog/001189) on 2019-06-01. Retrieved Retrieved 2019-07-04.

[^multimarkdown]: MultiMarkdown [https://en.wikipedia.org/wiki/MultiMarkdown](https://en.wikipedia.org/wiki/MultiMarkdown).

[^commonmark]: CommonMark [https://commonmark.org/](https://commonmark.org/).

[^gfm]: GitHub Flavored Markdown [https://github.github.com/gfm/](https://github.github.com/gfm/).



## Paragraph

To continue a paragraph after a fenced code block or a list, use `\noindent`
at the beginning of the text. The command instructs the `LaTeX` engine not
to indent the text.

~~~
\noindent Paragraph continuation...
~~~

## Quote Block

A block of text may be specified as a quote block by starting each line of text with a greater than (`>`) character and an optional space.
The greater than (`>`) character may be placed up to three (3) spaces from the left margin.
There must be a blank line after the end of the block of text.

~~~
> This is a block quote.
> Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
> Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
> Curabitur dictum gravida mauris.
~~~

> This is a block quote.
> Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
> Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
> Curabitur dictum gravida mauris.

Among the block elements that can be contained in a block quote are other
block quotes. That is, block quotes can be nested:

    > This is a block quote.
    > Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
    > Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
    > Curabitur dictum gravida mauris.
    >
    > > A block quote within a block quote.
    > > Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
    > > Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
    > > Curabitur dictum gravida mauris.

> This is a block quote.
> Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
> Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
> Curabitur dictum gravida mauris.
>
> > A block quote within a block quote.
> > Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
> > Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
> > Curabitur dictum gravida mauris.

If the `>` character is followed by an optional space, that space will be
considered part of the block quote marker and not part of the indentation
of the contents.  Thus, to put an indented code block in a block quote,
you need five spaces after the `>` like the following:

~~~
> This is a block quote and the following is a code block indented
> with five spaces.
>
>     int main() {
>         std::cout << "Hello world!\n";
>         return 0;
>     }
~~~

> This is a block quote and the following code block is indented with five
> spaces.
>
>     int main() {
>         std::cout << "Hello world!\n";
>         return 0;
>     }

## Lists

Lists are created using an asterisk (`*`), a plus (`+`) or a hyphen (`-`)
at the beginning of a list item. Lists may be nested by indenting the inner
lists using four (4) spaces.

~~~
* List item one
    * Nested list one
    * Nested list two
* List item two
    - Nested list one
    - Nested list two
        - More nested list one
        - More nested list two
            - Third nested list one
            - Third nested list two
    - Nested list three
~~~

The markdown above will produce the following "compact" list.

* List item one
    * Nested list one
    * Nested list two
* List item two
    - Nested list one
    - Nested list two
        - More nested list one
        - More nested list two
            - Third nested list one
            - Third nested list two
    - Nested list three

If a "loose" list is desired, follow each list item with a blank line.

* one

* two

* three

### List Item ###

A list item may contain multiple paragraphs and other block-level content.
However, subsequent paragraphs must be preceded by a blank line and indented
four (4) spaces. A _code block_ may be displayed under a list item as a
_fenced code block_ which must also be preceded by a blank line, indented
four (4) spaces.

~~~
* First paragraph. Lorem ipsum dolor sit amet, consectetuer adipiscing
elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
Curabitur dictum gravida mauris. Nam arcu libero, nonummy eget,
consectetuer id, vulputate a, magna.

    Second paragraph. Lorem ipsum dolor sit amet, consectetuer adipiscing
    elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae,
    felis. Curabitur dictum gravida mauris. Nam arcu libero, nonummy
    eget, consectetuer id, vulputate a, magna.

* Second item paragraph with a code block. Lorem ipsum dolor sit amet,
consectetuer adipiscing elit. Ut purus elit, vestibulum ut, placerat ac,
adipiscing vitae, felis. Curabitur dictum gravida mauris. Nam arcu
libero, nonummy eget, consectetuer id, vulputate a, magna.

    ~~~
    Put your source code here
    ...
    ~~~
~~~

The following is a sample output of the markdown code above.

* First paragraph. Lorem ipsum dolor sit amet, consectetuer adipiscing
elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.
Curabitur dictum gravida mauris. Nam arcu libero, nonummy eget, consectetuer
id, vulputate a, magna.

    Second paragraph. Lorem ipsum dolor sit amet, consectetuer adipiscing
    elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae,
    felis. Curabitur dictum gravida mauris. Nam arcu libero, nonummy eget,
    consectetuer id, vulputate a, magna.

* Second item paragraph with a code block. Lorem ipsum dolor sit amet,
consectetuer adipiscing elit. Ut purus elit, vestibulum ut, placerat ac,
adipiscing vitae, felis. Curabitur dictum gravida mauris. Nam arcu libero,
nonummy eget, consectetuer id, vulputate a, magna.

    ~~~
    #include <iostream>
    int main() {
        std::cout << "Hello world!";
        return 0;
    }
    ~~~

As noted above, Markdown allows you to write list items "lazily," instead
of indenting continuation lines. However, if there are multiple paragraphs
or other blocks in a list item, the first line of each must be indented.

    + A lazy, lazy, list
    item.

    + Another one; this looks
    bad but is legal.

        Second paragraph of second
    list item.

**Note:**  Although the four-space rule for continuation paragraphs
comes from the official [Markdown syntax guide], the reference
implementation, `Markdown.pl`, does not follow it. So pandoc will give
different results than `Markdown.pl` when authors have indented
continuation paragraphs fewer than four spaces.

The [Markdown syntax guide] is not explicit whether the four-space
rule applies to *all* block-level content in a list item; it only
mentions paragraphs and code blocks. But it implies that the rule
applies to all block-level content (including nested lists), and
pandoc interprets it that way.

[Markdown syntax guide]: http://daringfireball.net/projects/markdown/syntax#list

## Numbered List

The special list marker `@` can be used for sequentially numbered
examples. The first list item with a `@` marker will be numbered '1',
the next '2', and so on, throughout the document. The numbered examples
need not occur in a single list; each new list using `@` will take up
where the last stopped. So, for example:

(@)  My first example will be numbered (1).
(@)  My second example will be numbered (2).

Explanation of examples.

(@)  My third example will be numbered (3).


Numbered examples can be labeled and referred to elsewhere in the
document:

~~~
(@good)  This is a good example.

As (@good) illustrates, ...
~~~

(@good)  This is a good example.

As (@good) illustrates, ...

### Nested Numbered List

The text in the example below was taken from the Creative Commons license text.
It is a good example of a deep nested numbered list.

Note that the list item under the parent list item is indented and aligned at the beginning of the first letter of the text of the parent item. Also, the markdown text containing lines that are "cut" to fit the width of the code block display does not affect the formatting of the output text.

~~~
**Section 3 -- License Conditions.**

Your exercise of the Licensed Rights is expressly made subject to the
following conditions.

a. Attribution.

   1. If You Share the Licensed Material (including in modified form),
      You must:

      A.  retain the following if it is supplied by the Licensor with
          the Licensed Material:

            i. identification of the creator(s) of the Licensed Material
               and any others designated to receive attribution, in any
               reasonable manner requested by the Licensor (including by
               pseudonym if designated);

           ii. a copyright notice;

          iii. a notice that refers to this Public License;

           iv. a notice that refers to the disclaimer of warranties;

            v. a URI or hyperlink to the Licensed Material to the extent
               reasonably practicable;

      B.  indicate if You modified the Licensed Material and retain an
          indication of any previous modifications; and

      C.  indicate the Licensed Material is licensed under this Public
          License, and include the text of, or the URI or hyperlink to,
          this Public License.
~~~

The output of the code above is:

**Section 3 – License Conditions.**

Your exercise of the Licensed Rights is expressly made subject to the following conditions.

a. Attribution.

   1. If You Share the Licensed Material (including in modified form), You must:

      A.  retain the following if it is supplied by the Licensor with the Licensed Material:

            i. identification of the creator(s) of the Licensed Material and any others designated to receive attribution, in any reasonable manner requested by the Licensor (including by pseudonym if designated);

           ii. a copyright notice;

          iii. a notice that refers to this Public License;

           iv. a notice that refers to the disclaimer of warranties;

            v. a URI or hyperlink to the Licensed Material to the extent reasonably practicable;

      B.  indicate if You modified the Licensed Material and retain an indication of any previous modifications; and

      C.  indicate the Licensed Material is licensed under this Public License, and include the text of, or the URI or hyperlink to, this Public License.


## Definition List

Term 1
: First paragraph. Lorem ipsum dolor sit amet, consectetuer adipiscing
  elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae,
  felis. Curabitur dictum gravida mauris.
: Second paragraph. Lorem ipsum dolor sit amet, consectetuer adipiscing
  elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae,
  felis. Curabitur dictum gravida mauris.

    ~~~
    int main() {
        printf("Hello world\n");
    }
    ~~~

: Third paragraph. Lorem ipsum dolor sit amet, consectetuer adipiscing
  elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae,
  felis. Curabitur dictum gravida mauris.

Term 2
~ First paragraph.
~ Second paragraph.

Term 3
  ~ First paragraph.
  ~ Second paragraph.

The definition list above is written in markdown as below. Paragraph
delimiter may be a colon (`:`) or a tilde. The start of the
paragraph delimiter may be indented up to two (2) space characters as
in the _Term 3_ definition.

~~~
Term 1
: First paragraph...
: Second paragraph...

    ~~~
    int main() {
        printf("Hello world\n");
    }
    ~~~

: Third paragraph...

Term 2
~ First paragraph.
~ Second paragraph.

Term 3
  ~ First paragraph.
  ~ Second paragraph.
~~~

## Footnotes

Footnotes are generated using a caret (`^`) followed by an identifier wrapped between square brackets.
Footnote identifiers could be a number or text but may not contain spaces, tabs, or newlines.
Text footnote identifiers are converted to a number and is ordered automatically.

The following markdown shows how to define a footnote reference and its corresponding note.

~~~
At the end of this text is a numbered footnote reference.[^1] Here is a
footnote reference using text for easier reading and referencing.
[^longnote]

[^1]: Here is the note.
[^longnote]: Long note with subsequent paragraphs. Subsequent paragraphs
             are indented following a blank line to show that they belong
             to the previous footnote.

    This is the second paragraph for this footnote.
~~~

At the end of this text is a numbered footnote reference.[^1]
footnote reference using text for easier reading and referencing.[^longnote]

[^1]: Here is the note.
[^longnote]: Long note with subsequent paragraphs. Subsequent paragraphs
are indented to show that they belong to the previous footnote.

    This is the second paragraph for this footnote.

### Hyperlinks as Footnotes

Hyperlinks are automatically converted to footnotes. Here is a hyperlink
to John Gruber's [Markdown site](http://daringfireball.net/projects/
markdown/). There is no need to manually define the note as it is
automatically generated from the hyperlink.

~~~
Hyperlinks are automatically converted to footnotes. Here is a hyperlink
to John Gruber's [Markdown site](http://daringfireball.net/projects/
markdown/). There is no need to manually define the note as it is
automatically generated from the hyperlink.
~~~

### Inline Footnotes

Footnotes can also be inlined. Here is an inline note.^[Inlined notes
are easier to write, since you don't have to pick an identifier and move
down to type the note.]

~~~
Footnotes can also be inlined. Here is an inline note.^[Inlined notes
are easier to write, since you don't have to pick an identifier and move
down to type the note.]
~~~

## Table

\lipsum[2]

## Code Blocks

A _code block_ is a block of text treated as verbatim text. Code blocks in
markdown are usually indented by four spaces or one tab character. Code
blocks must be separated from surrounding text by blank lines.

The following code block example is a short C++ program code.

~~~
#include <iostream>
int main() {
    std::cout << "Hello world!";
    return 0;
}
~~~

\noindent It is encoded in markdown like below. Note that the code block is indented.

        #include <iostream>
        int main() {
            std::cout << "Hello world!";
            return 0;
        }

### Fenced Code Blocks

In addition to standard indented code blocks, Pandoc supports *fenced* code
blocks. _Fenced code blocks_ begin with a row of three or more tilde or back
tick characters and end with a row of the same characters that must be at
least as long as the starting row. Everything between these lines is treated
as code. No indentation is necessary.

The example C++ code block above may be written:

    ~~~
    #include <iostream>
    int main() {
        std::cout << "Hello world!";
        return 0;
    }
    ~~~

Like regular code blocks, fenced code blocks must be separated from
the surrounding text by blank lines.
Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis. Curabitur dictum gravida mauris.

### Fenced Code Attributes

_Attributes_ may be attached to fenced or backticked code blocks and is
written like the following:

    ~~~{.cpp .numberLines startFrom="100"}
    #include <iostream>
    using namespace std;
    int main() {
        cout << "Hello world!";
        return 0;
    }
    ~~~

\noindent The code above is rendered with syntax highlighted using the C++
syntax and displayed with line numbers starting from 100.

~~~{.cpp .numberLines startFrom="100"}
#include <iostream>
using namespace std;
int main() {
    cout << "Hello world!";
    return 0;
}
~~~
