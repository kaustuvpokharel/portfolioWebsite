import QtQuick
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import QtQuick.Controls
import "./components"

Page {
    id: page
    anchors.fill: parent

    // Background
    Rectangle {
        id: bg
        anchors.fill: parent
        color: pullc.color("black")
        layer.enabled: true  // Caches static background
        layer.smooth: true
    }

    // Header Section (Always Visible)
    Loader {
        id: headerComponent
        source: "qrc:/header.qml"
        active: true
        anchors.top: parent.top
        anchors.topMargin: 30
        z: 1  // Ensure header stays on top
    }



    // Main Content Area
    Flickable {
        id: mainScroll
        anchors.top: headerComponent.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        contentWidth: parent.width
        contentHeight: Math.max(contentLayout.implicitHeight, window.height * 2)
        clip: true

        flickDeceleration: 300       // Smoother deceleration for WebAssembly
        maximumFlickVelocity: 2000   // More responsive flicks
        pressDelay: 0
        boundsBehavior: Flickable.DragAndOvershootBounds  // Adds a smooth bounce effect

        // Content Layout
        ColumnLayout {
            id: contentLayout
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 40
            width: Math.min(parent.width, 800)  // Responsive layout for large/small screens

            Loader {
                id: profile
                source: "qrc:/profileCard.qml"
                active: true
            }

            Loader {
                id: softwareEngLoader
                source: "qrc:/SoftwareEng.qml"
                active: true
            }

            // Lazy Load Other Sections (Based on Scroll Position)
            Loader {
                id: projectsLoader
                source: "qrc:/Projects.qml"
                active: mainScroll.contentY > 200
            }
            Loader {
                id: experienceLoader
                source: "qrc:/Experience.qml"
                active: mainScroll.contentY > 400
            }
            Loader {
                id: educationLoader
                source: "qrc:/Education.qml"
                active: mainScroll.contentY > 600
            }
            Loader {
                id: contactLoader
                source: "qrc:/Contact.qml"
                active: mainScroll.contentY > 800
            }

            // Footer Text
            Text {
                id: copy
                text: qsTr("<html>© 2025 <b>Kaustuv Pokharel</b> | Fueled by Coffee, C++ and Qt with WebAssembly</html>")
                font.family: fonts.medium
                font.weight: 500
                font.pixelSize: Math.max(window.width * 0.015, 10)
                color: pullc.color("neon")
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.Wrap
                Layout.topMargin: 20
            }
        }
    }
}
