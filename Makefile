FREETYPE             := freetype
FREETYPE_VERSION     := $(FREETYPE)-2.5.4
FREETYPE_SRC         := $(FREETYPE_VERSION).tar.bz2

LIBEXIF              := libexif
LIBEXIF_VERSION      := $(LIBEXIF)-0.6.21
LIBEXIF_SRC          := $(LIBEXIF_VERSION).tar.bz2

LIBJPEGTURBO         := libjpeg-turbo
LIBJPEGTURBO_VERSION := $(LIBJPEGTURBO)-1.3.1
LIBJPEGTURBO_SRC     := $(LIBJPEGTURBO_VERSION).tar.gz

LIBPNG               := libpng
LIBPNG_VERSION       := $(LIBPNG)-1.6.15
LIBPNG_SRC           := $(LIBPNG_VERSION).tar.xz

SQLITE               := sqlite
SQLITE_VERSION       := $(SQLITE)-autoconf-3080704
SQLITE_SRC           := $(SQLITE_VERSION).tar.gz

ZLIB                 := zlib
ZLIB_VERSION         := $(ZLIB)-1.2.8
ZLIB_SRC             := $(ZLIB_VERSION).tar.gz

export PORTLIBS        := $(DEVKITPRO)/portlibs/armv6k
export PATH            := $(DEVKITARM)/bin:$(PORTLIBS)/bin:$(PATH)
export PKG_CONFIG_PATH := $(PORTLIBS)/lib/pkgconfig
export CFLAGS          := -march=armv6k -mtune=mpcore -mfloat-abi=hard -O3 -mword-relocations
export CPPFLAGS        := -I$(PORTLIBS)/include
export LDFLAGS         := -L$(PORTLIBS)/lib

.PHONY: all install install-zlib clean \
        $(FREETYPE) \
        $(LIBEXIF) \
        $(LIBJPEGTURBO) \
        $(LIBPNG) \
        $(SQLITE) \
        $(ZLIB)

all:
	@echo "Please choose one of the following targets:"
	@echo "  $(FREETYPE) (requires zlib to be installed)"
	@echo "  $(LIBEXIF)"
	@echo "  $(LIBJPEGTURBO)"
	@echo "  $(LIBPNG) (requires zlib to be installed)"
	@echo "  $(SQLITE)"
	@echo "  $(ZLIB)"

$(FREETYPE): $(FREETYPE_SRC)
	@[ -d $(FREETYPE_VERSION) ] || tar -xaf $<
	@cd $(FREETYPE_VERSION) && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(FREETYPE_VERSION)

$(LIBEXIF): $(LIBEXIF_SRC)
	@[ -d $(LIBEXIF_VERSION) ] || tar -xaf $<
	@cd $(LIBEXIF_VERSION) && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBEXIF_VERSION)

$(LIBJPEGTURBO): $(LIBJPEGTURBO_SRC)
	@[ -d $(LIBJPEGTURBO_VERSION) ] || tar -xaf $<
	@cd $(LIBJPEGTURBO_VERSION) && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) CFLAGS+="\"-Drandom()=rand()\"" -C $(LIBJPEGTURBO_VERSION)

$(LIBPNG): $(LIBPNG_SRC)
	@[ -d $(LIBPNG_VERSION) ] || tar -xaf $<
	@cd $(LIBPNG_VERSION) && \
	 ./configure --prefix=$(PORTLIBS) --host=arm-none-eabi --disable-shared --enable-static
	@$(MAKE) -C $(LIBPNG_VERSION)

# sqlite won't work with -ffast-math
$(SQLITE): $(SQLITE_SRC)
	@[ -d $(SQLITE_VERSION) ] || tar -xaf $<
	@cd $(SQLITE_VERSION) && \
	 CFLAGS="$(filter-out -ffast-math,$(CFLAGS)) -DSQLITE_OS_OTHER=1" ./configure --disable-shared --disable-threadsafe --disable-dynamic-extensions --host=arm-none-eabi --prefix=$(PORTLIBS)
	# avoid building sqlite3 shell
	@$(MAKE) -C $(SQLITE_VERSION) libsqlite3.la

$(ZLIB): $(ZLIB_SRC)
	@[ -d $(ZLIB_VERSION) ] || tar -xaf $<
	@cd $(ZLIB_VERSION) && \
	 CHOST=arm-none-eabi ./configure --static --prefix=$(PORTLIBS)
	@$(MAKE) -C $(ZLIB_VERSION)

install-zlib: 
	@$(MAKE) -C $(ZLIB_VERSION) install

install:
	@[ ! -d $(FREETYPE_VERSION) ] || $(MAKE) -C $(FREETYPE_VERSION) install
	@[ ! -d $(LIBEXIF_VERSION) ] || $(MAKE) -C $(LIBEXIF_VERSION) install
	@[ ! -d $(LIBJPEGTURBO_VERSION) ] || $(MAKE) -C $(LIBJPEGTURBO_VERSION) install
	@[ ! -d $(LIBPNG_VERSION) ] || $(MAKE) -C $(LIBPNG_VERSION) install
	@[ ! -d $(SQLITE_VERSION) ] || $(MAKE) -C $(SQLITE_VERSION) install-libLTLIBRARIES install-data

clean:
	@$(RM) -r $(FREETYPE_VERSION)
	@$(RM) -r $(LIBEXIF_VERSION)
	@$(RM) -r $(LIBJPEGTURBO_VERSION)
	@$(RM) -r $(LIBPNG_VERSION)
	@$(RM) -r $(SQLITE_VERSION)
	@$(RM) -r $(ZLIB_VERSION)
