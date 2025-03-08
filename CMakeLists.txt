cmake_minimum_required(VERSION 3.16)

project(KaustuvPokharel VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 6.2 COMPONENTS Quick)

add_link_options(
    -s WASM=1
    # -s INITIAL_MEMORY=67108864 # 64MB in bytes
    # -s MAXIMUM_MEMORY=536870912 # 512MB in bytes
    # -s ALLOW_MEMORY_GROWTH=1
    # -s STACK_SIZE=5242880 # 5MB in bytes
)

qt_add_executable(KaustuvPokharel
    main.cpp
)

qt_add_qml_module(KaustuvPokharel
    URI KaustuvPokharel
    VERSION 1.0
    QML_FILES main.qml
    QML_FILES mobile.qml
    QML_FILES components/ProfileCard.qml
    SOURCES colorlist.h colorlist.cpp
    RESOURCES images/images.qrc
    RESOURCES icons/icons.qrc
    QML_FILES components/Header.qml
    QML_FILES components/SoftwareEng.qml
    QML_FILES components/Projects.qml
    QML_FILES components/Experience.qml
    QML_FILES components/Education.qml
    QML_FILES components/Contact.qml
    SOURCES emailsender.h emailsender.cpp
    QML_FILES desktop.qml
    SOURCES fontloader.h fontloader.cpp
    RESOURCES fonts/fonts.qrc

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(KaustuvPokharel PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appKaustuvPokharel
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(KaustuvPokharel
    PRIVATE Qt6::Quick)

include(GNUInstallDirs)
install(TARGETS KaustuvPokharel
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
