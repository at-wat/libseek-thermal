set (HEADERS
    SeekCam.h
    SeekDevice.h
    seek.h
    SeekLogging.h
    SeekThermal.h
    SeekThermalPro.h
)

set (SOURCES
    SeekCam.cpp
    SeekDevice.cpp
    SeekThermal.cpp
    SeekThermalPro.cpp
)

set (SRC ${SOURCES} ${HEADERS})

include_directories (
    ${Boost_INCLUDE_DIRS}
    ${OpenCV_INCLUDE_DIRS}
    ${libusb_INCLUDE_DIRS}
)

add_library (seek_static STATIC ${SRC})
add_library (seek SHARED ${SRC})

target_link_libraries (seek
    ${Boost_LIBRARIES}
    ${OpenCV_LIBS}
    ${libusb_LIBRARIES}
)

# install library target and header files
install (TARGETS
    seek
    DESTINATION "lib"
)

install (FILES ${HEADERS}
    DESTINATION "include/seek"
)
