---
# https://github.com/alexeygumirov/pandoc-for-pdf-how-to
#
# title: "How to make PDF from MarkDown with Pandoc"
# author: "Author: Alexey Gumirov"
# date:
# subtitle: "Detailed manual for all"
# geometry: "left=2.54cm,right=2.54cm,top=1.91cm,bottom=1.91cm"
# titlepage: true
# titlepage-color: "FFFFFF"
# titlepage-text-color: "000000"
# titlepage-rule-color: "CCCCCC"
# titlepage-rule-height: 4
# logo: "files/logo.png"
# logo-width: 100
# page-background:
# page-background-opacity:
# links-as-notes: true
# lot: true
# lof: true
# listings-disable-line-numbers: true
# listings-no-page-break: false
# disable-header-and-footer: false
# header-left:
# header-center:
# header-right:
# footer-left: "© Alexey Gumirov"
# footer-center: "License: WTFPL"
# footer-right:
# subparagraph: true
# lang: en-US


classoption:
    - titlepage
    - oneside
    - openright
documentclass: memoir
papersizex: a4
papersize: usletter
geometry:
    - left=1.0in
    - right=1.0in
    - top=1.0in
    - bottom=1.0in
    - bindingoffset=0.5in
hyperref:
    - colorlinks=false
    - hyperfootnotes=false
    - bookmarks=true,
    - pdftoolbar=true,
    - pdfmenubar=true,
    - pdfstartview={null null 100},
    - breaklinks=true
toc: true
toc-depth: 3
secnumdepth: 5
indent: true
# mainfont:
# sansfont:
# monofont:
# mathfont:

title: Creating PDF Documents from Markdown
shorttitle: Creating PDF from Markdown
subtitle: Document Creation Guide
clientx:
typex: {uppercase}
author_headingx:
author:
  name: Ricardo I. Maicle
  companyx: Company
  email: rmaicle@gmail.com
version: Version 0.1.0
date: January 2019
abstract:
subject:
description:
distribution: |
    | Work in Progress.
    | Distribution is authorized to anyone interested with the
        knowledge that the copy or reproduction they have received
        may not be the latest version and may contain errors.
distribution-1: This document is uncontrolled when printed.
copyright: Copyright \textcopyright\space 2019 by Ricardo I. Maicle
cc_license_image: true
license: CC BY-NC-SA 4.0

license_text: >
    This work is licensed under the Creative Commons
    Attribution-NonCommercial-ShareAlike 4.0 International License
    (CC BY-NC-SA 4.0). You are free to copy, reproduce, distribute,
    display, and make adaptations of this work for non-commercial
    purposes provided that you give appropriate credit. To view a
    copy of this license, visit
    *[http://creativecommons.org/licenses/by-nc-sa/4.0/legalcode](
    http://creativecommons.org/licenses/by-nc-sa/4.0/legalcode)*.

license_attribution: >
    Please cite the work as follows: Markdown to PDF Guide by Ricardo
    Maicle is licensed under Creative Commons
    Attribution-NonCommercial-ShareAlike 4.0 International License
    (CC BY-NC-SA 4.0).

license_translations: >
    If you create a translation of this work, please add the
    following disclaimer along with the attribution: This translation
    was not created by Ricardo I. Maicle. The original authors shall
    not be liable for any content or error in this translation.

license_adaptations: >
    If you create an adaptation of this work, please add the
    following disclaimer along with the attribution: This is an
    adaptation of an original work by [company]. Views and opinions
    expressed in the adaptation are the sole responsibility of the
    author or authors of the adaptation and are not endorsed by the
    original authors.

source:
    The source files for this document is available at
    *[https://github.com/rmaicle/md-to-pdf](https://github.com/rmaicle/md-to-pdf)*.
---
