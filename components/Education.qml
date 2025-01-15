import QtQuick 2.15
import com.colors 1.0
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects



ColumnLayout
{
    Layout.topMargin: (window.width > 1150) ? 100 : Math.max(window.width * 0.058, 20)
    // anchors.top : parent.top
    // anchors.topMargin: 100
    Text {
        id: software
        text: qsTr("ACADEMIC")
        font.family: pBlack.name
        font.pixelSize: (window.width > 1150) ? 110 : Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("white")
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
    }

    Text {
        id: engineer
        text: qsTr("PROFILE")
        font.family: pBlack.name
        font.pixelSize:  (window.width > 1150) ? 110 :  Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("gray")
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
        Layout.topMargin: (window.width > 1150) ? -50 :  (window.width * 0.027) - 35
    }

    ColumnLayout
    {   Layout.topMargin: (window.width > 1150) ? -20 : window.width*0.020
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
        Rectangle
        {
            id: onhoverrect1
            Layout.preferredWidth: (window.width > 700) ? 700 : window.width*0.9
            Layout.preferredHeight: (window.width > 700) ? 200 : 180
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
                        font.family: pSemibold.name
                        font.pixelSize: (window.width > 700) ? 30 : Math.max(window.width * 0.0058, 20)
                        font.weight: 600
                        width: (window.width > 700) ? 500 : window.width*0.7
                        color: pullc.color("white")
                    }
                }

                Text {
                    id: eduCollege
                    text: qsTr("Seneca Polytechnic")
                    font.family: pMedium.name
                    font.weight: 600
                    font.pixelSize: (window.width > 700) ? 20 : Math.max(window.width * 0.001, 17)
                    color: pullc.color("white")
                    opacity: 0.7
                    Layout.topMargin: -20
                }

                Rectangle
                {
                    Layout.preferredWidth: (window.width > 700) ? 650 : window.width*0.8
                    Layout.preferredHeight: (window.width > 700) ? 50 : edescipt1.height
                    Layout.alignment: Qt.AlignCenter
                    color: "Transparent"
                    Text {
                        id: edescipt1
                        text: qsTr("Led the design team in creating user-centric mobile and web applications, improving the user experience and increasing user engagement.")
                        font.family: pRegular.name
                        font.pixelSize: (window.width > 700) ? 17 : Math.max(window.width * 0.001, 15)
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
                    font.family: pRegular.name
                    font.pixelSize: (window.width > 700) ? 15 : Math.max(window.width * 0.001, 13)
                    // horizontalAlignment: Text.AlignHCenter
                    color: pullc.color("white")
                    wrapMode: Text.Wrap
                    opacity: 0.5
                }
            }

            MouseArea
            {
                anchors.fill: parent
                hoverEnabled: true
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
                    Qt.openUrlExternally("https://www.senecapolytechnic.ca/home.html")
                }
            }
        }

    }
}
