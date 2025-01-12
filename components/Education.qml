import QtQuick 2.15
import com.colors 1.0
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects



ColumnLayout
{
    Layout.topMargin: 100
    // anchors.top : parent.top
    // anchors.topMargin: 100
    Text {
        id: software
        text: qsTr("ACADEMIC")
        font.family: pBlack.name
        font.pixelSize: 110
        font.weight: 800
        color: pullc.color("white")
    }

    Text {
        id: engineer
        text: qsTr("PROFILE")
        font.family: pBlack.name
        font.pixelSize: 110
        font.weight: 800
        color: pullc.color("gray")

        Layout.topMargin: -50
    }

    ColumnLayout
    {   Layout.topMargin: -30
        Rectangle
        {
            id: onhoverrect1
            width: 700
            height: 220
            color: "Transparent" // On hover changes to gray
            radius: 20

            ColumnLayout
            {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 10
                spacing: 20
                Text {
                    id: exp1
                    text: qsTr("Bachelors of Engineering: Software Eng.")
                    font.family: pSemibold.name
                    font.pixelSize: 30
                    font.weight: 600
                    color: pullc.color("white")
                }

                Text {
                    id: expPos
                    text: qsTr("Seneca Polytechnic")
                    font.family: pMedium.name
                    font.weight: 600
                    font.pixelSize: 20
                    color: pullc.color("white")
                    opacity: 0.7
                    Layout.topMargin: -20
                }

                Rectangle
                {
                    width: 650
                    height: 50
                    Layout.alignment: Qt.AlignCenter
                    color: "Transparent"
                    Text {
                        id: pdescipt1
                        text: qsTr("Led the design team in creating user-centric mobile and web applications, improving the user experience and increasing user engagement.")
                        font.family: pRegular.name
                        font.pixelSize: 17
                        // horizontalAlignment: Text.AlignHCenter
                        width: 650
                        color: pullc.color("white")
                        wrapMode: Text.Wrap
                        opacity: 0.5
                    }
                }

                Text {
                    id: date1
                    text: qsTr("Sep 2022 - May 2026")
                    font.family: pRegular.name
                    font.pixelSize: 15
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
