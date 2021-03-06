# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2018-present Team LibreELEC (https://libreelec.tv)

. $(get_pkg_directory libXdamage)/package.mk

PKG_NAME="chrome-libXdamage"
PKG_LONGDESC="libXdamage for chrome"
PKG_URL=""

unpack() {
  mkdir -p $PKG_BUILD
  tar --strip-components=1 -xf $SOURCES/${PKG_NAME:7}/${PKG_NAME:7}-$PKG_VERSION.tar.bz2 -C $PKG_BUILD
}

PKG_CONFIGURE_OPTS_TARGET="$PKG_CONFIGURE_OPTS_TARGET \
                           --disable-static \
                           --enable-shared"
