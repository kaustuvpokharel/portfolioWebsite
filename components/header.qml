import QtQuick 2.15
import com.colors 1.0
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

import "../components"
Rectangle
{
    id: header
    width: 280
    height: 50
    color: pullc.color("gray")
    radius: 10
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    anchors.topMargin: 30
    property Flickable mainScrollRef
    z : 1

    RowLayout
    {
        anchors.centerIn: parent
        spacing: 20

        Rectangle
        {
            id: hIcon
            width: 35
            height: 35
            color: "Transparent"//pullc.color("gray")
            radius: 10
            Image {
                id: homeIcon
                source: "qrc:/header/home"
                width: 28
                height: 28
                smooth: true
                fillMode: Image.PreserveAspectFit
                anchors.centerIn: parent
            }

            MouseArea
            {
                anchors.fill: parent
                hoverEnabled: true
                propagateComposedEvents: true
                cursorShape: Qt.PointingHandCursor
                onEntered:
                {
                    load1.active = true
                }
                onExited:
                {
                    load1.active = false
                }

                onClicked:
                {
                    mainScrollRef.contentY = softwareEng.y
                }
            }

            Loader
            {
                id: load1
                anchors.top: parent.bottom
                anchors.topMargin: 15
                anchors.horizontalCenter: parent.horizontalCenter
                active: false
                sourceComponent:
                    Rectangle
                    {
                        id: tooltipHome
                        width: 50
                        height: 20
                        color: pullc.color("gray")
                        radius: 5

                        Text
                        {
                            text: qsTr("Home")
                            color: pullc.color("white")
                            anchors.centerIn: parent
                            font.family: pRegular.name
                            font.pixelSize: 10
                        }
                    }

            }

        }

        Rectangle
        {
            id: pIcon
            width: 35
            height: 35
            color: "Transparent"//pullc.color("gray")
            radius: 10
            Image {
                id: projectIcon
                source: "qrc:/header/project"
                width: 24
                height: 24
                smooth: true
                fillMode: Image.PreserveAspectFit
                anchors.centerIn: parent
            }

            MouseArea
            {
                anchors.fill: parent
                hoverEnabled: true
                propagateComposedEvents: true
                cursorShape: Qt.PointingHandCursor

                onEntered:
                {
                    load2.active = true
                }
                onExited:
                {
                    load2.active = false
                }

                onClicked:
                {
                    mainScrollRef.contentY = projects.y
                }
            }

            Loader
            {
                id: load2
                anchors.top: parent.bottom
                anchors.topMargin: 15
                anchors.horizontalCenter: parent.horizontalCenter
                active: false
                sourceComponent:
                    Rectangle
                    {
                        id: tooltipHome2
                        width: 50
                        height: 20
                        color: pullc.color("gray")
                        radius: 5

                        Text
                        {
                            text: qsTr("Projects")
                            color: pullc.color("white")
                            anchors.centerIn: parent
                            font.family: pRegular.name
                            font.pixelSize: 10
                        }
                    }

            }

        }

        Rectangle
        {
            id: exIcon
            width: 35
            height: 35
            color: "Transparent"//pullc.color("gray")
            radius: 10
            Image {
                id: experienceIcon
                source: "qrc:/header/experience"
                width: 25
                height: 25
                smooth: true
                fillMode: Image.PreserveAspectFit
                anchors.centerIn: parent
            }

            MouseArea
            {
                anchors.fill: parent
                hoverEnabled: true
                propagateComposedEvents: true
                cursorShape: Qt.PointingHandCursor

                onEntered:
                {
                    load3.active = true
                }
                onExited:
                {
                    load3.active = false
                }

                onClicked:
                {
                    mainScrollRef.contentY = experience.y
                }
            }

            Loader
            {
                id: load3
                anchors.top: parent.bottom
                anchors.topMargin: 15
                anchors.horizontalCenter: parent.horizontalCenter
                active: false
                sourceComponent:
                    Rectangle
                    {
                        id: tooltipHome3
                        width: 65
                        height: 20
                        color: pullc.color("gray")
                        radius: 5

                        Text
                        {
                            text: qsTr("Experience")
                            color: pullc.color("white")
                            anchors.centerIn: parent
                            font.family: pRegular.name
                            font.pixelSize: 10
                        }
                    }

            }

        }

        Rectangle
        {
            id: eIcon
            width: 35
            height: 35
            color: "Transparent"//pullc.color("gray")
            radius: 10
            Image {
                id: educationIcon
                source: "qrc:/header/education"
                width: 25
                height: 25
                smooth: true
                fillMode: Image.PreserveAspectFit
                anchors.centerIn: parent
            }

            MouseArea
            {
                anchors.fill: parent
                hoverEnabled: true
                propagateComposedEvents: true
                cursorShape: Qt.PointingHandCursor

                onEntered:
                {
                    load4.active = true
                }
                onExited:
                {
                    load4.active = false
                }

                onClicked:
                {
                   mainScrollRef.contentY = education.y
                }
            }

            Loader
            {
                id: load4
                anchors.top: parent.bottom
                anchors.topMargin: 15
                anchors.horizontalCenter: parent.horizontalCenter
                active: false
                sourceComponent:
                    Rectangle
                    {
                        id: tooltipHome4
                        width: 65
                        height: 20
                        color: pullc.color("gray")
                        radius: 5

                        Text
                        {
                            text: qsTr("Academic")
                            color: pullc.color("white")
                            anchors.centerIn: parent
                            font.family: pRegular.name
                            font.pixelSize: 10
                        }
                    }

            }
        }

        Rectangle
        {
            id: cIcon
            width: 35
            height: 35
            color: "Transparent"//pullc.color("gray")
            radius: 10
            Image {
                id:contactIcon
                source: "qrc:/header/contact"
                width: 25
                height: 25
                smooth: true
                fillMode: Image.PreserveAspectFit
                anchors.centerIn: parent
            }

            MouseArea
            {
                anchors.fill: parent
                hoverEnabled: true
                propagateComposedEvents: true
                cursorShape: Qt.PointingHandCursor

                onEntered:
                {
                    load5.active = true
                }
                onExited:
                {
                    load5.active = false
                }

                onClicked:
                {
                    mainScrollRef.contentY = contact.y
                }
            }
            Loader
            {
                id: load5
                anchors.top: parent.bottom
                anchors.topMargin: 15
                anchors.horizontalCenter: parent.horizontalCenter
                active: false
                sourceComponent:
                    Rectangle
                    {
                        id: tooltipHome5
                        width: 54
                        height: 20
                        color: pullc.color("gray")
                        radius: 5

                        Text
                        {
                            text: qsTr("Contact")
                            color: pullc.color("white")
                            anchors.centerIn: parent
                            font.family: pRegular.name
                            font.pixelSize: 10
                        }
                    }

            }
        }
    }
}
