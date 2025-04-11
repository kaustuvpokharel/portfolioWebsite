import QtQuick 2.15
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

ColumnLayout {
    spacing: 10
    Layout.alignment: Qt.AlignHCenter
    Layout.preferredWidth: pcMainRect.width
    layer.enabled: true   // Caches the loaded ProfileCard component
    layer.smooth: true    // Optional: smoothens the cached texture
    layer.mipmap: true

    ListModel {
        id: socialLinksModel

        ListElement { icon: "qrc:/iconsStrong/githubIcon";    url: "https://github.com/kaustuvpokharel" }
        ListElement { icon: "qrc:/iconsStrong/linkedIcon";    url: "https://www.linkedin.com/in/kaustuvpokharel/" }
        ListElement { icon: "qrc:/iconsStrong/youtubeIcon";   url: "https://www.youtube.com/@K-A-L-I-" }
        ListElement { icon: "qrc:/iconsStrong/behanceIcon";   url: "https://www.behance.net/kaustuvpokharel3" }
        ListElement { icon: "qrc:/iconsStrong/emailIcon";     url: "mailto:kastuvpokharel@gmail.com" }
    }

    Rectangle {
        id: pcMainRect
        Layout.preferredWidth: window.width > 1150 ? 350 : window.width > 700 ? mainScroll.width * 0.9 : window.width * 0.9
        Layout.preferredHeight: 650
        Layout.alignment: Qt.AlignHCenter
        color: pullc.color("white")
        radius: 20
        clip: true

        Image {
            id: bgImage1
            source: "qrc:/bg/bgCard"
            anchors.fill: parent
            smooth: true
            fillMode: Image.PreserveAspectCrop
            opacity: 0.4
            layer.enabled: true
            layer.effect: OpacityMask { maskSource: mask1 }
            asynchronous: false
        }

        Rectangle { id: mask1; anchors.fill: parent; visible: false; radius: 20 }

        ColumnLayout {
            spacing: 20
            anchors.centerIn: parent

            Image {
                source: "qrc:/profilepic"
                Layout.preferredWidth: pcMainRect.width
                Layout.preferredHeight: pcMainRect.height / 1.9
                fillMode: Image.PreserveAspectFit
                smooth: true
                asynchronous: false
                Layout.alignment: Qt.AlignCenter
            }

            Text {
                text: qsTr("Kaustuv Pokharel")
                font.family: fonts.bold
                font.weight: 700
                font.pixelSize: 27
                color: pullc.color("black")
                Layout.alignment: Qt.AlignCenter
            }

            Rectangle {
                width: 260
                height: 90
                color: "Transparent"
                Layout.alignment: Qt.AlignCenter
                Layout.topMargin: 15

                Text {
                    text: qsTr("Software Engineering Student with background in CrossPlatform Application Development, Graphics Programming and GPGPU with C++.")
                    wrapMode: Text.WordWrap
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignHCenter
                    width: 260
                    font.family: fonts.medium
                    font.weight: 500
                    color: pullc.color("gray")
                    opacity: 0.8
                }
            }

            RowLayout {
                spacing: 10
                Layout.alignment: Qt.AlignCenter
                Layout.topMargin: 15

                Repeater {
                    model: socialLinksModel

                    delegate: Rectangle {
                        width: 35; height: 35; radius: 10
                        color: "Transparent"

                        Image {
                            source: icon
                            width: 25; height: 25
                            anchors.centerIn: parent
                            smooth: true
                            fillMode: Image.PreserveAspectFit
                            asynchronous: false
                        }

                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true
                            cursorShape: Qt.PointingHandCursor

                            onEntered: parent.color = pullc.color("graylight")
                            onExited: parent.color = "Transparent"
                            onClicked: Qt.openUrlExternally(url)
                        }
                    }
                }
            }
        }
    }

    Rectangle {
        id: cppText
        Layout.preferredWidth: window.width > 1150 ? 350 : window.width > 700 ? mainScroll.width * 0.9 : window.width * 0.9
        Layout.preferredHeight: 30
        color: pullc.color("neon")
        radius: 30
        clip: true
        Layout.alignment: Qt.AlignHCenter

        Image {
            source: "qrc:/bg/bgCard"
            anchors.fill: parent
            smooth: true
            fillMode: Image.PreserveAspectCrop
            opacity: 0
            layer.enabled: true
            layer.effect: OpacityMask { maskSource: mask2 }
            asynchronous: false
        }

        Rectangle { id: mask2; anchors.fill: parent; visible: false; radius: 15 }

        Text {
            text: qsTr("Built with C++ in QT-QML: WebAssembly")
            anchors.centerIn: parent
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            width: 260
            font.family: fonts.medium
            font.weight: 500
            color: pullc.color("gray")
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor

            onEntered: {
                cppText.color = pullc.color("white")
                bgImage1.opacity = 0.4
            }
            onExited: {
                cppText.color = pullc.color("neon")
                bgImage1.opacity = 0
            }
            onClicked: Qt.openUrlExternally("https://github.com/kaustuvpokharel/portfolioWebsite")
        }
    }
}
