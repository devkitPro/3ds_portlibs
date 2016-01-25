FREETYPE              := freetype
FREETYPE_VERSION      := $(FREETYPE)-2.6.2
FREETYPE_SRC          := $(FREETYPE_VERSION).tar.bz2
FREETYPE_DOWNLOAD     := http://download.savannah.gnu.org/releases/freetype/freetype-2.6.2.tar.bz2

JANSSON               := jansson
JANSSON_VERSION       := $(JANSSON)-2.7
JANSSON_SRC           := $(JANSSON_VERSION).tar.gz
JANSSON_DOWNLOAD      := https://github.com/akheron/jansson/archive/v2.7.tar.gz

LIBEXIF               := libexif
LIBEXIF_VERSION       := $(LIBEXIF)-0.6.21
LIBEXIF_SRC           := $(LIBEXIF_VERSION).tar.bz2
LIBEXIF_DOWNLOAD      := http://sourceforge.net/projects/libexif/files/libexif/0.6.21/libexif-0.6.21.tar.bz2/download

LIBJPEGTURBO          := libjpeg-turbo
LIBJPEGTURBO_VERSION  := $(LIBJPEGTURBO)-1.4.2
LIBJPEGTURBO_SRC      := $(LIBJPEGTURBO_VERSION).tar.gz
LIBJPEGTURBO_DOWNLOAD := http://sourceforge.net/projects/libjpeg-turbo/files/1.4.2/libjpeg-turbo-1.4.2.tar.gz/download

LIBPNG                := libpng
LIBPNG_VERSION        := $(LIBPNG)-1.6.21
LIBPNG_SRC            := $(LIBPNG_VERSION).tar.xz
LIBPNG_DOWNLOAD       := http://prdownloads.sourceforge.net/libpng/libpng-1.6.21.tar.xz?download

LIBXMP_LITE           := libxmp-lite
LIBXMP_LITE_VERSION   := $(LIBXMP_LITE)-4.3.10
LIBXMP_LITE_SRC       := $(LIBXMP_LITE_VERSION).tar.gz
LIBXMP_LITE_DOWNLOAD  := http://sourceforge.net/projects/xmp/files/libxmp/4.3.10/libxmp-lite-4.3.10.tar.gz/download

SQLITE                := sqlite
SQLITE_VERSION        := $(SQLITE)-autoconf-3100200
SQLITE_SRC            := $(SQLITE_VERSION).tar.gz
SQLITE_DOWNLOAD       := https://www.sqlite.org/2016/sqlite-autoconf-3100200.tar.gz

TINYXML               := tinyxml2
TINYXML_VERSION       := $(TINYXML)-3.0.0
TINYXML_SRC           := $(TINYXML_VERSION).tar.gz
TINYXML_DOWNLOAD      := https://github.com/leethomason/tinyxml2/archive/3.0.0.tar.gz

ZLIB                  := zlib
ZLIB_VERSION          := $(ZLIB)-1.2.8
ZLIB_SRC              := $(ZLIB_VERSION).tar.gz
ZLIB_DOWNLOAD         := http://prdownloads.sourceforge.net/libpng/zlib-1.2.8.tar.gz?download

export PORTLIBS_PATH  := $(DEVKITPRO)/portlibs
export PATH           := $(DEVKITARM)/bin:$(PORTLIBS_PATH)/3ds/bin:$(PORTLIBS_PATH)/armv6k/bin:$(PATH)
export PKG_CONFIG     := $(PWD)/arm-none-eabi-pkg-config

export CFLAGS         := -march=armv6k -mtune=mpcore -mfloat-abi=hard -mtp=soft -O3 -mword-relocations
export CPPFLAGS       := -I$(PORTLIBS_PATH)/armv6k/include
export LDFLAGS        := -L$(PORTLIBS_PATH)/armv6k/lib

.PHONY: all install install-zlib clean download \
        $(FREETYPE) \
        $(JANSSON) \
        $(LIBEXIF) \
        $(LIBJPEGTURBO) \
        $(LIBPNG) \
        $(LIBXMP_LITE) \
        $(SQLITE) \
        $(TINYXML) \
        $(ZLIB)

all:
	@echo "Please choose one of the following targets:"
	@echo "  $(FREETYPE) (requires zlib to be installed)"
	@echo "  $(JANSSON)"
	@echo "  $(LIBEXIF)"
	@echo "  $(LIBJPEGTURBO)"
	@echo "  $(LIBPNG) (requires zlib to be installed)"
	@echo "  $(LIBXMP_LITE)"
	@echo "  $(SQLITE)"
	@echo "  $(TINYXML)"
	@echo "  $(ZLIB)"

download: $(FREETYPE_SRC) $(JANSSON_SRC) $(LIBEXIF_SRC) $(LIBJPEGTURBO_SRC) $(LIBPNG_SRC) $(LIBXMP_LITE_SRC) $(SQLITE_SRC) $(TINYXML_SRC) $(ZLIB_SRC)

DOWNLOAD = wget -O "$(1)" "$(2)" || curl -o "$(1)" "$(2)"

$(FREETYPE_SRC):
	$(call DOWNLOAD,$@,$(FREETYPE_DOWNLOAD))

$(JANSSON_SRC):
	@$(call DOWNLOAD,$@,$(JANSSON_DOWNLOAD))

$(LIBEXIF_SRC):
	@$(call DOWNLOAD,$@,$(LIBEXIF_DOWNLOAD))

$(LIBJPEGTURBO_SRC):
	@$(call DOWNLOAD,$@,$(LIBJPEGTURBO_DOWNLOAD))

$(LIBPNG_SRC):
	@$(call DOWNLOAD,$@,$(LIBPNG_DOWNLOAD))

$(LIBXMP_LITE_SRC):
	@$(call DOWNLOAD,$@,$(LIBXMP_LITE_DOWNLOAD))

$(SQLITE_SRC):
	@$(call DOWNLOAD,$@,$(SQLITE_DOWNLOAD))

$(TINYXML_SRC):
	@$(call DOWNLOAD,$@,$(TINYXML_DOWNLOAD))

$(ZLIB_SRC):
	@$(call DOWNLOAD,$@,$(ZLIB_DOWNLOAD))

$(FREETYPE): $(FREETYPE_SRC)
	@[ -d $(FREETYPE_VERSION) ] || tar -xjf $<
	@cd $(FREETYPE_VERSION) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static --without-harfbuzz
	@$(MAKE) -C $(FREETYPE_VERSION)

$(JANSSON): $(JANSSON_SRC)
	@[ -d $(JANSSON_VERSION) ] || tar -xzf $<
	@cd $(JANSSON_VERSION) && \
	 autoreconf -i && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(JANSSON_VERSION)

$(LIBEXIF): $(LIBEXIF_SRC)
	@[ -d $(LIBEXIF_VERSION) ] || tar -xjf $<
	@cd $(LIBEXIF_VERSION) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBEXIF_VERSION)

$(LIBJPEGTURBO): $(LIBJPEGTURBO_SRC)
	@[ -d $(LIBJPEGTURBO_VERSION) ] || tar -xzf $<
	@cd $(LIBJPEGTURBO_VERSION) && \
	 ./configure --prefix=$(PORTLIBS_PATH)/armv6k --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) CFLAGS+="\"-Drandom()=rand()\"" -C $(LIBJPEGTURBO_VERSION)

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

# sqlite won't work with -ffast-math
$(SQLITE): $(SQLITE_SRC)
	@[ -d $(SQLITE_VERSION) ] || tar -xzf $<
	@cd $(SQLITE_VERSION) && \
	 CFLAGS="$(filter-out -ffast-math,$(CFLAGS)) -DSQLITE_OS_OTHER=1" ./configure --disable-shared --disable-threadsafe --disable-dynamic-extensions --host=arm-none-eabi --prefix=$(PORTLIBS_PATH)/armv6k
	# avoid building sqlite3 shell
	@$(MAKE) -C $(SQLITE_VERSION) libsqlite3.la

# tinyxml2 uses cmake
$(TINYXML): $(TINYXML_SRC)
	@[ -d $(TINYXML_VERSION) ] || tar -xzf $<
	@cd $(TINYXML_VERSION) && cmake -DCMAKE_SYSTEM_NAME=Generic -DCMAKE_C_COMPILER=$(DEVKITARM)/bin/arm-none-eabi-gcc -DCMAKE_CXX_COMPILER=$(DEVKITARM)/bin/arm-none-eabi-g++ -DCMAKE_INSTALL_PREFIX=$(PORTLIBS_PATH)/armv6k .

$(ZLIB): $(ZLIB_SRC)
	@[ -d $(ZLIB_VERSION) ] || tar -xzf $<
	@cd $(ZLIB_VERSION) && \
	 CHOST=arm-none-eabi ./configure --static --prefix=$(PORTLIBS_PATH)/armv6k
	@$(MAKE) -C $(ZLIB_VERSION)

install-zlib: 
	@$(MAKE) -C $(ZLIB_VERSION) install

install:
	@[ ! -d $(FREETYPE_VERSION) ] || $(MAKE) -C $(FREETYPE_VERSION) install
	@[ ! -d $(JANSSON_VERSION) ] || $(MAKE) -C $(JANSSON_VERSION) install
	@[ ! -d $(LIBEXIF_VERSION) ] || $(MAKE) -C $(LIBEXIF_VERSION) install
	@[ ! -d $(LIBJPEGTURBO_VERSION) ] || $(MAKE) -C $(LIBJPEGTURBO_VERSION) install
	@[ ! -d $(LIBPNG_VERSION) ] || $(MAKE) -C $(LIBPNG_VERSION) install
	@[ ! -d $(LIBXMP_LITE_VERSION) ] || $(MAKE) -C $(LIBXMP_LITE_VERSION) install
	@[ ! -d $(SQLITE_VERSION) ] || $(MAKE) -C $(SQLITE_VERSION) install-libLTLIBRARIES install-data
	@[ ! -d $(TINYXML_VERSION) ] || $(MAKE) -C $(TINYXML_VERSION) install

clean:
	@$(RM) -r $(FREETYPE_VERSION)
	@$(RM) -r $(JANSSON_VERSION)
	@$(RM) -r $(LIBEXIF_VERSION)
	@$(RM) -r $(LIBJPEGTURBO_VERSION)
	@$(RM) -r $(LIBPNG_VERSION)
	@$(RM) -r $(LIBXMP_LITE_VERSION)
	@$(RM) -r $(SQLITE_VERSION)
	@$(RM) -r $(TINYXML_VERSION)
	@$(RM) -r $(ZLIB_VERSION)
