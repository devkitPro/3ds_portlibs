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
