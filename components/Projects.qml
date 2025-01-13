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
        text: qsTr("RECENT")
        font.family: pBlack.name
        font.pixelSize: 110
        font.weight: 800
        color: pullc.color("white")
    }

    Text {
        id: engineer
        text: qsTr("PROJECTS")
        font.family: pBlack.name
        font.pixelSize: 110
        font.weight: 800
        color: pullc.color("gray")

        Layout.topMargin: -50
    }

    ColumnLayout
    {   Layout.topMargin: -20
        Rectangle
        {
            id: onhoverrect1
            width: 700
            height: 200
            color: "Transparent" // On hover changes to gray

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
                    width: 150
                    height: 180
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
                    Text {
                        id: projectname1
                        text: qsTr("Astrova QGC - Cross Platform")
                        font.family: pSemibold.name
                        font.pixelSize: 30
                        font.weight: 600
                        color: pullc.color("white")
                    }

                    Rectangle
                    {
                        height: 100
                        width: 600
                        color: "Transparent"
                        Text {
                            id: pdescipt1
                            text: qsTr("Enhanced the open-source QGroundControl for desktop and Android, managing full-stack development using Qt and C++. Updated features like real-time telemetry, flight planning, and mission monitoring.")
                            font.family: pRegular.name
                            font.pixelSize: 17
                            horizontalAlignment: Text.AlignJustify
                            width: 500
                            color: pullc.color("white")
                            wrapMode: Text.Wrap
                            opacity: 0.5
                        }
                    }
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
                    Qt.openUrlExternally("https://www.linkedin.com/posts/kaustuvpokharel_astrovaaerospace-agritech-dronegcs-activity-7256913741294821376-1oEx?utm_source=share&utm_medium=member_desktop")
                }
            }
        }


        Rectangle
        {
            id: onhoverrect2
            width: 700
            height: 200
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
                    width: 150
                    height: 180
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
                    Text {
                        id: projectname2
                        text: qsTr("Rocketify")
                        font.family: pSemibold.name
                        font.pixelSize: 30
                        font.weight: 600
                        color: pullc.color("white")
                    }

                    Rectangle
                    {
                        height: 130
                        width: 600
                        color: "Transparent"
                        Text {
                            id: pdescipt2
                            text: qsTr("Simulated  a 2D game using C++ and JavaScript with a backend in QT and a front-end in QML, incorporating a linked list data structure to manage game entities, and implemented gameplay mechanics including dynamic object creation, collision detection, and score tracking.")
                            font.family: pRegular.name
                            font.pixelSize: 17
                            horizontalAlignment: Text.AlignJustify
                            width: 500
                            color: pullc.color("white")
                            wrapMode: Text.Wrap
                            opacity: 0.5
                        }
                    }
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
                    Qt.openUrlExternally("https://github.com/kaustuvpokharel/Rocketify")
                }
            }
        }

        Rectangle
        {
            id: onhoverrect3
            width: 700
            height: 200
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
                    width: 150
                    height: 180
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
                    Text {
                        id: projectname3
                        text: qsTr("Next-Gen Firewall - Desktop App")
                        font.family: pSemibold.name
                        font.pixelSize: 30
                        font.weight: 600
                        color: pullc.color("white")
                    }

                    Rectangle
                    {
                        height: 100
                        width: 600
                        color: "Transparent"
                        Text {
                            id: pdescipt3
                            text: qsTr("Developed a Next-Generation Firewall prototype using C++, QT, and Python, featuring real-time packet capture and analysis with Pcap, multithreaded processing with QThread, and AI-driven packet analysis with PyTorch.")
                            font.family: pRegular.name
                            font.pixelSize: 17
                            horizontalAlignment: Text.AlignJustify
                            width: 500
                            color: pullc.color("white")
                            wrapMode: Text.Wrap
                            opacity: 0.5
                        }
                    }
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
                    Qt.openUrlExternally("https://github.com/kaustuvpokharel/FireWall_Version2")
                }
            }
        }

        Rectangle
        {
            id: onhoverrect4
            width: 700
            height: 200
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
                    width: 150
                    height: 180
                    id: imgrect4
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
                            maskSource: mask4
                        }
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
                    Text {
                        id: projectname4
                        text: qsTr("Vulkan Project")
                        font.family: pSemibold.name
                        font.pixelSize: 30
                        font.weight: 600
                        color: pullc.color("white")
                    }

                    Text {
                        id: pdescipt4
                        text: qsTr("Work in Progress..")
                        font.family: pRegular.name
                        font.pixelSize: 17
                        // horizontalAlignment: Text.AlignHCenter
                        width: 650
                        color: pullc.color("white")
                        wrapMode: Text.Wrap
                        opacity: 0.5
                    }
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
                    Qt.openUrlExternally("https://github.com/kaustuvpokharel/")
                }
            }
        }
    }
}
