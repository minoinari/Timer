# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BINARY_7Z "")
set(CPACK_BINARY_BUNDLE "")
set(CPACK_BINARY_CYGWIN "")
set(CPACK_BINARY_DEB "")
set(CPACK_BINARY_DRAGNDROP "")
set(CPACK_BINARY_FREEBSD "")
set(CPACK_BINARY_IFW "")
set(CPACK_BINARY_NSIS "")
set(CPACK_BINARY_NUGET "")
set(CPACK_BINARY_OSXX11 "")
set(CPACK_BINARY_PACKAGEMAKER "")
set(CPACK_BINARY_PRODUCTBUILD "")
set(CPACK_BINARY_RPM "")
set(CPACK_BINARY_STGZ "")
set(CPACK_BINARY_TBZ2 "")
set(CPACK_BINARY_TGZ "")
set(CPACK_BINARY_TXZ "")
set(CPACK_BINARY_TZ "")
set(CPACK_BINARY_WIX "")
set(CPACK_BINARY_ZIP "")
set(CPACK_BUILD_SOURCE_DIRS "C:/Users/OGATA/workspace/Timer;C:/Users/OGATA/workspace/Timer/build")
set(CPACK_CMAKE_GENERATOR "Visual Studio 16 2019")
set(CPACK_COMPONENTS_ALL "component")
set(CPACK_COMPONENTS_ALL_SET_BY_USER "TRUE")
set(CPACK_COMPONENT_COMPONENT_DESCRIPTION "Component library and stand-alone executable")
set(CPACK_COMPONENT_COMPONENT_DISPLAY_NAME "Applications")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_GENERATOR "7Z;ZIP")
set(CPACK_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_INSTALLED_DIRECTORIES "C:/Users/OGATA/workspace/Timer;/")
set(CPACK_INSTALL_CMAKE_PROJECTS "")
set(CPACK_INSTALL_PREFIX "C:/Program Files/OpenRTM-aist/1.2.0Components/python/Timer/Timer")
set(CPACK_MODULE_PATH "")
set(CPACK_NSIS_DISPLAY_NAME "OpenRTM-aist/1.2.0/Components/python/Timer")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES64")
set(CPACK_NSIS_PACKAGE_NAME "OpenRTM-aist/1.2.0/Components/python/Timer")
set(CPACK_OUTPUT_CONFIG_FILE "C:/Users/OGATA/workspace/Timer/build/CPackConfig.cmake")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "C:/Program Files/CMake/share/cmake-3.14/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "measuring time")
set(CPACK_PACKAGE_FILE_NAME "Timer100_rtm120_-1.0.0-Source")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "OpenRTM-aist/1.2.0/Components/python/Timer")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "OpenRTM-aist/1.2.0/Components/python/Timer")
set(CPACK_PACKAGE_NAME "Timer100_rtm120_")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "m.toyoda")
set(CPACK_PACKAGE_VERSION "1.0.0")
set(CPACK_PACKAGE_VERSION_MAJOR "1")
set(CPACK_PACKAGE_VERSION_MINOR "0")
set(CPACK_PACKAGE_VERSION_PATCH "0")
set(CPACK_PROJECT_CONFIG_FILE "C:/Users/OGATA/workspace/Timer/build/cpack_options.cmake")
set(CPACK_RESOURCE_FILE_LICENSE "C:/Users/OGATA/workspace/Timer/cmake/License.rtf")
set(CPACK_RESOURCE_FILE_README "C:/Program Files/CMake/share/cmake-3.14/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "C:/Program Files/CMake/share/cmake-3.14/Templates/CPack.GenericWelcome.txt")
set(CPACK_RPM_PACKAGE_NAME "Timer")
set(CPACK_RPM_PACKAGE_SOURCES "ON")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_7Z "ON")
set(CPACK_SOURCE_CYGWIN "")
set(CPACK_SOURCE_GENERATOR "7Z;ZIP")
set(CPACK_SOURCE_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_SOURCE_INSTALLED_DIRECTORIES "C:/Users/OGATA/workspace/Timer;/")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "C:/Users/OGATA/workspace/Timer/build/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "Timer100_rtm120_-1.0.0-Source")
set(CPACK_SOURCE_RPM "")
set(CPACK_SOURCE_TBZ2 "")
set(CPACK_SOURCE_TGZ "")
set(CPACK_SOURCE_TOPLEVEL_TAG "win64-Source")
set(CPACK_SOURCE_TXZ "")
set(CPACK_SOURCE_TZ "")
set(CPACK_SOURCE_ZIP "ON")
set(CPACK_STRIP_FILES "")
set(CPACK_SYSTEM_NAME "win64")
set(CPACK_TOPLEVEL_TAG "win64-Source")
set(CPACK_UNINSTALL_NAME "Timer")
set(CPACK_WIX_CULTURES "ja-jp")
set(CPACK_WIX_PRODUCT_ICON "C:/Users/OGATA/workspace/Timer/cmake\rt_middleware_logo.ico")
set(CPACK_WIX_PROPERTY_ARPURLINFOABOUT "http://www.openrtm.org")
set(CPACK_WIX_SIZEOF_VOID_P "8")
set(CPACK_WIX_UI_BANNER "C:/Users/OGATA/workspace/Timer/cmake/rt_middleware_banner.bmp")
set(CPACK_WIX_UI_DIALOG "C:/Users/OGATA/workspace/Timer/cmake/rt_middleware_dlg.bmp")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "C:/Users/OGATA/workspace/Timer/build/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
