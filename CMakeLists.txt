cmake_minimum_required(VERSION 3.16)

project(portfolio VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(portfolio
    main.cpp
)

qt_add_qml_module(portfolio
    URI portfolio
    VERSION 1.0
    QML_FILES main.qml
    QML_FILES components/ProfileCard.qml
    SOURCES colorlist.h colorlist.cpp
    RESOURCES images/images.qrc
    RESOURCES icons/icons.qrc
    RESOURCES fonts/fonts.qrc
    QML_FILES components/Header.qml
    QML_FILES components/SoftwareEng.qml
    QML_FILES components/Projects.qml
    QML_FILES components/Experience.qml
    QML_FILES components/Education.qml
    QML_FILES components/Contact.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(portfolio PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appportfolio
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(portfolio
    PRIVATE Qt6::Quick)

include(GNUInstallDirs)
install(TARGETS portfolio
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
