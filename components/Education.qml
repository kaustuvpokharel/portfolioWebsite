import QtQuick 2.15
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

ColumnLayout
{
    layer.enabled: true   // Caches the loaded ProfileCard component
    layer.smooth: true    // Optional: smoothens the cached texture
    layer.mipmap: true
    Layout.topMargin: (window.width > 1150) ? 100 : Math.max(window.width * 0.058, 20)
    // anchors.top : parent.top
    // anchors.topMargin: 100
    Text {
        id: software
        text: qsTr("ACADEMIC")
        font.family: fonts.black
        font.pixelSize: (window.width > 1150) ? 110 : Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("white")
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
    }

    Text {
        id: engineer
        text: qsTr("PROFILE")
        font.family: fonts.black
        font.pixelSize:  (window.width > 1150) ? 110 :  Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("gray")
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
        Layout.topMargin: (window.width > 1150) ? -35 :  (window.width * 0.027) - 25
    }

    ColumnLayout
    {   Layout.topMargin: (window.width > 1150) ? -20 : window.width*0.020
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
        Rectangle
        {
            id: onhoverrect1
            Layout.preferredWidth: (window.width > 700) ? 700 : window.width*0.9
            Layout.preferredHeight: (window.width > 700) ? 230 : 250
            color: "Transparent" // On hover changes to gray
            Layout.alignment: (window.width > 700) ? Qt.AlignLeft : Qt.AlignHCenter

            radius: 20

            ColumnLayout
            {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 10
                spacing: 20

                Rectangle
                {
                    Layout.preferredWidth: (window.width > 700) ? 650 : window.width*0.8
                    Layout.preferredHeight: (window.width > 700) ? 50 : edu1.height
                    Layout.alignment: Qt.AlignCenter

                    color: "Transparent"
                    Text {
                        id: edu1
                        text: qsTr("Bachelors Of Software Engineering")
                        font.family: fonts.bold
                        font.pixelSize: (window.width > 700) ? 30 : Math.max(window.width * 0.0058, 20)
                        font.weight: 700
                        width: (window.width > 700) ? 500 : window.width*0.7
                        color: pullc.color("white")
                    }
                }

                Text {
                    id: eduCollege
                    text: qsTr("Seneca Polytechnic")

                    font.family: fonts.medium
                    font.weight: 500
                    font.pixelSize: (window.width > 700) ? 20 : Math.max(window.width * 0.001, 17)
                    color: pullc.color("white")
                    opacity: 0.7
                    Layout.topMargin: -30
                }

                Rectangle
                {
                    Layout.preferredWidth: (window.width > 700) ? 650 : window.width*0.8
                    Layout.preferredHeight: (window.width > 700) ? 50 : edescipt1.height
                    color: "Transparent"
                    Layout.topMargin: -10
                    Text {
                        id: edescipt1
                        text: qsTr("Data Structures and Algorithms, Operating Systems, Software Design and Development, Programming Languages, Compute Networks, Maths(calculus I & II, Linear algebra, discrete, statistics), Microcontrollers, Compiler design, AI/ML")
                        font.family: fonts.regular
                        font.weight: 400
                        font.pixelSize: (window.width > 700) ? 16 : Math.max(window.width * 0.001, 15)
                        // horizontalAlignment: Text.AlignHCenter
                        width: (window.width > 700) ? 500 : window.width*0.85
                        color: pullc.color("white")
                        wrapMode: Text.Wrap
                        opacity: 0.5
                    }
                }

                Text {
                    id: date1
                    text: qsTr("Sep 2022 - May 2026")
                    font.family: fonts.regular
                    font.weight: 400
                    font.pixelSize: (window.width > 700) ? 15 : Math.max(window.width * 0.001, 13)
                    Layout.topMargin:  (window.width > 700) ? 35 : -10
                    // horizontalAlignment: Text.AlignHCenter
                    color: pullc.color("white")
                    wrapMode: Text.Wrap
                    opacity: 0.5
                }
            }

            MouseArea
            {
                anchors.fill: parent
                hoverEnabled: (window.width > 500) ? true : false
                propagateComposedEvents: true
                cursorShape: Qt.PointingHandCursor

                onEntered:
                {
                    onhoverrect1.color = pullc.color("gray")
                }

                onExited:
                {
                    onhoverrect1.color = "Transparent"
                }

                onClicked:
                {
                    Qt.openUrlExternally("https://www.senecapolytechnic.ca/programs/fulltime/BSA.html")
                }
            }
        }

    }
}
