import QtQuick 2.15
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import com.colors 1.0
import com.email 1.0
import com.font 1.0

import "./components"

Window {
    id: window
    width: 1920
    height: Screen.height
    minimumHeight: 720
    minimumWidth: 350
    visible: true
    title: "Kaustuv Pokharel " + width + "x" + height

    ColorList { id: pullc }
    EmailSender { id: emailSender }
    FontLoad { id: fonts }

    property bool isDesktop: width > 1150

    Rectangle {
        anchors.fill: parent
        color: pullc.color("black")
    }

    Loader {
        id: headerLoader
        source: "qrc:/header.qml"
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        z: 10
    }

    // Desktop profile card — fixed position
    Loader {
        id: profileComponent
        source: "qrc:/profileCard.qml"
        visible: isDesktop
        anchors.top: headerLoader.bottom
        anchors.left: parent.left
        anchors.leftMargin: Math.min(parent.width * 0.15, parent.width * 0.10)
        anchors.topMargin: 100
        width: 350
        z: 5
        onLoaded: {
            if (profileComponent.item)
                profileComponent.item.isDesktop = true;
        }
    }

    Flickable {
        id: mainScroll
        anchors.top: headerLoader.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.topMargin: isDesktop ? 50 : 40
        contentHeight: contentLayout.implicitHeight + 30
        clip: true
        flickDeceleration: 200
        maximumFlickVelocity: 1500
        boundsBehavior: Flickable.DragAndOvershootBounds

        ColumnLayout {
            id: contentLayout
            anchors.top: parent.top

            // Desktop → push right with proper margin
            // Mobile → center normally
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: 0
            anchors.leftMargin: isDesktop ? (window.width * 0.075 + 350 + 50) : 0  // profile offset + profile width + margin

            width: isDesktop ? window.width * 0.65 : window.width * 0.95
            spacing: isDesktop ? 60 : 40

            // Profile card shown only on mobile (already floated separately on desktop)
            Loader {
                id: profileComponentMobile
                source: "qrc:/profileCard.qml"
                active: !isDesktop
                visible: !isDesktop
                Layout.alignment: Qt.AlignHCenter
                Layout.preferredWidth: window.width * 0.9
                onLoaded: {
                    if (profileComponentMobile.item)
                        profileComponentMobile.item.isDesktop = false;
                }
            }

            Loader {
                id: softwareEngComponent
                source: "qrc:/SoftwareEng.qml"
                active: true
                Layout.alignment: Qt.AlignHCenter
            }

            Loader {
                id: projectComponent
                source: "qrc:/Projects.qml"
                active: true
                Layout.alignment: Qt.AlignHCenter
            }

            Loader {
                id: experienceComponent
                source: "qrc:/Experience.qml"
                active: true
                Layout.alignment: Qt.AlignHCenter
            }

            Loader {
                id: educationComponent
                source: "qrc:/Education.qml"
                active: true
                Layout.alignment: Qt.AlignHCenter
            }

            Loader {
                id: contactComponent
                source: "qrc:/Contact.qml"
                active: true
                Layout.alignment: Qt.AlignHCenter
            }

            Text {
                text: qsTr("<html>© 2025 <b>Kaustuv Pokharel</b> | Fueled by Coffee, C++ and Qt with WebAssembly</html>")
                font.family: fonts.medium
                font.weight: 500
                font.pixelSize: isDesktop ? 10 : 8
                color: pullc.color("neon")
                Layout.topMargin: 30
                Layout.alignment: Qt.AlignHCenter
            }
        }
    }

    Connections {
        target: headerLoader
        function onLoaded() {
            if (headerLoader.item)
                headerLoader.item.mainScrollRef = mainScroll;
        }
    }
}
