import QtQuick 2.15
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

ColumnLayout {
    Layout.topMargin: (window.width > 1150) ? 100 : Math.max(window.width * 0.058, 20)
    spacing: 30
    layer.enabled: true
    layer.smooth: true
    layer.mipmap: true

    ListModel {
        id: projectModel
        ListElement {
            title: "Astrova QGC-CrossPlatform"
            description: "Developed a cross-platform Ground Control Station (GCS) in C++/Qt for Android and Desktop, integrating MAVLink and PX4 for real-time drone telemetry, mission control, and sensor data visualization."
            imageSource: "qrc:/projects/astrovImg"
            link: "https://www.linkedin.com/posts/kaustuvpokharel_astrovaaerospace-agritech-dronegcs-activity-7256913741294821376-1oEx?utm_source=share&utm_medium=member_desktop"
        }
        ListElement {
            title: "FireShip"
            description: "2D arcade-style game built with Qt and C++ featuring gravity, collision detection, score tracking, and entity management. Documented with 30+ YouTube tutorials for learning support for the community."
            imageSource: "qrc:/youtubePlaylist/gamePreview.png"
            link: "https://github.com/kaustuvpokharel/FireShip"
        }
        ListElement {
            title: "Firewall - Desktop APP"
            description: "Developed a Next-Gen Firewall prototype with C++, Qt, and Python, integrating real-time packet capture (Pcap), multithreading (QThread), and AI-driven analysis (PyTorch)."
            imageSource: "qrc:/projects/firewall"
            link: "https://github.com/kaustuvpokharel/FireWall_Version2"
        }
        ListElement {
            title: "Foodiez - Social Media"
            description: "Instagram-style app for food lovers with post uploads, user profiles, and real-time updates. Built with Qt/QML frontend and C++ backend."
            imageSource: "qrc:/projects/foodiez.png"
            link: "https://github.com/kaustuvpokharel/FOODIEZ.git"
        }
    }

    Text {
        text: qsTr("RECENT")
        font.family: fonts.black
        font.pixelSize: (window.width > 1150) ? 110 : Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("white")
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
    }

    Text {
        text: qsTr("PROJECTS")
        font.family: fonts.black
        font.pixelSize: (window.width > 1150) ? 110 : Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("gray")
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
        Layout.topMargin: (window.width > 1150) ? -35 : (window.width * 0.027) - 25
    }

    Repeater {
        model: projectModel

        delegate: Rectangle {
            Layout.preferredWidth: (window.width > 700) ? 700 : window.width * 0.9
            Layout.preferredHeight: (window.width > 700) ? 200 : 150
            Layout.alignment: (window.width > 700) ? Qt.AlignLeft : Qt.AlignHCenter
            radius: 20
            color: "Transparent"

            RowLayout {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 10
                spacing: 20

                Rectangle {
                    Layout.preferredWidth: (window.width > 700) ? 150 : Math.max(window.width * 0.095, 100)
                    Layout.preferredHeight: (window.width > 700) ? 180 : 120
                    radius: 20
                    color: "Transparent"

                    Image {
                        source: model.imageSource
                        anchors.fill: parent
                        smooth: true
                        fillMode: Image.PreserveAspectCrop
                        layer.enabled: true
                        layer.effect: OpacityMask {
                            maskSource: mask
                        }
                        asynchronous: false
                    }

                    Rectangle {
                        id: mask
                        anchors.fill: parent
                        visible: false
                        radius: 20
                    }
                }

                ColumnLayout {
                    Layout.alignment: Qt.AlignCenter
                    spacing: (window.width > 500) ? 20 : -100

                    Rectangle {
                        Layout.preferredHeight: (window.width > 700) ? 40 : titleText.height
                        Layout.preferredWidth: (window.width > 700) ? 600 : window.width * 0.7
                        color: "Transparent"
                        Layout.alignment: Qt.AlignCenter

                        Text {
                            id: titleText
                            text: model.title
                            font.family: fonts.bold
                            font.pixelSize: (window.width > 700) ? 30 : Math.max(window.width * 0.0058, 20)
                            font.weight: 700
                            color: pullc.color("white")
                            wrapMode: Text.Wrap
                            width: (window.width > 700) ? 600 : window.width * 0.6
                        }
                    }

                    Rectangle {
                        Layout.preferredHeight: (window.width > 700) ? 100 : descText.height
                        Layout.preferredWidth: (window.width > 700) ? 600 : window.width * 0.7
                        color: "Transparent"

                        Text {
                            id: descText
                            text: model.description
                            font.family: fonts.regular
                            font.weight: 400
                            font.pixelSize: (window.width > 700) ? 16 : Math.max(window.width * 0.001, 14)
                            horizontalAlignment: Text.AlignJustify
                            width: (window.width > 700) ? 500 : window.width * 0.65
                            color: pullc.color("white")
                            wrapMode: Text.Wrap
                            opacity: 0.5
                            visible: (window.width > 500)
                        }
                    }
                }
            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor

                onEntered: parent.color = (window.width > 500) ? pullc.color("gray") : "Transparent"
                onExited: parent.color = "Transparent"
                onClicked: Qt.openUrlExternally(model.link)
            }
        }
    }
}
