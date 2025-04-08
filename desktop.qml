import QtQuick
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import "./components"

Item {
    id: page
    anchors.fill: parent

    // Background
    Rectangle {
        id: bg
        anchors.fill: parent
        color: pullc.color("black")
        layer.enabled: true
        layer.smooth: true
    }

    // Header loaded via QRC but positioned like old layout
    Loader {
        id: headerLoader
        source: "qrc:/header.qml"
        active: true
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        z: 10
    }
    Connections {
        target: headerLoader
        function onLoaded()
        {
            if (headerLoader.item)
                headerLoader.item.mainScrollRef = mainScroll;
        }
    }

    Rectangle {
        id: contentWrapper
        anchors.top: headerLoader.bottom
        anchors.topMargin: 50
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        color: "transparent"
        clip: true

        RowLayout {
            spacing: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 0

            Loader {
                id: profileLoader
                source: "qrc:/profileCard.qml"
                active: true
                Layout.alignment: Qt.AlignTop
            }


            Flickable {
                id: mainScroll
                Layout.preferredWidth: 700
                Layout.preferredHeight: window.height
                contentWidth: width
                contentHeight: contentLayout.implicitHeight + 160
                clip: true
                Layout.alignment: Qt.AlignHCenter
                Layout.topMargin: -35

                flickDeceleration: 300
                maximumFlickVelocity: 2000
                pressDelay: 0
                boundsBehavior: Flickable.DragAndOvershootBounds

                ColumnLayout {
                    id: contentLayout
                    width: parent.width
                    spacing: 40

                    Loader {
                        id: softwareEngComponent
                        source: "qrc:/SoftwareEng.qml"
                        active: true
                    }

                    Loader {
                        id: projectComponent
                        source: "qrc:/Projects.qml"
                        active: mainScroll.contentY > 200
                    }

                    Loader {
                        id: experienceComponent
                        source: "qrc:/Experience.qml"
                        active: mainScroll.contentY > 400
                    }

                    Loader {
                        id: educationComponent
                        source: "qrc:/Education.qml"
                        active: mainScroll.contentY > 600
                    }

                    Loader {
                        id: contactComponent
                        source: "qrc:/Contact.qml"
                        active: mainScroll.contentY > 800
                    }

                    Text {
                        id: copy
                        text: qsTr("<html>© 2025 <b>Kaustuv Pokharel</b> | Fueled by Coffee, C++ and Qt with WebAssembly</html>")
                        font.family: fonts.medium
                        font.weight: 500
                        font.pixelSize: Math.max(window.width * 0.010, 10)
                        color: pullc.color("neon")
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.Wrap
                        Layout.topMargin: 70
                        Layout.alignment: Qt.AlignHCenter
                    }
                }
            }
        }
    }
}
