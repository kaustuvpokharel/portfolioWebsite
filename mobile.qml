import QtQuick
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import "./components"

Item {
    layer.enabled: true   // Caches the loaded ProfileCard component
    layer.smooth: true    // Optional: smoothens the cached texture
    layer.mipmap: true
    Rectangle {
        anchors.fill: parent
        color: pullc.color("black")
    }

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
        onLoaded: {
            if (headerLoader.item)
                headerLoader.item.mainScrollRef = mainScroll;
        }
    }

    ColumnLayout {
        spacing: 100
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: headerLoader.bottom
        anchors.topMargin: 50
        anchors.bottom: window.bottom

        Flickable {
            id: mainScroll
            Layout.preferredWidth: 700
            Layout.preferredHeight: window.height
            contentWidth: width
            contentHeight: Math.max(contentLayout.implicitHeight + 200, window.height * 3) // Ensure scrollable area
            clip: true
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: 35

            flickDeceleration: 100
            maximumFlickVelocity: 1000
            pressDelay: 0
            boundsBehavior: Flickable.StopAtBounds

            ColumnLayout {
                id: contentLayout
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 50

                // Force the first two sections to load for initial scrollability
                Loader
                {
                    id: profileComponent;
                    source: "qrc:/profileCard.qml";
                    active: true
                    Layout.alignment: Qt.AlignHCenter
                }
                Loader
                {
                    id: softwareEngComponent;
                    source: "qrc:/SoftwareEng.qml";
                    active: true
                    Layout.alignment: Qt.AlignHCenter
                }

                // Lazy-load remaining
                Loader
                {
                    id: projectComponent;
                    source: "qrc:/Projects.qml";
                    active: mainScroll.visibleArea.yPosition > 0.1
                    Layout.alignment: Qt.AlignHCenter
                }
                Loader
                {
                    id: experienceComponent;
                    source: "qrc:/Experience.qml";
                    active: mainScroll.visibleArea.yPosition > 0.2
                    Layout.alignment: Qt.AlignHCenter
                }
                Loader
                {
                    id: educationComponent;
                    source: "qrc:/Education.qml";
                    active: mainScroll.visibleArea.yPosition > 0.3
                    Layout.alignment: Qt.AlignHCenter
                }
                Loader
                {
                    id: contactComponent;
                    source: "qrc:/Contact.qml";
                    active: mainScroll.visibleArea.yPosition > 0.4
                    Layout.alignment: Qt.AlignHCenter
                }

                Text {
                    text: qsTr("<html>© 2025 <b>Kaustuv Pokharel</b> | Fueled by Coffee, C++ and Qt with WebAssembly</html>")
                    font.family: fonts.medium
                    font.weight: 500
                    font.pixelSize: 8
                    color: pullc.color("neon")
                    Layout.topMargin: 50
                }
            }
        }
    }
}
