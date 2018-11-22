find_path(libusb_INCLUDE_DIRS libusb.h
  HINTS ENV libusb_ROOT
  PATH_SUFFIXES include libusb-1.0
)
find_library(libusb_LIBRARIES
  NAMES usb-1.0
  HINTS ENV libusb_ROOT
  PATH_SUFFIXES lib lib64
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(libusb
  DEFAULT_MSG libusb_LIBRARIES
  libusb_INCLUDE_DIRS
)
