import QtQuick 2.15
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

ColumnLayout {
    spacing: 10
    Layout.alignment: Qt.AlignHCenter
    layer.enabled: true   // Caches the loaded ProfileCard component
    layer.smooth: true    // Optional: smoothens the cached texture
    layer.mipmap: true

    ListModel {
        id: educationModel

        ListElement {
            title: "Bachelors Of Software Engineering"
            institution: "Seneca Polytechnic"
            description: "Data Structures and Algorithms, Operating Systems, Software Design and Development, Programming Languages, Compute Networks, Maths(calculus I & II, Linear algebra, discrete, statistics), Microcontrollers, Compiler design, AI/ML"
            date: "Sep 2022 - Dec 2026"
            link: "https://www.senecapolytechnic.ca/programs/fulltime/BSA.html"
        }
    }

    Text {
        text: qsTr("ACADEMIC")
        font.family: fonts.black
        font.pixelSize: window.width > 1150 ? 110 : Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("white")
        Layout.alignment: Qt.AlignHCenter
    }

    Text {
        text: qsTr("PROFILE")
        font.family: fonts.black
        font.pixelSize: window.width > 1150 ? 110 : Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("gray")
        Layout.topMargin: window.width > 1150 ? -35 : (window.width * 0.027) - 25
        Layout.alignment: Qt.AlignHCenter
    }

    ColumnLayout {
        Layout.topMargin: window.width > 1150 ? -20 : window.width * 0.020
        Layout.alignment: Qt.AlignHCenter
        spacing: 30

        Repeater {
            model: educationModel

            delegate: Rectangle {
                Layout.preferredWidth: window.width > 700 ? 700 : window.width * 0.9
                Layout.preferredHeight: window.width > 700 ? 230 : 250
                Layout.alignment: Qt.AlignHCenter
                radius: 20
                color: "Transparent"

                ColumnLayout {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    spacing: 20

                    Rectangle {
                        Layout.preferredWidth: window.width > 700 ? 650 : window.width * 0.8
                        Layout.preferredHeight: window.width > 700 ? 50 : eduTitle.height
                        Layout.alignment: Qt.AlignCenter
                        color: "Transparent"

                        Text {
                            id: eduTitle
                            text: model.title
                            font.family: fonts.bold
                            font.pixelSize: window.width > 700 ? 30 : Math.max(window.width * 0.0058, 20)
                            font.weight: 700
                            wrapMode: Text.Wrap
                            width: (window.width > 700) ? 650 : window.width * 0.85
                            color: pullc.color("white")
                        }
                    }

                    Text {
                        text: model.institution
                        font.family: fonts.medium
                        font.weight: 500
                        font.pixelSize: window.width > 700 ? 20 : Math.max(window.width * 0.001, 17)
                        color: pullc.color("white")
                        opacity: 0.7
                        Layout.topMargin: -30
                    }

                    Rectangle {
                        Layout.preferredWidth: window.width > 700 ? 650 : window.width * 0.8
                        Layout.preferredHeight: window.width > 700 ? 50 : eduDescription.height
                        Layout.alignment: Qt.AlignCenter
                        Layout.topMargin: -10
                        color: "Transparent"

                        Text {
                            id: eduDescription
                            text: model.description
                            font.family: fonts.regular
                            font.weight: 400
                            font.pixelSize: window.width > 700 ? 16 : Math.max(window.width * 0.001, 15)
                            width: window.width > 700 ? 650 : window.width * 0.85
                            color: pullc.color("white")
                            wrapMode: Text.Wrap
                            opacity: 0.5
                        }
                    }

                    Text {
                        text: model.date
                        font.family: fonts.regular
                        font.weight: 400
                        font.pixelSize: window.width > 700 ? 15 : Math.max(window.width * 0.001, 13)
                        Layout.topMargin: window.width > 700 ? 35 : -10
                        color: pullc.color("white")
                        wrapMode: Text.Wrap
                        opacity: 0.5
                    }
                }

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: window.width > 500
                    cursorShape: Qt.PointingHandCursor

                    onEntered: parent.color = window.width > 500 ? pullc.color("gray") : "Transparent"
                    onExited: parent.color = "Transparent"
                    onClicked: Qt.openUrlExternally(model.link)
                }
            }
        }
    }
}
