PKG_NAME="kronos"
PKG_VERSION="6101b17"
PKG_ARCH="i386 x86_64"
PKG_LICENSE="GPLv2"
PKG_SITE="https://github.com/libretro/yabause"
PKG_URL="${PKG_SITE}.git"
PKG_GIT_CLONE_BRANCH="kronos"
PKG_DEPENDS_TARGET="toolchain"
PKG_SHORTDESC="Port of Kronos to libretro."
PKG_TOOLCHAIN="make"

PKG_MAKE_OPTS_TARGET="-C yabause/src/libretro"

if [ "${OPENGL_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" ${OPENGL}"
fi

if [ "${OPENGLES_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" ${OPENGLES}"
fi

if [ "${VULKAN_SUPPORT}" = "yes" ]; then
  PKG_DEPENDS_TARGET+=" ${VULKAN}"
fi

if [ "${ARCH}" = "aarch64" ]; then
  PKG_MAKE_OPTS_TARGET+=" platform=arm64"
fi

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
    cp -v yabause/src/libretro/kronos_libretro.so ${INSTALL}/usr/lib/libretro/
}