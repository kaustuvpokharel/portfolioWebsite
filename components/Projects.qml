import QtQuick 2.15
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

ColumnLayout
{
    Layout.topMargin: (window.width > 1150) ? 100 : Math.max(window.width * 0.058, 20)
    layer.enabled: true   // Caches the loaded ProfileCard component
    layer.smooth: true    // Optional: smoothens the cached texture
    layer.mipmap: true
    // anchors.top : parent.top
    // anchors.topMargin: 100
    Text {
        id: software
        text: qsTr("RECENT")
        font.family: fonts.black
        font.pixelSize: (window.width > 1150) ? 110 : Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("white")
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
    }

    Text {
        id: engineer
        text: qsTr("PROJECTS")
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
            Layout.preferredHeight: (window.width > 700) ? 200 : 150
            color: "Transparent" // On hover changes to gray
            Layout.alignment: (window.width > 700) ? Qt.AlignLeft : Qt.AlignHCenter

            radius: 20
            RowLayout
            {
                //anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 10
                spacing: 20
                Rectangle
                {
                    Layout.preferredWidth: (window.width > 700) ? 150 : Math.max(window.width * 0.095, 100)
                    Layout.preferredHeight: (window.width > 700) ? 180 : 120
                    id: imgrect1
                    color: "Transparent"
                    radius: 20

                    Image {
                        id: rocketifyImg
                        source: "qrc:/projects/astrovImg"
                        anchors.fill: parent
                        smooth: true
                        fillMode: Image.PreserveAspectCrop
                        layer.enabled: true
                        layer.effect: OpacityMask
                        {
                            maskSource: mask1
                        }
                        asynchronous: false
                    }

                    Rectangle
                    {
                        //mask for the background image used inside the profile card
                        id:mask1
                        anchors.fill: parent
                        visible: false
                        radius: 20
                    }
                }

                ColumnLayout
                {
                    Layout.alignment: Qt.AlignCenter
                    spacing: (window.width > 500) ? 20 : -100
                    Rectangle
                    {
                        id: title1
                        Layout.preferredHeight: (window.width > 700) ? 40 : projectname1.height
                        Layout.preferredWidth: (window.width > 700) ? 600 : onhoverrect1.width * 0.7
                        color: "Transparent"
                        Layout.alignment: Qt.AlignCenter
                        Text {
                            id: projectname1
                            text: qsTr("Astrova QGC-CrossPlatform")
                            font.family: fonts.bold
                            font.pixelSize: (window.width > 700) ? 30 : Math.max(window.width * 0.0058, 20)
                            font.weight: 700
                            color: pullc.color("white")
                            wrapMode: Text.Wrap
                            width: (window.width > 700) ? 600 : onhoverrect1.width * 0.7
                        }
                    }

                    Rectangle
                    {
                        id: desRect1
                        Layout.preferredHeight: (window.width > 700) ? 100 : pdescipt1.height
                        Layout.preferredWidth: (window.width > 700) ? 600 : onhoverrect1.width * 0.7
                        color: "Transparent"
                        Text {
                            id: pdescipt1
                            text: qsTr("Developed a cross-platform Ground Control Station (GCS) in C++/Qt for Android and Desktop, integrating MAVLink and PX4 for real-time drone telemetry, mission control, and sensor data visualization.")
                            font.family: fonts.regular
                            font.weight: 400
                            font.pixelSize: (window.width > 700) ? 16 : Math.max(window.width * 0.001, 14)
                            horizontalAlignment: Text.AlignJustify
                            width: (window.width > 700) ? 500 : onhoverrect1.width * 0.7
                            color: pullc.color("white")
                            wrapMode: Text.Wrap
                            opacity: 0.5
                            visible: (window.width > 500) ? true : false
                        }
                    }
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
                    Qt.openUrlExternally("https://www.linkedin.com/posts/kaustuvpokharel_astrovaaerospace-agritech-dronegcs-activity-7256913741294821376-1oEx?utm_source=share&utm_medium=member_desktop")
                }
            }
        }


        Rectangle
        {
            id: onhoverrect2
            Layout.preferredWidth: (window.width > 700) ? 700 : window.width*0.9
            Layout.preferredHeight: (window.width > 700) ? 200 : 150
            color: "Transparent" // On hover changes to gray
            Layout.alignment: (window.width > 700) ? Qt.AlignLeft : Qt.AlignHCenter

            radius: 20
            RowLayout
            {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 10
                spacing: 20
                Rectangle
                {
                    Layout.preferredWidth: (window.width > 700) ? 150 : Math.max(window.width * 0.095, 100)
                    Layout.preferredHeight: (window.width > 700) ? 180 : 120
                    id: imgrect2
                    color: "Transparent"
                    radius: 20

                    Image {
                        source: "qrc:/projects/rocketifyImg"
                        anchors.fill: parent
                        smooth: true
                        fillMode: Image.PreserveAspectCrop
                        layer.enabled: true
                        layer.effect: OpacityMask
                        {
                            maskSource: mask2
                        }
                        asynchronous: false
                    }

                    Rectangle
                    {
                        //mask for the background image used inside the profile card
                        id:mask2
                        anchors.fill: parent
                        visible: false
                        radius: 20
                    }
                }

                ColumnLayout
                {
                    Layout.alignment: Qt.AlignCenter
                    spacing: (window.width > 500) ? 20 : -100
                    Rectangle
                    {
                        id: title2
                        Layout.preferredHeight: (window.width > 700) ? 40 : projectname2.height
                        Layout.preferredWidth: (window.width > 700) ? 600 : onhoverrect2.width * 0.7
                        color: "Transparent"
                        Layout.alignment: Qt.AlignCenter
                        Text {
                            id: projectname2
                            text: qsTr("FireShip")
                            font.family: fonts.bold
                            font.pixelSize: (window.width > 700) ? 30 : Math.max(window.width * 0.0058, 20)
                            font.weight: 700
                            color: pullc.color("white")
                            wrapMode: Text.Wrap
                            width: (window.width > 700) ? 600 : onhoverrect2.width * 0.7
                        }
                    }

                    Rectangle
                    {
                        id: desRect2
                        Layout.preferredHeight: (window.width > 700) ? 100 : pdescipt2.height
                        Layout.preferredWidth: (window.width > 700) ? 600 : onhoverrect2.width * 0.7
                        color: "Transparent"
                        Text {
                            id: pdescipt2
                            text: qsTr("2D arcade-style game built with Qt and C++ featuring gravity, collision detection, score tracking, and entity management. Documented with 30+ YouTube tutorials for learning support for the community.")
                            font.family: fonts.regular
                            font.weight: 400
                            font.pixelSize: (window.width > 700) ? 16 : Math.max(window.width * 0.001, 14)
                            horizontalAlignment: Text.AlignJustify
                            width: (window.width > 700) ? 500 : onhoverrect2.width * 0.7
                            color: pullc.color("white")
                            wrapMode: Text.Wrap
                            opacity: 0.5
                            visible: (window.width > 500) ? true : false
                        }
                    }
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
                    onhoverrect2.color = pullc.color("gray")
                }

                onExited:
                {
                    onhoverrect2.color = "Transparent"
                }

                onClicked:
                {
                    Qt.openUrlExternally("https://github.com/kaustuvpokharel/FireShip")
                }
            }
        }

        Rectangle
        {
            id: onhoverrect3
            Layout.preferredWidth: (window.width > 700) ? 700 : window.width*0.9
            Layout.preferredHeight: (window.width > 700) ? 200 : 150
            color: "Transparent" // On hover changes to gray
            radius: 20
            RowLayout
            {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 10
                spacing: 20
                Rectangle
                {
                    Layout.preferredWidth: (window.width > 700) ? 150 : Math.max(window.width * 0.095, 100)
                    Layout.preferredHeight: (window.width > 700) ? 180 : 120
                    id: imgrect3
                    color: "Transparent"
                    radius: 20

                    Image {
                        source: "qrc:/projects/firewall"
                        anchors.fill: parent
                        smooth: true
                        fillMode: Image.PreserveAspectCrop
                        layer.enabled: true
                        layer.effect: OpacityMask
                        {
                            maskSource: mask3
                        }
                        asynchronous: false
                    }

                    Rectangle
                    {
                        //mask for the background image used inside the profile card
                        id:mask3
                        anchors.fill: parent
                        visible: false
                        radius: 20
                    }
                }

                ColumnLayout
                {
                    Layout.alignment: Qt.AlignCenter
                    spacing: (window.width > 500) ? 20 : -100
                    Rectangle
                    {
                        id: title3
                        Layout.preferredHeight: (window.width > 700) ? 40 : projectname3.height
                        Layout.preferredWidth: (window.width > 700) ? 600 : onhoverrect3.width * 0.7
                        color: "Transparent"
                        Layout.alignment: Qt.AlignCenter
                        Text {
                            id: projectname3
                            text: qsTr("Firewall - Desktop APP")
                            font.family: fonts.bold
                            font.pixelSize: (window.width > 700) ? 30 : Math.max(window.width * 0.0058, 20)
                            font.weight: 700
                            color: pullc.color("white")
                            wrapMode: Text.Wrap
                            width: (window.width > 700) ? 600 : onhoverrect3.width * 0.7
                        }
                    }

                    Rectangle
                    {
                        id: desRect3
                        Layout.preferredHeight: (window.width > 700) ? 100 : pdescipt3.height
                        Layout.preferredWidth: (window.width > 700) ? 600 : onhoverrect3.width * 0.7
                        color: "Transparent"
                        height: 100
                        width: 600
                        Text {
                            id: pdescipt3
                            text: qsTr("Developed a Next-Gen Firewall prototype with C++, Qt, and Python, integrating real-time packet capture (Pcap), multithreading (QThread), and AI-driven analysis (PyTorch).")
                            font.family: fonts.regular
                            font.weight: 400
                            font.pixelSize: (window.width > 700) ? 16 : Math.max(window.width * 0.001, 14)
                            horizontalAlignment: Text.AlignJustify
                            width: (window.width > 700) ? 500 : onhoverrect3.width * 0.7
                            color: pullc.color("white")
                            wrapMode: Text.Wrap
                            opacity: 0.5
                            visible: (window.width > 500) ? true : false
                        }
                    }
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
                    onhoverrect3.color = pullc.color("gray")
                }

                onExited:
                {
                    onhoverrect3.color = "Transparent"
                }

                onClicked:
                {
                    Qt.openUrlExternally("https://github.com/kaustuvpokharel/FireWall_Version2")
                }
            }
        }

        Rectangle
        {
            id: onhoverrect4
            Layout.preferredWidth: (window.width > 700) ? 700 : window.width*0.9
            Layout.preferredHeight: (window.width > 700) ? 200 : 150
            color: "Transparent" // On hover changes to gray
            radius: 20
            RowLayout
            {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 10
                spacing: 20
                Rectangle
                {
                    Layout.preferredWidth: (window.width > 700) ? 150 : Math.max(window.width * 0.095, 100)
                    Layout.preferredHeight: (window.width > 700) ? 180 : 120
                    id: imgrect4
                    color: "Transparent"
                    radius: 20

                    Image {
                        source: "qrc:/projects/foodiez.png"
                        anchors.fill: parent
                        smooth: true
                        fillMode: Image.PreserveAspectCrop
                        layer.enabled: true
                        layer.effect: OpacityMask
                        {
                            maskSource: mask4
                        }
                        asynchronous: false
                    }

                    Rectangle
                    {
                        //mask for the background image used inside the profile card
                        id:mask4
                        anchors.fill: parent
                        visible: false
                        radius: 20
                    }
                }

                ColumnLayout
                {
                    Layout.alignment: Qt.AlignCenter
                    spacing: (window.width > 500) ? 20 : -100
                    Rectangle
                    {
                        id: title4
                        Layout.preferredHeight: (window.width > 700) ? 40 : projectname4.height
                        Layout.preferredWidth: (window.width > 700) ? 600 : onhoverrect4.width * 0.7
                        color: "Transparent"
                        Layout.alignment: Qt.AlignCenter
                        Text {
                            id: projectname4
                            text: qsTr("Foodiez - Social Media")
                            font.family: fonts.bold
                            font.pixelSize: (window.width > 700) ? 30 : Math.max(window.width * 0.0058, 20)
                            font.weight: 700
                            color: pullc.color("white")
                            wrapMode: Text.Wrap
                            width: (window.width > 700) ? 600 : onhoverrect4.width * 0.7
                        }
                    }

                    Rectangle
                    {
                        id: desRect4
                        Layout.preferredHeight: (window.width > 700) ? 100 : pdescipt4.height
                        Layout.preferredWidth: (window.width > 700) ? 600 : onhoverrect4.width * 0.7
                        color: "Transparent"
                        height: 100
                        width: 600
                        Text {
                            id: pdescipt4
                            text: qsTr("Instagram-style app for food lovers with post uploads, user profiles, and real-time updates. Built with Qt/QML frontend and C++ backend.")
                            font.family: fonts.regular
                            font.weight: 400
                            font.pixelSize: (window.width > 700) ? 16 : Math.max(window.width * 0.001, 14)
                            horizontalAlignment: Text.AlignJustify
                            width: (window.width > 700) ? 500 : onhoverrect4.width * 0.7
                            color: pullc.color("white")
                            wrapMode: Text.Wrap
                            opacity: 0.5
                            visible: (window.width > 500) ? true : false
                        }
                    }
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
                    onhoverrect4.color = pullc.color("gray")
                }

                onExited:
                {
                    onhoverrect4.color = "Transparent"
                }

                onClicked:
                {
                    Qt.openUrlExternally("https://github.com/kaustuvpokharel/FireWall_Version2")
                }
            }
        }
    }
}
