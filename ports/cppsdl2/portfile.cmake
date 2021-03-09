vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO mwthinker/cppsdl2
	REF a16bd37a342a20357ecfc67e8ce550b7a414bcb0
	HEAD_REF master
	GITHUB_HOST "https://github.com"
)

vcpkg_configure_cmake(
	SOURCE_PATH "${SOURCE_PATH}"
	PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
	INSTALL "${SOURCE_PATH}/LICENSE"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright)
