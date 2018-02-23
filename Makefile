INSTALL                = /usr/bin/install -c
INSTALL_DATA           = $(INSTALL) -Dm644
INSTALL_DIR            = $(INSTALL) -dm755

BZIP2                 := bzip2
BZIP2_VERSION         := $(BZIP2)-1.0.6
BZIP2_SRC             := $(BZIP2_VERSION).tar.gz
BZIP2_DOWNLOAD        := http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz

CURL                  := curl
CURL_VERSION          := $(CURL)-7.58.0
CURL_SRC              := $(CURL_VERSION).tar.bz2
CURL_DOWNLOAD         := https://github.com/curl/curl/releases/download/$(subst .,_,$(CURL_VERSION))/$(CURL_SRC)

FREETYPE              := freetype
FREETYPE_VERSION      := $(FREETYPE)-2.6.2
FREETYPE_SRC          := $(FREETYPE_VERSION).tar.bz2
FREETYPE_DOWNLOAD     := http://download.savannah.gnu.org/releases/freetype/freetype-2.6.2.tar.bz2

GIFLIB                := giflib
GIFLIB_VERSION        := $(GIFLIB)-5.1.1
GIFLIB_SRC            := $(GIFLIB_VERSION).tar.bz2
GIFLIB_DOWNLOAD       := http://sourceforge.net/projects/giflib/files/giflib-5.1.1.tar.bz2

JANSSON               := jansson
JANSSON_VERSION       := $(JANSSON)-2.10
JANSSON_SRC           := $(JANSSON_VERSION).tar.bz2
JANSSON_DOWNLOAD      := http://www.digip.org/jansson/releases/jansson-2.10.tar.bz2

LIBARCHIVE            := libarchive
LIBARCHIVE_VERSION    := $(LIBARCHIVE)-3.1.2
LIBARCHIVE_SRC        := $(LIBARCHIVE_VERSION).tar.gz
LIBARCHIVE_DOWNLOAD   := http://www.libarchive.org/downloads/libarchive-3.1.2.tar.gz

LIBCONFIG             := libconfig
LIBCONFIG_VERSION     := $(LIBCONFIG)-1.5
LIBCONFIG_SRC         := $(LIBCONFIG_VERSION).tar.gz
LIBCONFIG_DOWNLOAD    := https://github.com/hyperrealm/libconfig/archive/v1.5.tar.gz

LIBEXIF               := libexif
LIBEXIF_VERSION       := $(LIBEXIF)-0.6.21
LIBEXIF_SRC           := $(LIBEXIF_VERSION).tar.bz2
LIBEXIF_DOWNLOAD      := http://sourceforge.net/projects/libexif/files/libexif/0.6.21/libexif-0.6.21.tar.bz2/download

LIBJPEGTURBO          := libjpeg-turbo
LIBJPEGTURBO_VERSION  := $(LIBJPEGTURBO)-1.4.2
LIBJPEGTURBO_SRC      := $(LIBJPEGTURBO_VERSION).tar.gz
LIBJPEGTURBO_DOWNLOAD := http://sourceforge.net/projects/libjpeg-turbo/files/1.4.2/libjpeg-turbo-1.4.2.tar.gz/download

LIBMAD                := libmad
LIBMAD_VERSION        := $(LIBMAD)-0.15.1b
LIBMAD_SRC            := $(LIBMAD_VERSION).tar.gz
LIBMAD_DOWNLOAD       := http://sourceforge.net/projects/mad/files/libmad/0.15.1b/libmad-0.15.1b.tar.gz

LIBOGG                := libogg
LIBOGG_VERSION        := $(LIBOGG)-1.3.2
LIBOGG_SRC            := $(LIBOGG_VERSION).tar.xz
LIBOGG_DOWNLOAD       := http://downloads.xiph.org/releases/ogg/libogg-1.3.2.tar.xz

LIBOPUS               := libopus
LIBOPUS_VERSION       := opus-1.2.1
LIBOPUS_SRC           := $(LIBOPUS_VERSION).tar.gz
LIBOPUS_DOWNLOAD      := https://archive.mozilla.org/pub/opus/opus-1.2.1.tar.gz

LIBPNG                := libpng
LIBPNG_VERSION        := $(LIBPNG)-1.6.21
LIBPNG_SRC            := $(LIBPNG_VERSION).tar.xz
LIBPNG_DOWNLOAD       := http://prdownloads.sourceforge.net/libpng/libpng-1.6.21.tar.xz?download

LIBXMP_LITE           := libxmp-lite
LIBXMP_LITE_VERSION   := $(LIBXMP_LITE)-4.3.10
LIBXMP_LITE_SRC       := $(LIBXMP_LITE_VERSION).tar.gz
LIBXMP_LITE_DOWNLOAD  := http://sourceforge.net/projects/xmp/files/libxmp/4.3.10/libxmp-lite-4.3.10.tar.gz/download

MBED                  := mbedtls
MBED_VERSION          := $(MBED)-2.7.0

MBED_APACHE           := $(MBED)-apache
MBED_APACHE_SRC       := $(MBED_VERSION)-apache.tgz
MBED_APACHE_DOWNLOAD  := https://tls.mbed.org/download/$(MBED_APACHE_SRC)

MBED_GPL              := $(MBED)-gpl
MBED_GPL_SRC          := $(MBED_VERSION)-gpl.tgz
MBED_GPL_DOWNLOAD     := https://tls.mbed.org/download/$(MBED_GPL_SRC)

OPUSFILE              := opusfile
OPUSFILE_VERSION      := $(OPUSFILE)-0.9
OPUSFILE_SRC          := $(OPUSFILE_VER).tar.gz
OPUSFILE_DOWNLOAD     := https://downloads.xiph.org/releases/opus/opusfile-0.9.tar.gz

TINYXML               := tinyxml2
TINYXML_VERSION       := $(TINYXML)-3.0.0
TINYXML_SRC           := $(TINYXML_VERSION).tar.gz
TINYXML_DOWNLOAD      := https://github.com/leethomason/tinyxml2/archive/3.0.0.tar.gz

# Tremor Low Memory Branch
TREMOR                := tremor
TREMOR_VERSION        := $(TREMOR)-293fd1c
TREMOR_SRC            := $(TREMOR_VERSION).tar.gz
TREMOR_DOWNLOAD       := https://git.xiph.org/?p=tremor.git;a=snapshot;h=293fd1c04f9d4489be6d4b2b1ca8698f2f902e8e;sf=tgz

XZ                    := xz
XZ_VERSION            := $(XZ)-5.2.2
XZ_SRC                := $(XZ_VERSION).tar.xz
XZ_DOWNLOAD           := http://tukaani.org/xz/xz-5.2.2.tar.xz

MIKMOD                := libmikmod
MIKMOD_VERSION        := $(MIKMOD)-3.3.11.1
MIKMOD_SRC            := $(MIKMOD_VERSION).tar.gz
MIKMOD_DOWNLOAD       := http://sourceforge.net/projects/mikmod/files/libmikmod/3.3.11.1/libmikmod-3.3.11.1.tar.gz/download

ZLIB                  := zlib
ZLIB_VERSION          := $(ZLIB)-1.2.8
ZLIB_SRC              := $(ZLIB_VERSION).tar.gz
ZLIB_DOWNLOAD         := http://prdownloads.sourceforge.net/libpng/zlib-1.2.8.tar.gz?download

export PORTLIBS_PATH  := $(DEVKITPRO)/portlibs
export PATH           := $(DEVKITARM)/bin:$(PORTLIBS_PATH)/3ds/bin:$(PORTLIBS_PATH)/armv6k/bin:$(PATH)
export ACLOCAL_FLAGS  := -I  $(DEVKITPRO)/portlibs/3ds/share/aclocal -I $(DEVKITPRO)/portlibs/armv6k/share/aclocal

export CFLAGS         := -march=armv6k -mtune=mpcore -mfloat-abi=hard -mtp=soft -O3 -mword-relocations -ffunction-sections
export CPPFLAGS       := -I$(DEVKITPRO)/libctru/include -I$(PORTLIBS_PATH)/3ds/include -I$(PORTLIBS_PATH)/armv6k/include
export LDFLAGS        := -L$(DEVKITPRO)/libctru/lib -L$(PORTLIBS_PATH)/3ds/lib -L$(PORTLIBS_PATH)/armv6k/lib
export LIBS           := -lctru

.PHONY: all \
        install \
        install-$(ZLIB) \
        install-$(MBED_APACHE) \
        install-$(MBED_GPL) \
        install-$(BZIP2) \
        install-$(CURL) \
        install-$(FREETYPE) \
        install-$(GIFLIB) \
        install-$(JANSSON) \
        install-$(LIBARCHIVE) \
        install-$(LIBCONFIG) \
        install-$(LIBEXIF) \
        install-$(LIBJPEGTURBO) \
        install-$(LIBMAD) \
        install-$(LIBOGG) \
        install-$(LIBOPUS) \
        install-$(LIBPNG) \
        install-$(LIBXMP_LITE) \
        install-$(OPUSFILE) \
        install-$(TINYXML) \
        install-$(TREMOR) \
        install-$(MIKMOD) \
        install-$(XZ) \
        clean \
        download \
        $(BZIP2) \
        $(CURL) \
        $(FREETYPE) \
        $(GIFLIB) \
        $(JANSSON) \
        $(LIBARCHIVE) \
        $(LIBCONFIG) \
        $(LIBEXIF) \
        $(LIBJPEGTURBO) \
        $(LIBMAD) \
        $(LIBOGG) \
        $(LIBOPUS) \
        $(LIBPNG) \
        $(MBED_APACHE) \
        $(MBED_GPL) \
        $(OPUSFILE) \
        $(LIBXMP_LITE) \
        $(TINYXML) \
        $(TREMOR) \
        $(XZ) \
        $(MIKMOD) \
        $(ZLIB)

all: $(DESTDIR)$(DEVKITPRO)/portlibs/armv6k/bin/arm-none-eabi-pkg-config $(DESTDIR)$(DEVKITPRO)/portlibs/3ds/bin/arm-none-eabi-pkg-config
	@echo "Please choose one of the following targets:"
	@echo "  $(BZIP2)"
	@echo "  $(CURL) (requires zlib and mbedtls to be installed)"
	@echo "  $(FREETYPE) (requires zlib to be installed)"
	@echo "  $(GIFLIB)"
	@echo "  $(JANSSON)"
	@echo "  $(LIBARCHIVE) (requires zlib, $(BZIP2), and $(XZ) to be installed)"
	@echo "  $(LIBCONFIG)"
	@echo "  $(LIBEXIF)"
	@echo "  $(LIBJPEGTURBO)"
	@echo "  $(LIBMAD)"
	@echo "  $(LIBOGG)"
	@echo "  $(LIBOPUS)"
	@echo "  $(LIBPNG) (requires zlib to be installed)"
	@echo "  $(LIBXMP_LITE)"
	@echo "  $(MBED_APACHE) (requires zlib to be installed)"
	@echo "  $(MBED_GPL) (requires zlib to be installed)"
	@echo "  $(OPUSFILE) (requires $(LIBOPUS) and $(LIBOGG) to be installed)"
	@echo "  $(TINYXML)"
	@echo "  $(TREMOR) (requires $(LIBOGG) to be installed)"
	@echo "  $(XZ)"
	@echo "  $(MIKMOD)"
	@echo "  $(ZLIB)"


download: $(BZIP2_SRC) $(CURL_SRC) $(FREETYPE_SRC) $(GIFLIB_SRC) $(JANSSON_SRC) $(LIBARCHIVE_SRC) $(LIBCONFIG_SRC) $(LIBEXIF_SRC) $(LIBJPEGTURBO_SRC) $(LIBMAD_SRC) $(LIBOGG_SRC) $(LIBOPUS_SRC) $(LIBPNG_SRC) $(LIBXMP_LITE_SRC) $(MBED_APACHE_SRC) $(MBED_GPL_SRC) $(OPUSFILE_SRC) $(TINYXML_SRC) $(TREMOR_SRC) $(XZ_SRC) $(MIKMOD_SRC) $(ZLIB_SRC)

DOWNLOAD = wget --no-check-certificate -O "$(1)" "$(2)" || curl -Lo "$(1)" "$(2)"

$(BZIP2_SRC):
	@$(call DOWNLOAD,$@,$(BZIP2_DOWNLOAD))

$(CURL_SRC):
	@$(call DOWNLOAD,$@,$(CURL_DOWNLOAD))

$(FREETYPE_SRC):
	$(call DOWNLOAD,$@,$(FREETYPE_DOWNLOAD))

$(GIFLIB_SRC):
	$(call DOWNLOAD,$@,$(GIFLIB_DOWNLOAD))

$(JANSSON_SRC):
	@$(call DOWNLOAD,$@,$(JANSSON_DOWNLOAD))

$(LIBARCHIVE_SRC):
	@$(call DOWNLOAD,$@,$(LIBARCHIVE_DOWNLOAD))

$(LIBCONFIG_SRC):
	@$(call DOWNLOAD,$@,$(LIBCONFIG_DOWNLOAD))

$(LIBEXIF_SRC):
	@$(call DOWNLOAD,$@,$(LIBEXIF_DOWNLOAD))

$(LIBJPEGTURBO_SRC):
	@$(call DOWNLOAD,$@,$(LIBJPEGTURBO_DOWNLOAD))

$(LIBMAD_SRC):
	@$(call DOWNLOAD,$@,$(LIBMAD_DOWNLOAD))

$(LIBOGG_SRC):
	@$(call DOWNLOAD,$@,$(LIBOGG_DOWNLOAD))

$(LIBOPUS_SRC):
	@$(call DOWNLOAD,$@,$(LIBOPUS_DOWNLOAD))

$(LIBPNG_SRC):
	@$(call DOWNLOAD,$@,$(LIBPNG_DOWNLOAD))

$(LIBXMP_LITE_SRC):
	@$(call DOWNLOAD,$@,$(LIBXMP_LITE_DOWNLOAD))

$(MBED_APACHE_SRC):
	@$(call DOWNLOAD,$@,$(MBED_APACHE_DOWNLOAD))

$(MBED_GPL_SRC):
	@$(call DOWNLOAD,$@,$(MBED_GPL_DOWNLOAD))

$(OPUSFILE_SRC):
	@$(call DOWNLOAD,$@,$(OPUSFILE_DOWNLOAD))

$(TINYXML_SRC):
	@$(call DOWNLOAD,$@,$(TINYXML_DOWNLOAD))

$(TREMOR_SRC):
	@$(call DOWNLOAD,$@,$(TREMOR_DOWNLOAD))

$(XZ_SRC):
	@$(call DOWNLOAD,$@,$(XZ_DOWNLOAD))

$(MIKMOD_SRC):
	$(call DOWNLOAD,$@,$(MIKMOD_DOWNLOAD))

$(ZLIB_SRC):
	@$(call DOWNLOAD,$@,$(ZLIB_DOWNLOAD))

$(BZIP2): $(BZIP2_SRC)
	@[ -d $(BZIP2_VERSION) ] || tar -xzf $<
	@cd $(BZIP2_VERSION)
	@$(MAKE) -C $(BZIP2_VERSION) CC=arm-none-eabi-gcc AR=arm-none-eabi-ar RANLIB=arm-none-eabi-ranlib CPPFLAGS="$(CPPFLAGS)" CFLAGS="-D_FILE_OFFSET_BITS=64 -Winline $(CFLAGS)" libbz2.a

$(CURL): $(CURL_SRC)
	@[ -d $(CURL_VERSION) ] || tar -xjf $<
	@cd $(CURL_VERSION) && \
	 patch -Np1 -i ../curl-7.58.0.patch && \
	 ./configure CFLAGS="$(CFLAGS)" CPPFLAGS="$(CPPFLAGS)" --prefix=$(PORTLIBS_PATH)/3ds --host=arm-none-eabi --disable-shared --enable-static --disable-ipv6 --disable-unix-sockets --disable-manual --disable-ntlm-wb --disable-threaded-resolver --with-mbedtls=$(PORTLIBS_PATH)/3ds
	@$(MAKE) -C $(CURL_VERSION)/lib

$(FREETYPE): $(FREETYPE_SRC)
	@[ -d $(FREETYPE_VERSION) ] || tar -xjf $<
	@cd $(FREETYPE_VERSION) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static --without-harfbuzz
	@$(MAKE) -C $(FREETYPE_VERSION)

$(GIFLIB): $(GIFLIB_SRC)
	@[ -d $(GIFLIB_VERSION) ] || tar -xjf $<
	@cd $(GIFLIB_VERSION) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(GIFLIB_VERSION)

$(JANSSON): $(JANSSON_SRC)
	@[ -d $(JANSSON_VERSION) ] || tar -xjf $<
	@cd $(JANSSON_VERSION) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(JANSSON_VERSION)

$(LIBARCHIVE): $(LIBARCHIVE_SRC)
	@[ -d $(LIBARCHIVE_VERSION) ] || tar -xzf $<
	@cd $(LIBARCHIVE_VERSION) && \
	patch -Np1 -i ../libarchive-3.1.2.patch && \
	./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static --without-nettle --without-openssl --without-xml2 --without-expat --without-iconv --disable-bsdtar --disable-bsdcpio --disable-acl
	@$(MAKE) -C $(LIBARCHIVE_VERSION)

$(LIBCONFIG): $(LIBCONFIG_SRC)
	@[ -d $(LIBCONFIG_VERSION) ] || tar -xzf $<
	@cd $(LIBCONFIG_VERSION) && \
	 autoreconf -i && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-cxx --disable-examples
	@$(MAKE) -C $(LIBCONFIG_VERSION)/lib

$(LIBEXIF): $(LIBEXIF_SRC)
	@[ -d $(LIBEXIF_VERSION) ] || tar -xjf $<
	@cd $(LIBEXIF_VERSION) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBEXIF_VERSION)

$(LIBJPEGTURBO): $(LIBJPEGTURBO_SRC)
	@[ -d $(LIBJPEGTURBO_VERSION) ] || tar -xzf $<
	@cd $(LIBJPEGTURBO_VERSION) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBJPEGTURBO_VERSION)

$(LIBMAD): $(LIBMAD_SRC)
	@[ -d $(LIBMAD_VERSION) ] || tar -xzf $<
	@cd $(LIBMAD_VERSION) && \
	 patch -Np1 -i ../libmad-0.15.1b.patch && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBMAD_VERSION)

$(LIBOGG): $(LIBOGG_SRC)
	@[ -d $(LIBOGG_VERSION) ] || tar -xJf $<
	@cd $(LIBOGG_VERSION) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBOGG_VERSION)

$(LIBOPUS): $(LIBOPUS_SRC)
	@[ -d $(LIBOPUS_VERSION) ] || tar -xzf $<
	@cd $(LIBOPUS_VERSION) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBOPUS_VERSION)

$(LIBPNG): $(LIBPNG_SRC)
	@[ -d $(LIBPNG_VERSION) ] || tar -xJf $<
	@cd $(LIBPNG_VERSION) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBPNG_VERSION)

$(LIBXMP_LITE): $(LIBXMP_LITE_SRC)
	@[ -d $(LIBXMP_LITE_VERSION) ] || tar -xzf $<
	@cd $(LIBXMP_LITE_VERSION) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBXMP_LITE_VERSION)

$(MBED_APACHE): $(MBED_APACHE_SRC)
	@[ -d $(MBED_VERSION)-apache ] || { tar -xzf $< && mv $(MBED_VERSION) $(MBED_VERSION)-apache; }
	@cd $(MBED_VERSION)-apache && \
	 patch -Np1 -i ../libmbedtls-2.7.0.patch && \
	 cmake -DCMAKE_SYSTEM_NAME=Generic -DCMAKE_C_COMPILER=$(DEVKITARM)/bin/arm-none-eabi-gcc \
	 -DCMAKE_CXX_COMPILER=$(DEVKITARM)/bin/arm-none-eabi-g++ \
	 -DCMAKE_INSTALL_PREFIX=$(PORTLIBS_PATH)/3ds -DCMAKE_C_FLAGS="$(CFLAGS) $(CPPFLAGS)" \
	 -DCMAKE_CXX_FLAGS="$(CFLAGS) -fno-exceptions -fno-rtti" \
	 -DZLIB_ROOT="$(PORTLIBS_PATH)/armv6k" \
	 -DENABLE_ZLIB_SUPPORT=TRUE -DENABLE_TESTING=FALSE -DENABLE_PROGRAMS=FALSE .
	@$(MAKE) -C $(MBED_VERSION)-apache

$(MBED_GPL): $(MBED_GPL_SRC)
	@[ -d $(MBED_VERSION)-gpl ] || { tar -xzf $< && mv $(MBED_VERSION) $(MBED_VERSION)-gpl; }
	@cd $(MBED_VERSION)-gpl && \
	 patch -Np1 -i ../libmbedtls-2.7.0.patch && \
	 cmake -DCMAKE_SYSTEM_NAME=Generic -DCMAKE_C_COMPILER=$(DEVKITARM)/bin/arm-none-eabi-gcc \
	 -DCMAKE_CXX_COMPILER=$(DEVKITARM)/bin/arm-none-eabi-g++ \
	 -DCMAKE_INSTALL_PREFIX=$(PORTLIBS_PATH)/3ds -DCMAKE_C_FLAGS="$(CFLAGS) $(CPPFLAGS)" \
	 -DCMAKE_CXX_FLAGS="$(CFLAGS) -fno-exceptions -fno-rtti" \
	 -DZLIB_ROOT="$(PORTLIBS_PATH)/armv6k" \
	 -DENABLE_ZLIB_SUPPORT=TRUE -DENABLE_TESTING=FALSE -DENABLE_PROGRAMS=FALSE .
	@$(MAKE) -C $(MBED_VERSION)-gpl

$(OPUSFILE): $(OPUSFILE_SRC)
	@[ -d $(OPUSFILE_VERSION) ] || tar -xzf $<
	@cd $(OPUSFILE_VERSION) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(OPUSFILE_VERSION)


# tinyxml2 uses cmake
$(TINYXML): $(TINYXML_SRC)
	@[ -d $(TINYXML_VERSION) ] || tar -xzf $<
	@cd $(TINYXML_VERSION) && cmake -DCMAKE_SYSTEM_NAME=Generic -DCMAKE_C_COMPILER=$(DEVKITARM)/bin/arm-none-eabi-gcc -DCMAKE_CXX_COMPILER=$(DEVKITARM)/bin/arm-none-eabi-g++ -DCMAKE_INSTALL_PREFIX=$(PORTLIBS_PATH)/armv6k -DCMAKE_C_FLAGS="$(CFLAGS)" -DCMAKE_CXX_FLAGS="$(CFLAGS) -fno-exceptions -fno-rtti" . && make

$(TREMOR): $(TREMOR_SRC)
	@[ -d $(TREMOR_VERSION) ] || tar -xzf $<
	@cd $(TREMOR_VERSION) && \
	 ./autogen.sh --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --disable-oggtest
	@$(MAKE) -C $(TREMOR_VERSION)

$(XZ): $(XZ_SRC)
	@[ -d $(XZ_VERSION) ] || tar -xJf $<
	@cd $(XZ_VERSION) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static --disable-xz --enable-threads=no
	@$(MAKE) -C $(XZ_VERSION)

$(MIKMOD): $(MIKMOD_SRC)
	@[ -d $(MIKMOD_VERSION) ] || tar -xzf $<
	@cd $(MIKMOD_VERSION) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(MIKMOD_VERSION)

$(ZLIB): $(ZLIB_SRC)
	@[ -d $(ZLIB_VERSION) ] || tar -xzf $<
	@cd $(ZLIB_VERSION) && \
	 CHOST=arm-none-eabi ./configure --static --prefix=$(PORTLIBS_PATH)/armv6k
	@$(MAKE) -C $(ZLIB_VERSION)

install-$(ZLIB):
	@$(MAKE) -C $(ZLIB_VERSION) install

install-$(MBED_APACHE):
	@$(MAKE) -C $(MBED_VERSION)-apache install

install-$(MBED_GPL):
	@$(MAKE) -C $(MBED_VERSION)-gpl install

install-$(BZIP2):
	@if [ -d $(BZIP2_VERSION) ]; then \
		$(INSTALL_DATA) $(BZIP2_VERSION)/bzlib.h $(DESTDIR)$(PORTLIBS_PATH)/armv6k/include/bzlib.h; \
		$(INSTALL_DATA) $(BZIP2_VERSION)/libbz2.a $(DESTDIR)$(PORTLIBS_PATH)/armv6k/lib/libbz2.a; \
	fi

install-$(CURL):
	@[ -d $(CURL_VERSION) ] && { $(MAKE) -c $(CURL_VERSION)/lib install && $(MAKE) -C $(CURL_VERSION)/include install; }

install-$(FREETYPE):
	@[ -d $(FREETYPE_VERSION) ] && $(MAKE) -C $(FREETYPE_VERSION) install

install-$(GIFLIB):
	@[ -d $(GIFLIB_VERSION) ] && $(MAKE) -C $(GIFLIB_VERSION) install

install-$(JANSSON):
	@[ -d $(JANSSON_VERSION) ] && $(MAKE) -C $(JANSSON_VERSION) install

install-$(LIBARCHIVE):
	@[ -d $(LIBARCHIVE_VERSION) ] && $(MAKE) -C $(LIBARCHIVE_VERSION) install

install-$(LIBCONFIG):
	@[ -d $(LIBCONFIG_VERSION) ] && $(MAKE) -C $(LIBCONFIG_VERSION)/lib install

install-$(LIBEXIF):
	@[ -d $(LIBEXIF_VERSION) ] && $(MAKE) -C $(LIBEXIF_VERSION) install

install-$(LIBJPEGTURBO):
	@[ -d $(LIBJPEGTURBO_VERSION) ] && $(MAKE) -C $(LIBJPEGTURBO_VERSION) install

install-$(LIBMAD):
	@[ -d $(LIBMAD_VERSION) ] && $(MAKE) -C $(LIBMAD_VERSION) install

install-$(LIBOGG):
	@[ -d $(LIBOGG_VERSION) ] && $(MAKE) -C $(LIBOGG_VERSION) install

install-$(LIBOPUS):
	@[ -d $(LIBOPUS_VERSION) ] && $(MAKE) -C $(LIBOPUS_VERSION) install

install-$(LIBPNG):
	@[ -d $(LIBPNG_VERSION) ] && $(MAKE) -C $(LIBPNG_VERSION) install

install-$(LIBXMP_LITE):
	@[ -d $(LIBXMP_LITE_VERSION) ] && $(MAKE) -C $(LIBXMP_LITE_VERSION) install

install-$(OPUSFILE):
	@[ -d $(OPUSFILE_VERSION) ] && $(MAKE) -C $(OPUSFILE_VERSION) install

install-$(TINYXML):
	@[ -d $(TINYXML_VERSION) ] && $(MAKE) -C $(TINYXML_VERSION) install

install-$(TREMOR):
	@[ -d $(TREMOR_VERSION) ] && $(MAKE) -C $(TREMOR_VERSION) install

install-$(MIKMOD):
	@[ -d $(MIKMOD_VERSION) ] && $(MAKE) -C $(MIKMOD_VERSION) install

install-$(XZ):
	@[ -d $(XZ_VERSION) ] && $(MAKE) -C $(XZ_VERSION) install

install: install-$(BZIP2) install-$(CURL) install-$(FREETYPE) install-$(GIFLIB) install-$(JANSSON) install-$(LIBARCHIVE) install-$(LIBCONFIG) install-$(LIBEXIF) install-$(LIBJPEGTURBO) install-$(LIBMAD) install-$(LIBOGG) install-$(LIBOPUS) install-$(LIBPNG) install-$(LIBXMP_LITE) install-$(OPUSFILE) install-$(TINYXML) install-$(TREMOR) install-$(MIKMOD) install-$(XZ)

$(DESTDIR)$(DEVKITPRO)/portlibs/armv6k/bin:
	$(INSTALL_DIR) $@

$(DESTDIR)$(DEVKITPRO)/portlibs/3ds/bin:
	$(INSTALL_DIR) $@

$(DESTDIR)$(DEVKITPRO)/portlibs/armv6k/bin/arm-none-eabi-pkg-config : $(DESTDIR)$(DEVKITPRO)/portlibs/armv6k/bin armv6k-arm-none-eabi-pkg-config
	$(INSTALL_DATA) armv6k-arm-none-eabi-pkg-config $@

$(DESTDIR)$(DEVKITPRO)/portlibs/3ds/bin/arm-none-eabi-pkg-config : $(DESTDIR)$(DEVKITPRO)/portlibs/3ds/bin 3ds-arm-none-eabi-pkg-config
	$(INSTALL_DATA) 3ds-arm-none-eabi-pkg-config $@

clean:
	@$(RM) -r $(BZIP2_VERSION)
	@$(RM) -r $(CURL_VERSION)
	@$(RM) -r $(FREETYPE_VERSION)
	@$(RM) -r $(GIFLIB_VERSION)
	@$(RM) -r $(JANSSON_VERSION)
	@$(RM) -r $(LIBARCHIVE_VERSION)
	@$(RM) -r $(LIBCONFIG_VERSION)
	@$(RM) -r $(LIBEXIF_VERSION)
	@$(RM) -r $(LIBJPEGTURBO_VERSION)
	@$(RM) -r $(LIBMAD_VERSION)
	@$(RM) -r $(LIBOGG_VERSION)
	@$(RM) -r $(LIBOPUS_VERSION)
	@$(RM) -r $(LIBPNG_VERSION)
	@$(RM) -r $(LIBXMP_LITE_VERSION)
	@$(RM) -r $(MBED_VERSION)-apache
	@$(RM) -r $(MBED_VERSION)-gpl
	@$(RM) -r $(OPUSFILE_VERSION)
	@$(RM) -r $(TINYXML_VERSION)
	@$(RM) -r $(TREMOR_VERSION)
	@$(RM) -r $(XZ_VERSION)
	@$(RM) -r $(MIKMOD_VERSION)
	@$(RM) -r $(ZLIB_VERSION)
