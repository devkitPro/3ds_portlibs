3DS Portlibs
============

Here is a Makefile for building various portlibs for 3DS. You need to first
build zlib and install it. Then you can build the other portlibs.

    $ make zlib
    $ make install-zlib
    $ make <targets>
    $ make install

This will install the portlibs to `$DEVKITPRO/portlibs/armv6k`. If this is a
privileged location, you will need to `sudo make install-zlib` and `sudo make
install` in order for the portlibs to be installed.

Currently supports the following portlibs:

* freetype (requires zlib)
* libexif
* libjpeg-turbo
* libpng (requires zlib)
* sqlite
* libxmp-lite
* zlib

Download links:

* [freetype-2.6.2.tar.bz2] (http://download.savannah.gnu.org/releases/freetype/freetype-2.6.2.tar.bz2)
* [libexif-0.6.21.tar.bz2] (http://sourceforge.net/projects/libexif/files/libexif/0.6.21/libexif-0.6.21.tar.bz2/download)
* [libjpeg-turbo-1.4.2.tar.gz] (http://sourceforge.net/projects/libjpeg-turbo/files/1.4.2/libjpeg-turbo-1.4.2.tar.gz/download)
* [libpng-1.6.21.tar.xz] (http://prdownloads.sourceforge.net/libpng/libpng-1.6.21.tar.xz?download)
* [sqlite-autoconf-3100200.tar.gz] (https://www.sqlite.org/2016/sqlite-autoconf-3100200.tar.gz)
* [libxmp-lite-4.3.10.tar.gz](http://sourceforge.net/projects/xmp/files/libxmp/4.3.10/libxmp-lite-4.3.10.tar.gz/download)
* [zlib-1.2.8.tar.gz] (http://prdownloads.sourceforge.net/libpng/zlib-1.2.8.tar.gz?download)
