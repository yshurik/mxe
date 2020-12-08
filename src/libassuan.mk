# This file is part of MXE. See LICENSE.md for licensing information.

PKG             := libassuan
$(PKG)_WEBSITE  := https://www.gnupg.org/related_software/libassuan/
$(PKG)_DESCR    := libassuan
$(PKG)_IGNORE   :=
<<<<<<< HEAD
$(PKG)_VERSION  := 2.5.1
$(PKG)_CHECKSUM := 47f96c37b4f2aac289f0bc1bacfa8bd8b4b209a488d3d15e2229cb6cc9b26449
=======
$(PKG)_VERSION  := 2.5.3
$(PKG)_CHECKSUM := 91bcb0403866b4e7c4bc1cc52ed4c364a9b5414b3994f718c70303f7f765e702
>>>>>>> 2020-12-08
$(PKG)_SUBDIR   := libassuan-$($(PKG)_VERSION)
$(PKG)_FILE     := libassuan-$($(PKG)_VERSION).tar.bz2
$(PKG)_URL      := https://gnupg.org/ftp/gcrypt/libassuan/$($(PKG)_FILE)
$(PKG)_URL_2    := https://www.mirrorservice.org/sites/ftp.gnupg.org/gcrypt/libassuan/$($(PKG)_FILE)
$(PKG)_DEPS     := cc gettext libgpg_error

define $(PKG)_UPDATE
    $(WGET) -q -O- 'https://gnupg.org/ftp/gcrypt/libassuan/' | \
<<<<<<< HEAD
    $(SED) -n 's,.*libassuan-\([1-9]\.[1-9][0-9][^>]*\)\.tar.*,\1,p' | \
=======
    $(SED) -n 's,.*libassuan-\([1-9]\.[1-9]\.[0-9][^>]*\)\.tar.*,\1,p' | \
>>>>>>> 2020-12-08
    head -1
endef

define $(PKG)_BUILD
<<<<<<< HEAD
    cd '$(1)' && ./configure \
=======
    cd '$(1)' && GPG_ERROR_CONFIG=$(PREFIX)/bin/$(TARGET)-gpg-error-config ./configure \
>>>>>>> 2020-12-08
        $(MXE_CONFIGURE_OPTS) \
        --disable-nls \
        --disable-languages
    $(MAKE) -C '$(1)/src' -j '$(JOBS)' bin_PROGRAMS= sbin_PROGRAMS= noinst_PROGRAMS=
    $(MAKE) -C '$(1)/src' -j 1 install bin_PROGRAMS= sbin_PROGRAMS= noinst_PROGRAMS=
    ln -sf '$(PREFIX)/$(TARGET)/bin/libassuan-config' '$(PREFIX)/bin/$(TARGET)-libassuan-config'
endef
