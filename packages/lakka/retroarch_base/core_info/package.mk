PKG_NAME="core_info"
PKG_VERSION="06dac6318c067a6a40e2ea1e1260e74681ada844"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/libretro/libretro-core-info"
PKG_URL="https://github.com/libretro/libretro-core-info/archive/${PKG_VERSION}.tar.gz"
PKG_LONGDESC="Info files for libretro cores"
PKG_DEPENDS_TARGET="gcc:host"
PKG_TOOLCHAIN="manual"

makeinstall_target() {
  make -C ${PKG_BUILD} install INSTALLDIR="${INSTALL}/usr/lib/libretro"
}

