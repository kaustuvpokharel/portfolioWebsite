import QtQuick 2.15
import QtQuick.Layouts

ColumnLayout {
    Layout.topMargin: (window.width > 1150) ? 100 : Math.max(window.width * 0.058, 20)
    spacing: 30

    ListModel {
        id: experienceModel
        ListElement { title: "Software Engineer Intern"; company: "Ansys Inc."; description: "Incoming intern in the Electronics Software Department, focused on simulation software development."; date: "May 2025 - August 2025"; link: "https://www.ansys.com/" }
        ListElement { title: "C++ Developer"; company: "Astrova Aerospace"; description: "Led the design team in creating user-centric mobile and web applications, improving the user experience and increasing user engagement."; date: "Aug 2024 - Present"; link: "https://astrovaaerospace.com/#" }
        ListElement { title: "Software Developer Intern"; company: "Bell Canada"; description: "Led the design team in creating user-centric mobile and web applications, improving the user experience and increasing user engagement."; date: "May 2024 - Aug 2024"; link: "https://www.bell.ca/" }
        ListElement { title: "3D Generalist"; company: "SunBi Holding Pvt. Ltd."; description: "Led the design team in creating user-centric mobile and web applications, improving the user experience and increasing user engagement."; date: "Jan 2021 - Aug 2022"; link: "https://sunbi.com.np/index" }
    }

    Text {
        text: qsTr("YEARS OF")
        font.family: fonts.black
        font.pixelSize: (window.width > 1150) ? 110 : Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("white")
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
    }

    Text {
        text: qsTr("EXPERIENCE")
        font.family: fonts.black
        font.pixelSize: (window.width > 1150) ? 110 : Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("gray")
        Layout.topMargin: (window.width > 1150) ? -35 : (window.width * 0.027) - 25
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
    }

    Repeater {
        model: experienceModel
        delegate: Rectangle {
            Layout.preferredWidth: (window.width > 700) ? 700 : window.width * 0.9
            Layout.preferredHeight: (window.width > 700) ? 200 : 200
            Layout.alignment: (window.width > 700) ? Qt.AlignLeft : Qt.AlignHCenter
            radius: 20
            color: "Transparent"

            ColumnLayout {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 10
                spacing: 20

                Rectangle {
                    Layout.preferredWidth: (window.width > 700) ? 650 : window.width * 0.8
                    Layout.preferredHeight: (window.width > 700) ? 50 : titleText.height
                    color: "Transparent"
                    Layout.alignment: Qt.AlignCenter
                    Text {
                        id: titleText
                        text: model.title
                        font.family: fonts.bold
                        font.pixelSize: (window.width > 700) ? 30 : Math.max(window.width * 0.0058, 20)
                        font.weight: 700
                        width: (window.width > 700) ? 500 : window.width * 0.65
                        color: pullc.color("white")
                    }
                }

                Text {
                    text: model.company
                    font.family: fonts.medium
                    font.weight: 500
                    font.pixelSize: (window.width > 700) ? 20 : Math.max(window.width * 0.001, 17)
                    color: pullc.color("white")
                    opacity: 0.7
                    Layout.topMargin: -30
                }

                Rectangle {
                    Layout.preferredWidth: (window.width > 700) ? 650 : window.width * 0.8
                    Layout.preferredHeight: (window.width > 700) ? 50 : descText.height
                    Layout.topMargin: -10
                    color: "Transparent"

                    Text {
                        id: descText
                        text: model.description
                        font.family: fonts.regular
                        font.weight: 400
                        font.pixelSize: (window.width > 700) ? 16 : Math.max(window.width * 0.001, 14)
                        horizontalAlignment: Text.AlignJustify
                        width: (window.width > 700) ? 650 : window.width * 0.85
                        color: pullc.color("white")
                        wrapMode: Text.Wrap
                        opacity: 0.5
                    }
                }

                Text {
                    text: model.date
                    font.family: fonts.regular
                    font.weight: 400
                    font.pixelSize: (window.width > 700) ? 15 : Math.max(window.width * 0.001, 13)
                    Layout.topMargin: (window.width > 700) ? 15 : -10
                    color: pullc.color("white")
                    wrapMode: Text.Wrap
                    opacity: 0.5
                }
            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: (window.width > 500)
                cursorShape: Qt.PointingHandCursor
                onEntered: parent.color = (window.width > 500) ? pullc.color("gray") : "Transparent"
                onExited: parent.color = "Transparent"
                onClicked: Qt.openUrlExternally(model.link)
            }
        }
    }
}
