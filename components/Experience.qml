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
        text: qsTr("YEARS OF")
        font.family: pBlack.name
        font.pixelSize: 110
        font.weight: 800
        color: pullc.color("white")
    }

    Text {
        id: engineer
        text: qsTr("EXPERIENCE")
        font.family: pBlack.name
        font.pixelSize: 110
        font.weight: 800
        color: pullc.color("gray")

        Layout.topMargin: -50
    }

    ColumnLayout
    {
        Layout.topMargin: -30
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
                    text: qsTr("Software Engineer Intern (Incoming)")
                    font.family: pSemibold.name
                    font.pixelSize: 30
                    font.weight: 600
                    color: pullc.color("white")
                }

                Text {
                    id: expPos
                    text: qsTr("Ansys Inc.")
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
                    text: qsTr("May 2025 - August 2025")
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
                    Qt.openUrlExternally("https://www.ansys.com/")
                }
            }
        }


        Rectangle
        {
            id: onhoverrect2
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
                    id: exp2
                    text: qsTr("C++ Developer")
                    font.family: pSemibold.name
                    font.pixelSize: 30
                    font.weight: 600
                    color: pullc.color("white")
                }

                Text {
                    id: expPos2
                    text: qsTr("Astrova Aerospace")
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
                        id: pdescipt2
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
                    id: date2
                    text: qsTr("Aug 2024 - Present")
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
                    onhoverrect2.color = pullc.color("gray")
                }

                onExited:
                {
                    onhoverrect2.color = "Transparent"
                }

                onClicked:
                {
                    Qt.openUrlExternally("https://astrovaaerospace.com/#")
                }
            }
        }

        Rectangle
        {
            id: onhoverrect3
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
                    id: exp3
                    text: qsTr("Software Developer Intern")
                    font.family: pSemibold.name
                    font.pixelSize: 30
                    font.weight: 600
                    color: pullc.color("white")
                }

                Text {
                    id: expPos3
                    text: qsTr("Bell Canada")
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
                        id: pdescipt3
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
                    id: date3
                    text: qsTr("May 2024 - Aug 2024")
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
                    onhoverrect3.color = pullc.color("gray")
                }

                onExited:
                {
                    onhoverrect3.color = "Transparent"
                }

                onClicked:
                {
                    Qt.openUrlExternally("https://www.bell.ca/")
                }
            }
        }

        Rectangle
        {
            id: onhoverrect4
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
                    id: exp4
                    text: qsTr("3D Generalist")
                    font.family: pSemibold.name
                    font.pixelSize: 30
                    font.weight: 600
                    color: pullc.color("white")
                }

                Text {
                    id: expPos4
                    text: qsTr("SunBi Holding Pvt. Ltd.")
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
                        id: pdescipt4
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
                    id: date4
                    text: qsTr("Jan 2021 - Aug 2022")
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
                    onhoverrect4.color = pullc.color("gray")
                }

                onExited:
                {
                    onhoverrect4.color = "Transparent"
                }

                onClicked:
                {
                    Qt.openUrlExternally("https://sunbi.com.np/index")
                }
            }
        }

    }
}
