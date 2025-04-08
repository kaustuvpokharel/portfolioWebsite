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
        text: qsTr("YEARS OF")
        font.family: fonts.black
        font.pixelSize: (window.width > 1150) ? 110 : Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("white")
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
    }

    Text {
        id: engineer
        text: qsTr("EXPERIENCE")
        font.family: fonts.black
        font.pixelSize:  (window.width > 1150) ? 110 :  Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("gray")
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
        Layout.topMargin: (window.width > 1150) ? -35 :  (window.width * 0.027) - 25
    }

    ColumnLayout
    {
        Layout.topMargin: (window.width > 1150) ? -20 : window.width*0.020
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
        Rectangle
        {
            id: onhoverrect1
            Layout.preferredWidth: (window.width > 700) ? 700 : window.width*0.9
            Layout.preferredHeight: (window.width > 700) ? 200 : 200
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
                    Layout.preferredHeight: (window.width > 700) ? 50 : exp1.height
                    Layout.alignment: Qt.AlignCenter
                    color: "Transparent"
                    Text {
                        id: exp1
                        text: qsTr("Software Engineer Intern")
                        font.family: fonts.bold
                        font.pixelSize: (window.width > 700) ? 30 : Math.max(window.width * 0.0058, 20)
                        font.weight: 700
                        width: (window.width > 700) ? 500 : window.width*0.7
                        color: pullc.color("white")
                    }
                }

                Text {
                    id: expPos
                    text: qsTr("Ansys Inc.")
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
                    Layout.preferredHeight: (window.width > 700) ? 50 : pdescipt1.height
                    Layout.alignment: Qt.AlignCenter
                    Layout.topMargin: -10
                    color: "Transparent"
                    Text {
                        id: pdescipt1
                        text: qsTr("Upcoming Summer 2025 Software Engineer Intern: Electronics")
                        font.family: fonts.medium
                        font.weight: 500
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
                    text: qsTr("May 2025 - August 2025")
                    font.family: fonts.regular
                    font.weight: 400
                    font.pixelSize: (window.width > 700) ? 15 : Math.max(window.width * 0.001, 13)
                    // horizontalAlignment: Text.AlignHCenter
                    Layout.topMargin:  (window.width > 700) ? 15 : -10
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
            Layout.preferredWidth: (window.width > 700) ? 700 : window.width*0.9
            Layout.preferredHeight: (window.width > 700) ? 200 : 200
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
                    Layout.preferredHeight: (window.width > 700) ? 50 : exp2.height
                    Layout.alignment: Qt.AlignCenter
                    color: "Transparent"
                    Text {
                        id: exp2
                        text: qsTr("C++ Developer")
                        font.family: fonts.bold
                        font.pixelSize: (window.width > 700) ? 30 : Math.max(window.width * 0.0058, 20)
                        font.weight: 700
                        width: (window.width > 700) ? 500 : window.width*0.7
                        color: pullc.color("white")
                    }
                }

                Text {
                    id: expPos2
                    text: qsTr("Astrova Aerospace")
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
                    Layout.preferredHeight: (window.width > 700) ? 50 : pdescipt2.height
                    Layout.alignment: Qt.AlignCenter
                    color: "Transparent"
                    Layout.topMargin: -10
                    Text {
                        id: pdescipt2
                        text: qsTr("Led the design team in creating user-centric mobile and web applications, improving the user experience and increasing user engagement.")
                        font.family: fonts.regular
                        font.weight: 400
                        font.pixelSize: (window.width > 700) ? 17 : Math.max(window.width * 0.001, 15)
                        // horizontalAlignment: Text.AlignHCenter
                        width: (window.width > 700) ? 500 : window.width*0.85
                        color: pullc.color("white")
                        wrapMode: Text.Wrap
                        opacity: 0.5
                    }
                }

                Text {
                    id: date2
                    text: qsTr("Aug 2024 - Present")
                    Layout.topMargin:  (window.width > 700) ? 15 : -10
                    font.family: fonts.regular
                    font.weight: 400
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
            Layout.preferredWidth: (window.width > 700) ? 700 : window.width*0.9
            Layout.preferredHeight: (window.width > 700) ? 200 : 200
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
                    Layout.preferredHeight: (window.width > 700) ? 50 : exp3.height
                    Layout.alignment: Qt.AlignCenter
                    color: "Transparent"
                    Text {
                        id: exp3
                        text: qsTr("Software Developer Intern")
                        font.family: fonts.bold
                        font.pixelSize: (window.width > 700) ? 30 : Math.max(window.width * 0.0058, 20)
                        font.weight: 700
                        width: (window.width > 700) ? 500 : window.width*0.7
                        color: pullc.color("white")
                    }
                }

                Text {
                    id: expPos3
                    text: qsTr("Bell Canada")
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
                    Layout.preferredHeight: (window.width > 700) ? 50 : pdescipt3.height
                    Layout.alignment: Qt.AlignCenter
                    color: "Transparent"
                    Layout.topMargin: -10
                    Text {
                        id: pdescipt3
                        text: qsTr("Led the design team in creating user-centric mobile and web applications, improving the user experience and increasing user engagement.")
                        font.family: fonts.regular
                        font.weight: 400
                        font.pixelSize: (window.width > 700) ? 17 : Math.max(window.width * 0.001, 15)
                        // horizontalAlignment: Text.AlignHCenter
                        width: (window.width > 700) ? 500 : window.width*0.85
                        color: pullc.color("white")
                        wrapMode: Text.Wrap
                        opacity: 0.5
                    }
                }

                Text {
                    id: date3
                    text: qsTr("May 2024 - Aug 2024")
                    Layout.topMargin:  (window.width > 700) ? 15 : -10
                    font.family: fonts.regular
                    font.weight: 400
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
            Layout.preferredWidth: (window.width > 700) ? 700 : window.width*0.9
            Layout.preferredHeight: (window.width > 700) ? 200 : 200
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
                    Layout.preferredHeight: (window.width > 700) ? 50 : exp4.height
                    Layout.alignment: Qt.AlignCenter
                    color: "Transparent"
                    Text {
                        id: exp4
                        text: qsTr("3D Generalist")
                        font.family: fonts.bold
                        font.pixelSize: (window.width > 700) ? 30 : Math.max(window.width * 0.0058, 20)
                        font.weight: 700
                        width: (window.width > 700) ? 500 : window.width*0.7
                        color: pullc.color("white")
                    }
                }

                Text {
                    id: expPos4
                    text: qsTr("SunBi Holding Pvt. Ltd.")
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
                    Layout.preferredHeight: (window.width > 700) ? 50 : pdescipt4.height
                    Layout.alignment: Qt.AlignCenter
                    color: "Transparent"
                    Layout.topMargin: -10
                    Text {
                        id: pdescipt4
                        text: qsTr("Led the design team in creating user-centric mobile and web applications, improving the user experience and increasing user engagement.")
                        font.family: fonts.regular
                        font.weight: 400
                        font.pixelSize: (window.width > 700) ? 17 : Math.max(window.width * 0.001, 15)
                        // horizontalAlignment: Text.AlignHCenter
                        width: (window.width > 700) ? 500 : window.width*0.85
                        color: pullc.color("white")
                        wrapMode: Text.Wrap
                        opacity: 0.5
                    }
                }

                Text {
                    id: date4
                    text: qsTr("Jan 2021 - Aug 2022")
                    Layout.topMargin:  (window.width > 700) ? 15 : -10
                    font.family: fonts.regular
                    font.weight: 400
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
