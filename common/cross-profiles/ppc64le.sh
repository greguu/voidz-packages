# Cross build profile for ppc64 little-endian GNU.

XBPS_TARGET_MACHINE="ppc64le"
XBPS_CROSS_TRIPLET="powerpc64le-linux-gnu"
XBPS_CROSS_CFLAGS="-mcpu=powerpc64le -mtune=power9 -maltivec -mabi=elfv2"
XBPS_CROSS_CXXFLAGS="$XBPS_CROSS_CFLAGS"
XBPS_CROSS_FFLAGS=""
XBPS_CROSS_RUSTFLAGS="--sysroot=${XBPS_CROSS_BASE}/usr"
XBPS_CROSS_RUST_TARGET="powerpc64le-unknown-linux-gnu"
