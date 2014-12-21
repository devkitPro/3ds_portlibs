3DS Portlibs
============

Here is a Makefile for building various portlibs for 3DS. You need to first
build zlib and install it. Then you can build the other portlibs.

    $ make zlib
    $ sudo make install-zlib
    $ make
    $ make install

Currently supports the following portlibs:

* freetype (requires zlib)
* libexif
* libjpeg-turbo
* libpng (requires zlib)
* sqlite
* zlib

Download links:

* [freetype-2.5.4.tar.bz2] (http://download.savannah.gnu.org/releases/freetype/freetype-2.5.4.tar.bz2)
*  [libexif-0.6.21.tar.bz2] (http://sourceforge.net/projects/libexif/files/libexif/0.6.21/libexif-0.6.21.tar.bz2/download)
* [libjpeg-turbo-1.3.1.tar.gz] (http://sourceforge.net/projects/libjpeg-turbo/files/1.3.1/libjpeg-turbo-1.3.1.tar.gz/download)
* [libpng-1.6.15.tar.xz] (http://prdownloads.sourceforge.net/libpng/libpng-1.6.15.tar.xz?download)
* [sqlite-autoconf-3080704.tar.gz] (http://www.sqlite.org/2014/sqlite-autoconf-3080704.tar.gz)
* [zlib-1.2.8.tar.gz] (http://prdownloads.sourceforge.net/libpng/zlib-1.2.8.tar.gz?download)
