import QtQuick 2.15
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

Rectangle {
    id: header
    width: 280
    height: 50
    radius: 10
    color: pullc.color("gray")
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    anchors.topMargin: 30
    z: 1

    // Reference to main Flickable
    property Flickable mainScrollRef

    // Map section keys to components
    property var sectionMap: ({
        "home": softwareEngComponent,
        "project": projectComponent,
        "experience": experienceComponent,
        "academic": educationComponent,
        "contact": contactComponent
    })

    ListModel {
        id: navModel
        ListElement { icon: "qrc:/header/home";       tooltip: "Home";       section: "home" }
        ListElement { icon: "qrc:/header/project";    tooltip: "Projects";   section: "project" }
        ListElement { icon: "qrc:/header/experience"; tooltip: "Experience"; section: "experience" }
        ListElement { icon: "qrc:/header/education";  tooltip: "Academic";   section: "academic" }
        ListElement { icon: "qrc:/header/contact";    tooltip: "Contact";    section: "contact" }
    }

    RowLayout {
        anchors.centerIn: parent
        spacing: 20

        Repeater {
            model: navModel

            delegate: Rectangle {
                width: 35
                height: 35
                radius: 10
                color: "Transparent"

                Image {
                    source: model.icon
                    width: 25
                    height: 25
                    anchors.centerIn: parent
                    fillMode: Image.PreserveAspectFit
                    smooth: true
                }

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor

                    onEntered: tooltipLoader.active = true
                    onExited: tooltipLoader.active = false

                    onClicked: {
                        if (sectionMap[model.section])
                            mainScrollRef.contentY = sectionMap[model.section].y
                    }
                }

                Loader {
                    id: tooltipLoader
                    active: false
                    anchors.top: parent.bottom
                    anchors.topMargin: 15
                    anchors.horizontalCenter: parent.horizontalCenter

                    sourceComponent: Rectangle {
                        width: (model.tooltip.length * 7) + 10
                        height: 20
                        color: pullc.color("gray")
                        radius: 5

                        Text {
                            text: model.tooltip
                            anchors.centerIn: parent
                            color: pullc.color("white")
                            font.family: fonts.regular
                            font.pixelSize: 10
                        }
                    }
                }
            }
        }
    }
}
