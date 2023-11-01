vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO ralna/GALAHAD
    REF "v${VERSION}"
    SHA512 c4f89aa0fd28a821f977a7b363985ba6a88b54a22d76beea27d2750d3d912a46092ed436b010f679237a83f6375d2fba7c4e54cbf4650f2ba1e7bdf7b1804c59
)

vcpkg_configure_meson(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -Dtests=false
        -Dexamples=false
        -Dsingle=false
        -Dssids=false
)

vcpkg_install_meson()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
