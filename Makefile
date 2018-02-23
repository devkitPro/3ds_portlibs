INSTALL                = /usr/bin/install -c
INSTALL_DATA           = $(INSTALL) -Dm644
INSTALL_DIR            = $(INSTALL) -dm755

BZIP2                 := bzip2
BZIP2_VERSION         := 1.0.6
BZIP2_SRC             := $(BZIP2)-$(BZIP2_VERSION).tar.gz
BZIP2_DOWNLOAD        := http://www.bzip.org/$(BZIP2_VERSION)/$(BZIP2_SRC)
BZIP2_DIR             := $(BZIP2)-$(BZIP2_VERSION)

CURL                  := curl
CURL_VERSION          := 7.58.0
CURL_SRC              := $(CURL)-$(CURL_VERSION).tar.bz2
CURL_DOWNLOAD         := https://github.com/curl/curl/releases/download/curl-$(subst .,_,$(CURL_VERSION))/$(CURL_SRC)
CURL_DIR              := $(CURL)-$(CURL_VERSION)

FREETYPE              := freetype
FREETYPE_VERSION      := 2.6.2
FREETYPE_SRC          := $(FREETYPE)-$(FREETYPE_VERSION).tar.bz2
FREETYPE_DOWNLOAD     := http://download.savannah.gnu.org/releases/freetype/$(FREETYPE_SRC)
FREETYPE_DIR          := $(FREETYPE)-$(FREETYPE_VERSION)

GIFLIB                := giflib
GIFLIB_VERSION        := 5.1.1
GIFLIB_SRC            := $(GIFLIB)-$(GIFLIB_VERSION).tar.bz2
GIFLIB_DOWNLOAD       := http://sourceforge.net/projects/giflib/files/$(GIFLIB_SRC)
GIFLIB_DIR            := $(GIFLIB)-$(GIFLIB_VERSION)

JANSSON               := jansson
JANSSON_VERSION       := 2.10
JANSSON_SRC           := $(JANSSON)-$(JANSSON_VERSION).tar.bz2
JANSSON_DOWNLOAD      := http://www.digip.org/jansson/releases/$(JANSSON_SRC)
JANSSON_DIR           := $(JANSSON)-$(JANSSON_VERSION)

LIBARCHIVE            := libarchive
LIBARCHIVE_VERSION    := 3.1.2
LIBARCHIVE_SRC        := $(LIBARCHIVE)-$(LIBARCHIVE_VERSION).tar.gz
LIBARCHIVE_DOWNLOAD   := http://www.libarchive.org/downloads/$(LIBARCHIVE_SRC)
LIBARCHIVE_DIR        := $(LIBARCHIVE)-$(LIBARCHIVE_VERSION)

LIBCONFIG             := libconfig
LIBCONFIG_VERSION     := 1.5
LIBCONFIG_SRC         := $(LIBCONFIG)-$(LIBCONFIG_VERSION).tar.gz
LIBCONFIG_DOWNLOAD    := https://github.com/hyperrealm/libconfig/archive/v$(LIBCONFIG_VERSION).tar.gz
LIBCONFIG_DIR         := $(LIBCONFIG)-$(LIBCONFIG_VERSION)

LIBEXIF               := libexif
LIBEXIF_VERSION       := 0.6.21
LIBEXIF_SRC           := $(LIBEXIF)-$(LIBEXIF_VERSION).tar.bz2
LIBEXIF_DOWNLOAD      := http://sourceforge.net/projects/libexif/files/libexif/$(LIBEXIF_VERSION)/$(LIBEXIF_SRC)/download
LIBEXIF_DIR           := $(LIBEXIF)-$(LIBEXIF_VERSION)

LIBJPEGTURBO          := libjpeg-turbo
LIBJPEGTURBO_VERSION  := 1.4.2
LIBJPEGTURBO_SRC      := $(LIBJPEGTURBO)-$(LIBJPEGTURBO_VERSION).tar.gz
LIBJPEGTURBO_DOWNLOAD := http://sourceforge.net/projects/libjpeg-turbo/files/$(LIBJPEGTURBO_VERSION)/$(LIBJPEGTURBO_SRC)/download
LIBJPEGTURBO_DIR      := $(LIBJPEGTURBO)-$(LIBJPEGTURBO_VERSION)

LIBMAD                := libmad
LIBMAD_VERSION        := 0.15.1b
LIBMAD_SRC            := $(LIBMAD)-$(LIBMAD_VERSION).tar.gz
LIBMAD_DOWNLOAD       := http://sourceforge.net/projects/mad/files/libmad/$(LIBMAD_VERSION)/$(LIBMAD_SRC)
LIBMAD_DIR            := $(LIBMAD)-$(LIBMAD_VERSION)

LIBOGG                := libogg
LIBOGG_VERSION        := 1.3.2
LIBOGG_SRC            := $(LIBOGG)-$(LIBOGG_VERSION).tar.xz
LIBOGG_DOWNLOAD       := http://downloads.xiph.org/releases/ogg/$(LIBOGG_SRC)
LIBOGG_DIR            := $(LIBOGG)-$(LIBOGG_VERSION)

LIBOPUS               := libopus
LIBOPUS_VERSION       := 1.2.1
LIBOPUS_SRC           := opus-$(LIBOPUS_VERSION).tar.gz
LIBOPUS_DOWNLOAD      := https://archive.mozilla.org/pub/opus/$(LIBOPUS_SRC)
LIBOPUS_DIR           := opus-$(LIBOPUS_VERSION)

LIBPNG                := libpng
LIBPNG_VERSION        := 1.6.21
LIBPNG_SRC            := $(LIBPNG)-$(LIBPNG_VERSION).tar.xz
LIBPNG_DOWNLOAD       := http://prdownloads.sourceforge.net/libpng/$(LIBPNG_SRC)?download
LIBPNG_DIR            := $(LIBPNG)-$(LIBPNG_VERSION)

LIBXMP_LITE           := libxmp-lite
LIBXMP_LITE_VERSION   := 4.3.10
LIBXMP_LITE_SRC       := $(LIBXMP_LITE)-$(LIBXMP_LITE_VERSION).tar.gz
LIBXMP_LITE_DOWNLOAD  := http://sourceforge.net/projects/xmp/files/libxmp/$(LIBXMP_LITE_VERSION)/$(LIBXMP_LITE_SRC)/download
LIBXMP_LITE_DIR       := $(LIBXMP_LITE)-$(LIBXMP_LITE_VERSION)

MBED                  := mbedtls
MBED_VERSION          := 2.7.0
MBED_DIR              := $(MBED)-$(MBED_VERSION)

MBED_APACHE           := $(MBED)-apache
MBED_APACHE_SRC       := $(MBED)-$(MBED_VERSION)-apache.tgz
MBED_APACHE_DOWNLOAD  := https://tls.mbed.org/download/$(MBED_APACHE_SRC)

MBED_GPL              := $(MBED)-gpl
MBED_GPL_SRC          := $(MBED)-$(MBED_VERSION)-gpl.tgz
MBED_GPL_DOWNLOAD     := https://tls.mbed.org/download/$(MBED_GPL_SRC)

OPUSFILE              := opusfile
OPUSFILE_VERSION      := 0.9
OPUSFILE_SRC          := $(OPUSFILE)-$(OPUSFILE_VERSION).tar.gz
OPUSFILE_DOWNLOAD     := https://downloads.xiph.org/releases/opus/$(OPUSFILE_SRC)
OPUSFILE_DIR          := $(OPUSFILE)-$(OPUSFILE_VERSION)

TINYXML               := tinyxml2
TINYXML_VERSION       := 3.0.0
TINYXML_SRC           := $(TINYXML)-$(TINYXML_VERSION).tar.gz
TINYXML_DOWNLOAD      := https://github.com/leethomason/tinyxml2/archive/$(TINYXML_VERSION).tar.gz
TINYXML_DIR           := $(TINYXML)-$(TINYXML_VERSION)

# Tremor Low Memory Branch
TREMOR                := tremor
TREMOR_VERSION        := 293fd1c
TREMOR_SRC            := $(TREMOR)-$(TREMOR_VERSION).tar.gz
TREMOR_DOWNLOAD       := https://git.xiph.org/?p=tremor.git;a=snapshot;h=293fd1c04f9d4489be6d4b2b1ca8698f2f902e8e;sf=tgz
TREMOR_DIR            := $(TREMOR)-$(TREMOR_VERSION)

XZ                    := xz
XZ_VERSION            := 5.2.2
XZ_SRC                := $(XZ)-$(XZ_VERSION).tar.xz
XZ_DOWNLOAD           := http://tukaani.org/xz/$(XZ_SRC)
XZ_DIR                := $(XZ)-$(XZ_VERSION)

MIKMOD                := libmikmod
MIKMOD_VERSION        := 3.3.11.1
MIKMOD_SRC            := $(MIKMOD)-$(MIKMOD_VERSION).tar.gz
MIKMOD_DOWNLOAD       := http://sourceforge.net/projects/mikmod/files/libmikmod/$(MIKMOD_VERSION)/$(MIKMOD_SRC)/download
MIKMOD_DIR            := $(MIKMOD)-$(MIKMOD_VERSION)

ZLIB                  := zlib
ZLIB_VERSION          := 1.2.8
ZLIB_SRC              := $(ZLIB)-$(ZLIB_VERSION).tar.gz
ZLIB_DOWNLOAD         := http://prdownloads.sourceforge.net/libpng/$(ZLIB_SRC)?download
ZLIB_DIR              := $(ZLIB)-$(ZLIB_VERSION)

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
	@[ -d $(BZIP2_DIR) ] || tar -xzf $<
	@cd $(BZIP2_DIR)
	@$(MAKE) -C $(BZIP2_DIR) CC=arm-none-eabi-gcc AR=arm-none-eabi-ar RANLIB=arm-none-eabi-ranlib CPPFLAGS="$(CPPFLAGS)" CFLAGS="-D_FILE_OFFSET_BITS=64 -Winline $(CFLAGS)" libbz2.a

$(CURL): $(CURL_SRC)
	@[ -d $(CURL_DIR) ] || tar -xjf $<
	@cd $(CURL_DIR) && \
	 patch -Np1 -i ../curl-7.58.0.patch && \
	 ./configure CFLAGS="$(CFLAGS)" CPPFLAGS="$(CPPFLAGS)" --prefix=$(PORTLIBS_PATH)/3ds --host=arm-none-eabi --disable-shared --enable-static --disable-ipv6 --disable-unix-sockets --disable-manual --disable-ntlm-wb --disable-threaded-resolver --with-mbedtls=$(PORTLIBS_PATH)/3ds
	@$(MAKE) -C $(CURL_DIR)/lib

$(FREETYPE): $(FREETYPE_SRC)
	@[ -d $(FREETYPE_DIR) ] || tar -xjf $<
	@cd $(FREETYPE_DIR) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static --without-harfbuzz
	@$(MAKE) -C $(FREETYPE_DIR)

$(GIFLIB): $(GIFLIB_SRC)
	@[ -d $(GIFLIB_DIR) ] || tar -xjf $<
	@cd $(GIFLIB_DIR) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(GIFLIB_DIR)

$(JANSSON): $(JANSSON_SRC)
	@[ -d $(JANSSON_DIR) ] || tar -xjf $<
	@cd $(JANSSON_DIR) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(JANSSON_DIR)

$(LIBARCHIVE): $(LIBARCHIVE_SRC)
	@[ -d $(LIBARCHIVE_DIR) ] || tar -xzf $<
	@cd $(LIBARCHIVE_DIR) && \
	patch -Np1 -i ../libarchive-$(LIBARCHIVE_VERSION).patch && \
	./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static --without-nettle --without-openssl --without-xml2 --without-expat --without-iconv --disable-bsdtar --disable-bsdcpio --disable-acl
	@$(MAKE) -C $(LIBARCHIVE_DIR)

$(LIBCONFIG): $(LIBCONFIG_SRC)
	@[ -d $(LIBCONFIG_DIR) ] || tar -xzf $<
	@cd $(LIBCONFIG_DIR) && \
	 autoreconf -i && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-cxx --disable-examples
	@$(MAKE) -C $(LIBCONFIG_DIR)/lib

$(LIBEXIF): $(LIBEXIF_SRC)
	@[ -d $(LIBEXIF_DIR) ] || tar -xjf $<
	@cd $(LIBEXIF_DIR) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBEXIF_DIR)

$(LIBJPEGTURBO): $(LIBJPEGTURBO_SRC)
	@[ -d $(LIBJPEGTURBO_DIR) ] || tar -xzf $<
	@cd $(LIBJPEGTURBO_DIR) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBJPEGTURBO_DIR)

$(LIBMAD): $(LIBMAD_SRC)
	@[ -d $(LIBMAD_DIR) ] || tar -xzf $<
	@cd $(LIBMAD_DIR) && \
	 patch -Np1 -i ../libmad-$(LIBMAD_VERSION).patch && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBMAD_DIR)

$(LIBOGG): $(LIBOGG_SRC)
	@[ -d $(LIBOGG_DIR) ] || tar -xJf $<
	@cd $(LIBOGG_DIR) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBOGG_DIR)

$(LIBOPUS): $(LIBOPUS_SRC)
	@[ -d $(LIBOPUS_DIR) ] || tar -xzf $<
	@cd $(LIBOPUS_DIR) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBOPUS_DIR)

$(LIBPNG): $(LIBPNG_SRC)
	@[ -d $(LIBPNG_DIR) ] || tar -xJf $<
	@cd $(LIBPNG_DIR) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBPNG_DIR)

$(LIBXMP_LITE): $(LIBXMP_LITE_SRC)
	@[ -d $(LIBXMP_LITE_DIR) ] || tar -xzf $<
	@cd $(LIBXMP_LITE_DIR) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBXMP_LITE_DIR)

$(MBED_APACHE): $(MBED_APACHE_SRC)
	@[ -d $(MBED_DIR)-apache ] || { tar -xzf $< && mv $(MBED_DIR) $(MBED_DIR)-apache; }
	@cd $(MBED_DIR)-apache && \
	 patch -Np1 -i ../libmbedtls-$(MBED_VERSION).patch && \
	 cmake -DCMAKE_SYSTEM_NAME=Generic -DCMAKE_C_COMPILER=$(DEVKITARM)/bin/arm-none-eabi-gcc \
	 -DCMAKE_CXX_COMPILER=$(DEVKITARM)/bin/arm-none-eabi-g++ \
	 -DCMAKE_INSTALL_PREFIX=$(PORTLIBS_PATH)/3ds -DCMAKE_C_FLAGS="$(CFLAGS) $(CPPFLAGS)" \
	 -DCMAKE_CXX_FLAGS="$(CFLAGS) -fno-exceptions -fno-rtti" \
	 -DZLIB_ROOT="$(PORTLIBS_PATH)/armv6k" \
	 -DENABLE_ZLIB_SUPPORT=TRUE -DENABLE_TESTING=FALSE -DENABLE_PROGRAMS=FALSE .
	@$(MAKE) -C $(MBED_DIR)-apache

$(MBED_GPL): $(MBED_GPL_SRC)
	@[ -d $(MBED_DIR)-gpl ] || { tar -xzf $< && mv $(MBED_DIR) $(MBED_DIR)-gpl; }
	@cd $(MBED_DIR)-gpl && \
	 patch -Np1 -i ../libmbedtls-$(MBED_VERSION).patch && \
	 cmake -DCMAKE_SYSTEM_NAME=Generic -DCMAKE_C_COMPILER=$(DEVKITARM)/bin/arm-none-eabi-gcc \
	 -DCMAKE_CXX_COMPILER=$(DEVKITARM)/bin/arm-none-eabi-g++ \
	 -DCMAKE_INSTALL_PREFIX=$(PORTLIBS_PATH)/3ds -DCMAKE_C_FLAGS="$(CFLAGS) $(CPPFLAGS)" \
	 -DCMAKE_CXX_FLAGS="$(CFLAGS) -fno-exceptions -fno-rtti" \
	 -DZLIB_ROOT="$(PORTLIBS_PATH)/armv6k" \
	 -DENABLE_ZLIB_SUPPORT=TRUE -DENABLE_TESTING=FALSE -DENABLE_PROGRAMS=FALSE .
	@$(MAKE) -C $(MBED_DIR)-gpl

$(OPUSFILE): $(OPUSFILE_SRC)
	@[ -d $(OPUSFILE_DIR) ] || tar -xzf $<
	@cd $(OPUSFILE_DIR) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(OPUSFILE_DIR)

# tinyxml2 uses cmake
$(TINYXML): $(TINYXML_SRC)
	@[ -d $(TINYXML_DIR) ] || tar -xzf $<
	@cd $(TINYXML_DIR) && cmake -DCMAKE_SYSTEM_NAME=Generic -DCMAKE_C_COMPILER=$(DEVKITARM)/bin/arm-none-eabi-gcc -DCMAKE_CXX_COMPILER=$(DEVKITARM)/bin/arm-none-eabi-g++ -DCMAKE_INSTALL_PREFIX=$(PORTLIBS_PATH)/armv6k -DCMAKE_C_FLAGS="$(CFLAGS)" -DCMAKE_CXX_FLAGS="$(CFLAGS) -fno-exceptions -fno-rtti" . && make

$(TREMOR): $(TREMOR_SRC)
	@[ -d $(TREMOR_DIR) ] || tar -xzf $<
	@cd $(TREMOR_DIR) && \
	 ./autogen.sh --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --disable-oggtest
	@$(MAKE) -C $(TREMOR_DIR)

$(XZ): $(XZ_SRC)
	@[ -d $(XZ_DIR) ] || tar -xJf $<
	@cd $(XZ_DIR) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static --disable-xz --enable-threads=no
	@$(MAKE) -C $(XZ_DIR)

$(MIKMOD): $(MIKMOD_SRC)
	@[ -d $(MIKMOD_DIR) ] || tar -xzf $<
	@cd $(MIKMOD_DIR) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(MIKMOD_DIR)

$(ZLIB): $(ZLIB_SRC)
	@[ -d $(ZLIB_DIR) ] || tar -xzf $<
	@cd $(ZLIB_DIR) && \
	 CHOST=arm-none-eabi ./configure --static --prefix=$(PORTLIBS_PATH)/armv6k
	@$(MAKE) -C $(ZLIB_DIR)

install-$(ZLIB):
	@$(MAKE) -C $(ZLIB_DIR) install

install-$(MBED_APACHE):
	@$(MAKE) -C $(MBED_DIR)-apache install

install-$(MBED_GPL):
	@$(MAKE) -C $(MBED_DIR)-gpl install

install-$(BZIP2):
	@if [ -d $(BZIP2_DIR) ]; then \
		$(INSTALL_DATA) $(BZIP2_DIR)/bzlib.h $(DESTDIR)$(PORTLIBS_PATH)/armv6k/include/bzlib.h; \
		$(INSTALL_DATA) $(BZIP2_DIR)/libbz2.a $(DESTDIR)$(PORTLIBS_PATH)/armv6k/lib/libbz2.a; \
	fi

install-$(CURL):
	@[ -d $(CURL_VERSION) ] && { $(MAKE) -c $(CURL_DIR)/lib install && $(MAKE) -C $(CURL_VERSION)/include install; }

install-$(FREETYPE):
	@[ -d $(FREETYPE_DIR) ] && $(MAKE) -C $(FREETYPE_DIR) install

install-$(GIFLIB):
	@[ -d $(GIFLIB_DIR) ] && $(MAKE) -C $(GIFLIB_DIR) install

install-$(JANSSON):
	@[ -d $(JANSSON_DIR) ] && $(MAKE) -C $(JANSSON_DIR) install

install-$(LIBARCHIVE):
	@[ -d $(LIBARCHIVE_DIR) ] && $(MAKE) -C $(LIBARCHIVE_DIR) install

install-$(LIBCONFIG):
	@[ -d $(LIBCONFIG_DIR) ] && $(MAKE) -C $(LIBCONFIG_DIR)/lib install

install-$(LIBEXIF):
	@[ -d $(LIBEXIF_DIR) ] && $(MAKE) -C $(LIBEXIF_DIR) install

install-$(LIBJPEGTURBO):
	@[ -d $(LIBJPEGTURBO_DIR) ] && $(MAKE) -C $(LIBJPEGTURBO_DIR) install

install-$(LIBMAD):
	@[ -d $(LIBMAD_DIR) ] && $(MAKE) -C $(LIBMAD_DIR) install

install-$(LIBOGG):
	@[ -d $(LIBOGG_DIR) ] && $(MAKE) -C $(LIBOGG_DIR) install

install-$(LIBOPUS):
	@[ -d $(LIBOPUS_DIR) ] && $(MAKE) -C $(LIBOPUS_DIR) install

install-$(LIBPNG):
	@[ -d $(LIBPNG_DIR) ] && $(MAKE) -C $(LIBPNG_DIR) install

install-$(LIBXMP_LITE):
	@[ -d $(LIBXMP_LITE_DIR) ] && $(MAKE) -C $(LIBXMP_LITE_DIR) install

install-$(OPUSFILE):
	@[ -d $(OPUSFILE_DIR) ] && $(MAKE) -C $(OPUSFILE_DIR) install

install-$(TINYXML):
	@[ -d $(TINYXML_DIR) ] && $(MAKE) -C $(TINYXML_DIR) install

install-$(TREMOR):
	@[ -d $(TREMOR_DIR) ] && $(MAKE) -C $(TREMOR_DIR) install

install-$(MIKMOD):
	@[ -d $(MIKMOD_DIR) ] && $(MAKE) -C $(MIKMOD_DIR) install

install-$(XZ):
	@[ -d $(XZ_DIR) ] && $(MAKE) -C $(XZ_DIR) install

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
	@$(RM) -r $(BZIP2_DIR)
	@$(RM) -r $(CURL_DIR)
	@$(RM) -r $(FREETYPE_DIR)
	@$(RM) -r $(GIFLIB_DIR)
	@$(RM) -r $(JANSSON_DIR)
	@$(RM) -r $(LIBARCHIVE_DIR)
	@$(RM) -r $(LIBCONFIG_DIR)
	@$(RM) -r $(LIBEXIF_DIR)
	@$(RM) -r $(LIBJPEGTURBO_DIR)
	@$(RM) -r $(LIBMAD_DIR)
	@$(RM) -r $(LIBOGG_DIR)
	@$(RM) -r $(LIBOPUS_DIR)
	@$(RM) -r $(LIBPNG_DIR)
	@$(RM) -r $(LIBXMP_LITE_DIR)
	@$(RM) -r $(OPUSFILE_DIR)
	@$(RM) -r $(MBED_DIR)-apache
	@$(RM) -r $(MBED_DIR)-gpl
	@$(RM) -r $(TINYXML_DIR)
	@$(RM) -r $(TREMOR_DIR)
	@$(RM) -r $(XZ_DIR)
	@$(RM) -r $(MIKMOD_DIR)
	@$(RM) -r $(ZLIB_DIR)
