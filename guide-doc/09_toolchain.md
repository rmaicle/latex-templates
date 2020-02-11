# Toolchain

This chapter discusses the installation and configuration of the
softwares and tools.



## TexLive

TBD

### `tllocalmgr`

Manage TeXLive packages.



## Pandoc (Linux)

This section discusses the installation of pandoc on a GNU/Linux
operating system[^pandoc-install].

[^pandoc-install]: [https://pandoc.org/installing.html](https://pandoc.org/installing.html)

The `pandoc` version used in this guide is 2.7.3. It is available as
a *tarball* archive (.tar) and as a Debian  package (deb) in the
pandoc site download page[^pandoc-273-download].

[^pandoc-273-download]: [https://github.com/jgm/pandoc/releases/download/2.7.3/](https://github.com/jgm/pandoc/releases/download/2.7.3/)

| Package | Link                                                                            |
|:-------:|:--------------------------------------------------------------------------------|
|   deb   | [pandoc-2.7.3-1-amd64.deb](https://github.com/jgm/pandoc/releases/download/2.7.3/pandoc-2.7.3-1-amd64.deb)  |
| tarball | [pandoc-2.7.3-linux.tar.gz](https://github.com/jgm/pandoc/releases/download/2.7.3/pandoc-2.7.3-linux.tar.gz) |

To get the latest release, go to *https://github.com/jgm/pandoc/releases/latest*.

This provides both `pandoc` and `pandoc-citeproc`. The executables
are statically linked and have no dynamic dependencies or dependencies
on external data files. Note that because of the static linking, the
pandoc binary from this package cannot use *lua* filters that require
external lua modules written in the C programming language.



### Install Debian Package

To install the *deb*:

~~~{style=terminal}
$ sudo dpkg -i $DEB
~~~

where `$DEB` is the path to the downloaded deb file. This will
install the pandoc and pandoc-citeproc executables and man pages.

If you use an RPM-based distro, you may be able to install the deb
file using `alien`.



### Install Tarball

On any distro, the tarball may be installed into `\$DEST` by the
following command:

~~~{style=terminal}
$ tar xvzf $TGZ --strip-components 1 -C $DEST
~~~

where `$TGZ` is the path to the downloaded tarball and `$DEST` is
the destination directory, usually `/usr/local` or `~/.local`.



## PP

This section discusses the installation of pp on a GNU/Linux
operating system.

Download the `pp` package from [https://cdsoft.fr/pp/](https://cdsoft.fr/pp/)
into some user directory. Create a directory where the source files
will be extracted to. Extract the archive file.

~~~{style=terminal}
$ wget -c https://cdsoft.fr/pp/pp.tgz
$ mkdir build
$ tar xzf pp.tgz -C build
$ cd build
$ make
$ make install
~~~

The `make install` command copies pp into `~/.local/bin`.
