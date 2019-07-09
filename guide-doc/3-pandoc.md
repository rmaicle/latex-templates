# Pandoc

[__Pandoc__](http://pandoc.org) is a tool written in
[Haskell](https://www.haskell.org) by John MacFarlane since 2006 for
converting from one markup format to another. Pandoc understands an
extended and slightly revised version of John Gruber's [Markdown] syntax.
These extensions and revisions are necessary to provide multiple output
formats aimed by Pandoc's design. Using pandoc version 2.1.1.

## YAML Metadata

YAML Ain't Markup Language (abbreviated as YAML) is a cross-language, Unicode-based data serialization language designed to be human-friendly that works well with modern programming languages.

This document references YAML specification version 1.2[^yaml-1.2].

Pandoc uses YAML metadata which can then be used inside the LaTex template file.

### Example

The following example defines a document title, subtitle, author, version and date.

~~~
---
title: Markdown to PDF
subtitle: Documentation Guide
author:
  - name: Ricardo I. Maicle
    email: rmaicle@gmail.com
version: Version 0.1.0
date: January 2019
copyright: 2019 by Ricardo I. Maicle
~~~

[^yaml-1.2]: [http://yaml.org/spec/1.2/spec.html](http://yaml.org/spec/1.2/spec.html).
