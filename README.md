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

* bzip2
* freetype (requires zlib)
* giflib
* jansson
* libconfig
* libexif
* libjpeg-turbo
* libmad
* libogg
* libpng (requires zlib)
* libxml2
* libxmp-lite
* mbedtls (requires zlib) (without net component)
* sqlite
* tinyxml2
* tremor (requires libogg)
* xz
* zlib

Download links:

* [bzip2-1.0.6] (http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz)
* [freetype-2.6.2.tar.bz2] (http://download.savannah.gnu.org/releases/freetype/freetype-2.6.2.tar.bz2)
* [giflib-5.1.1] (http://sourceforge.net/projects/giflib/files/giflib-5.1.1.tar.bz2)
* [jansson-v2.7.tar.gz] (https://github.com/akheron/jansson/archive/v2.7.tar.gz)
* [libconfig-1.5] (http://www.hyperrealm.com/libconfig/libconfig-1.5.tar.gz)
* [libexif-0.6.21.tar.bz2] (http://sourceforge.net/projects/libexif/files/libexif/0.6.21/libexif-0.6.21.tar.bz2/download)
* [libjpeg-turbo-1.4.2.tar.gz] (http://sourceforge.net/projects/libjpeg-turbo/files/1.4.2/libjpeg-turbo-1.4.2.tar.gz/download)
* [libmad-0.15.1b] (http://sourceforge.net/projects/mad/files/libmad/0.15.1b/libmad-0.15.1b.tar.gz)
* [libogg-1.3.2] (http://downloads.xiph.org/releases/ogg/libogg-1.3.2.tar.xz)
* [libpng-1.6.21.tar.xz] (http://prdownloads.sourceforge.net/libpng/libpng-1.6.21.tar.xz?download)
* [libxml2-2.9.3] (http://xmlsoft.org/sources/libxml2-2.9.3.tar.gz)
* [libxmp-lite-4.3.10.tar.gz](http://sourceforge.net/projects/xmp/files/libxmp/4.3.10/libxmp-lite-4.3.10.tar.gz/download)
* [mbedtls-2.2.1] (https://tls.mbed.org/download/mbedtls-2.2.1-gpl.tgz)
* [sqlite-autoconf-3100200.tar.gz] (https://www.sqlite.org/2016/sqlite-autoconf-3100200.tar.gz)
* [tinyxml2-3.0.0.tar.gz] (https://github.com/leethomason/tinyxml2/archive/3.0.0.tar.gz)
* [tremor-2a1a8f6] (https://git.xiph.org/?p=tremor.git;a=snapshot;h=2a1a8f621e500fdf0749f115e2206f82919560a3;sf=tgz)
* [xz-5.2.2] (http://tukaani.org/xz/xz-5.2.2.tar.xz)
* [zlib-1.2.8.tar.gz] (http://prdownloads.sourceforge.net/libpng/zlib-1.2.8.tar.gz?download)
