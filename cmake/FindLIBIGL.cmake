# - Try to find the LIBIGL library
# Once done this will define
#
#  LIBIGL_FOUND - system has LIBIGL
#  LIBIGL_INCLUDE_DIR - **the** LIBIGL include directory
find_path(LIBIGL_INCLUDE_DIR igl/readOBJ.h
    PATHS
        ${CMAKE_SOURCE_DIR}/../..
        ${CMAKE_SOURCE_DIR}/..
        ${CMAKE_SOURCE_DIR}
        ${CMAKE_SOURCE_DIR}/../tools/libigl
        ${CMAKE_SOURCE_DIR}/libigl
        ${CMAKE_SOURCE_DIR}/../libigl
        ${CMAKE_SOURCE_DIR}/../../libigl
        ${CMAKE_SOURCE_DIR}/external/libigl
        ${CMAKE_SOURCE_DIR}/../external/libigl
        ${CMAKE_SOURCE_DIR}/deps/libigl
        ${CMAKE_SOURCE_DIR}/../deps/libigl
    PATH_SUFFIXES include
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(LIBIGL
    "\nlibigl not found --- You can download it using:\n\tgit clone --recursive https://github.com/libigl/libigl.git ${CMAKE_SOURCE_DIR}/../libigl"
    LIBIGL_INCLUDE_DIR)
mark_as_advanced(LIBIGL_INCLUDE_DIR)

list(APPEND CMAKE_MODULE_PATH "${LIBIGL_INCLUDE_DIR}/../cmake")
include(libigl)