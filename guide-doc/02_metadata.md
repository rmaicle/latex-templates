# Metadata

Pandoc passes information into the LaTeX template file via metadata
using YAML.


## YAML Metadata

YAML Ain't Markup Language (abbreviated as YAML) is a cross-language,
Unicode-based data serialization language designed to be human-
friendly that works well with modern programming languages. This
document references YAML specification version 1.2.

YAML metadata is enclosed in a pair of line markers using three
hyphen (`-`) characterss. There must be no other characters present
in these line markers except YAML comments. YAML comments start with
the hash (`#`) character and ends until the end of the line.

~~~~~{style=syntax}
--- # This is a YAML comment        @\LNote{start marker with a comment}@
    # Metadata definitions are      @\LNote{comment}@
    #   placed here between the     @\LNote{comment}@
    #   the '---' line markers.     @\LNote{comment}@
---                                 @\LNote{end marker}@
~~~~~

All YAML metadata definitions are treated as texts.



### Document Metadata

All document metadata are treated as optional but it would be
weird for some metadata to be left as empty or blank.



#### Title

The *title* metadata key defines the document title.

~~~{style=syntax}
title: Document Title
~~~

The document title may be long and could span multiple lines.
YAML provides a syntax for multiple text lines.

~~~{style=syntax}
title: |
    Document Title \
    Second Title Line
~~~



#### Short Title

This metadata is only used for bookmarking purposes in PDF documents.
When the _title_ have multiple lines, using that in a PDF bookmark may
not be desirable and this option allows using a shorter alternative.

The _short title_ may also be used in document page headers and footers.




#### Subtitle

Same as with the *title* metadata.



#### Client

Same as with *subtitle* metadata.



#### Author and E-mail

There may be one or more authors of a document.

For a single author:

~~~{style=syntax}
author:
  name: John Doe
  email: johndoe@email.com
~~~

For multiple authors:

~~~{style=syntax}
author:
  name: John Doe
  email: johndoe@email.com
  name: Jane Doe
  email: janedoe@email.com
~~~



#### Date

The *date* metadata is meant for the document publication date. The
metadata value is a single line text only.

~~~{style=syntax}
date: January 1, 1970
~~~



#### Subject

The *subject* metadata pertains to the document subject. The metadata
value may be a long text spanning multiple sentences.

~~~{style=syntax}
subject: Information Technology
~~~



#### Abstract

The *abstract* metadata pertains to the document summary. The metadata
value may be a long text spanning multiple sentences.

~~~{style=syntax}
abstract: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed nulla
    maximus, vestibulum nunc vel, accumsan nisi. Aliquam erat volutpat. Curabitur
    auctor fermentum lacus et gravida. Curabitur arcu urna, pulvinar vitae aliquet in,
    imperdiet at purus. Pellentesque dapibus eget arcu eget sodales.
~~~



#### Distribution Statement

Document distribution statements are a necessary part of information
management for managing, sharing, safeguarding and disseminating
technical documents.

Distribution metadata may be a single or multiple statements that could
span multiple lines.

~~~{style=syntax}
distribution: Internal company use. Distribution authorized to all company departments
    only. No copies or reproduction in whole or in part may be passed to any third
    party.
~~~

There may be a need to format the distribution text such that the
first sentence or text is placed on its own line and the rest are
continued onto the text line.

~~~{style=syntax}
distribution: |
    Internal company use. \
    Distribution authorized to all company departments only. No copies or
    reproduction in whole or in part may be passed to any third party.
~~~

The text may be formatted so that each sentence starts on a new line.

~~~{style=syntax}
distribution: |
    | Internal company use.
    | Distribution authorized to all company departments only.
    | No copies or reproduction in whole or in part may be passed to any third party.
~~~

Examples of distribution statements.

* License to copy this document is granted provided it is identified as
  “Standards for Efficient Cryptography 1 (SEC 1)”, in all material
  mentioning or referencing it.[^sec_1]

[^sec_1]: Standards for Efficient Cryptography, SEC 1: Elliptic Curve
          Cryptography, [http://www.secg.org/sec1-v2.pdf](http://www.secg.org/sec1-v2.pdf)



#### Copyright Text

A *copyright* metadata key pertains to the document copyright. A
copyright text is usually a short, single line text although a
multi-line text is accepted.

~~~{style=syntax}
copyright: Copyright 2019 by John Doe
~~~

If the copyright symbol \textcopyright\space is desired, the LaTeX
commands `\textcopyright\space` must be used. The `\textcopyright`
displays the copyrigth symbol and `\space` displays a space character.

~~~{style=syntax}
copyright: Copyright \textcopyright\space 2019 by John Doe
~~~



#### Creative Commons License Image

If a Creative Commons license image is desired to be displayed the
metadata key must be set. These metadata keys are meant to be flags
that tell whether to display the corresponding license image.

To display the corresponding image, set the value to any text value.

**cc_image_by_nc_sa_40**



#### License Text

The *license* metadata key pertains to the document license text. The
metadata value may be a multi-line text.

~~~{style=syntax}
license: This work is licensed under the Creative Commons Attribution-NonCommercial-
    ShareAlike 4.0 International License (CC BY-NC-SA 4.0). You are free to copy,
    reproduce, distribute, display, and make adaptations of this work for non-
    commercial purposes provided that you give appropriate credit. To view a copy of
    this license, visit *[http://creativecommons.org/licenses/by-nc-sa/4.0/legalcode](
    http://creativecommons.org/licenses/by-nc-sa/4.0/legalcode)*.
~~~



#### Attribution Text

The *attribution* metadata key refers to text on how a third-party
must provide credit when using the author's work but not in a way that
suggests the third-party work is being endorsed. This metadata key is
used in all Creative Commons licenses.

~~~{style=syntax}
attribution: Please cite the work as follows: <Document> by John Doe is licensed
    under Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International
    License (CC BY-NC-SA 4.0).
~~~



#### Translation Text

The *translation* metadata key refers to text on how a third-party
must differentiate their work from the author's work. A translation
is considered a derivative work.

The following is an example of how to define a *translation* metadata.

~~~{style=syntax}
translations: If you create a translation of this work, please add the following
    disclaimer along with the attribution: This translation was not created by John
    Doe. The original author shall not be liable for any content or error in this
    translation.
~~~



#### Adaptation Text

The *adaptation* metadata key refers to text on how a third-party
must differentiate their work from the author's work. An adaptation
is considered a derivative work.

The following is an example of how to define an *adaptation* metadata.

~~~{style=syntax}
adaptation: If you create an adaptation of this work, please add the following
    disclaimer along with the attribution: This is an adaptation of an original work
    by John Doe. Views and opinions expressed in the adaptation are the sole
    responsibility of the author or authors of the adaptation and are not endorsed
    by the original authors.
~~~



#### Source Text

A *source* text is a multi-line text that contains information on where or how
the document source may be acquired. The text may contain hyperlinks if the
source of the document is accessible online.

The following is an example text.

~~~
source:
    The source files for this document is available at
    [https://github.com/rmaicle/md-to-pdf](https://github.com/rmaicle/md-to-pdf).
~~~



### Variables

Metadata *variables* are arbitrary information that affect and control the
processing of a document. Metadata variables may appear in the document
metadata block. These variables are used in the LaTeX template which are
preprocessed before being sent to the PDF engine for processing.



#### Draft

The `is_draft` key is a flag which tells the LaTeX template that the
document is intended to be printed as a draft. If the document is
generated with the `is_draft` value set to `true` then the *version
string* is prepended with the word `draft`. The template may also
use some other settings or configuration depending on the key value.

If specified, the key value may only either be `true` or `false`.
If not specified, the value `false`.

~~~
is_draft: false
~~~



#### SoftCopy

The `is_softcopy` key is a flag which tells the LaTeX template that
the document is intended to be a soft copy or as a digital file and
not primarily intended for printing. The template may also use some
other settings or configuration depending on the key value.

If specified, the key value may only either be `true` or `false`.
If not specified is the value is `false`.

~~~
is_softcopy: false
~~~



#### Paper Size

The `papersize` key, tells what paper size to use.
If specified, the key value may only either be `letterpaper` or
`a4paper`. If not specified, the value is  `letterpaper`.

~~~
papersize: letterpaper
~~~



#### Font Size

The `fontsize` key, specifies the font size of the body text in
*point* sizes. If specified, the key value may only be one of `10pt`,
`11pt`, `12pt`. If not specified, the value is `10pt`.

~~~
fontsize: 10pt
~~~
