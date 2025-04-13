import QtQuick 2.15
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

ColumnLayout
{
    id:softengLayer
    property bool isDesktop: false

    Layout.topMargin: (window.width > 1150) ? 50 : Math.max(window.width * 0.058, 20)
    Text {
        id: software
        text: qsTr("SOFTWARE")
        font.family: fonts.black
        font.pixelSize: (window.width > 1150) ? 110 : Math.max(window.width * 0.058, 50)
        font.weight: 700
        color: pullc.color("white")
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
    }

    Text {
        id: engineer
        text: qsTr("ENGINEER")
        font.family: fonts.black
        font.pixelSize:  (window.width > 1150) ? 110 :  Math.max(window.width * 0.058, 50)
        font.weight: 700
        color: pullc.color("gray")
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
        Layout.topMargin: (window.width > 1150) ? -35 :  (window.width * 0.027) - 25
    }

    Rectangle
    {
        id: textWrapper1
        Layout.preferredWidth: (window.width > 1150) ? 650 :  Math.max(window.width* 0.8, 380)
        Layout.preferredHeight: discript.height
        color: "Transparent"
        Layout.topMargin: (window.width > 1150) ? -20 : window.width*0.020
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter

        Text
        {
            id:discript
            text: qsTr("<html><b>Core Skills:</b> C++, C, CMake, Linux, Git, Github, Jira, Blender 3D<br />
<b>Frameworks/Libraries:</b> QT, QML, Vulkan, GLSL, ImGui, SYCL, STL, Socket, Boost, Pcap<br />
<b>Basic Skills:</b> Python, JavaScript, HTML/CSS, SQL, Microsoft Azure, Figma, Confluence<br />
<b>Concepts:</b> Data Structures and Algorithms (DSA), Graphics Pipeline, GPGPU, Parallel/Concurrent Programming, RAII, OOP, Multi-threading, Memory Management, Unit Testing, Agile, Scrum, CI/CD</html>")
            font.family: fonts.regular
            font.weight: 400
            font.pixelSize: (window.width > 1150) ? 18 : Math.max(window.width * 0.001, 14)
            horizontalAlignment: (window.width > 1150) ? Text.AlignJustify : Text.AlignHCenter | Text.AlignJustify
            anchors.centerIn: parent
            width:(window.width > 1150) ? 650 :  Math.max(window.width*0.8, 360)
            color: pullc.color("white")
            wrapMode: Text.Wrap
            opacity: 0.5
        }
    }

    GridLayout
    {

        columns: 3
        columnSpacing: (window.width > 1150) ? 30 : (window.width * 0.07)
        rowSpacing: (window.width > 1150) ? -10 : (window.width * 0.0095) - 10
        Layout.topMargin: (window.width > 1150) ? 80 : (window.width * 0.0020)
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter

        Text {
            id: yieNum
            text: qsTr("+2")
            font.family: fonts.bold
            font.pixelSize:  (window.width > 1150) ? 70 :  Math.max(window.width * 0.088, 30)
            font.weight: 700
            color: pullc.color("white")
            Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
        }

        Text {
            id: pcNum
            text: qsTr("+10")
            font.family: fonts.bold
            font.pixelSize:  (window.width > 1150) ? 70 :  Math.max(window.width * 0.088, 30)
            font.weight: 700
            color: pullc.color("white")
            Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
        }

        Text {
            id: cwNum
            text: qsTr("+3")
            font.family: fonts.bold
            font.pixelSize:  (window.width > 1150) ? 70 :  Math.max(window.width * 0.088, 30)
            font.weight: 700
            color: pullc.color("white")
            Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
        }


        Rectangle
        {
            Layout.preferredWidth: (window.width > 1150) ? 150 : Math.max(window.width * 0.095, 100)
            height: 40
            Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
            color: "Transparent"
            Text
            {
                id:yie
                text: qsTr("YEARS OF EXPERIENCE")
                font.family: fonts.regular
                font.weight: 400
                font.pixelSize:  (window.width > 1150) ? 15 : Math.max(window.width * 0.008, 13)
                horizontalAlignment: (window.width > 1150) ? Text.AlignLeft : Text.AlignHCenter
                width: (window.width > 1150) ? 150 : Math.max(window.width * 0.095, 100)
                color: pullc.color("white")
                wrapMode: Text.Wrap
                opacity: 0.5
            }
        }

        Rectangle
        {
            Layout.preferredWidth: (window.width > 1150) ? 150 : Math.max(window.width * 0.095, 100)
            height: 40
            Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
            color: "Transparent"
            Text
            {
                id:pc
                text: qsTr("PROJECTS COMPLETED")
                font.family: fonts.regular
                font.weight: 400
                font.pixelSize: (window.width > 1150) ? 15 : Math.max(window.width * 0.008, 13)
                horizontalAlignment: (window.width > 1150) ? Text.AlignLeft : Text.AlignHCenter
                width: (window.width > 1150) ? 150 : Math.max(window.width * 0.095, 100)
                color: pullc.color("white")
                wrapMode: Text.Wrap
                opacity: 0.5
            }
        }

        Rectangle
        {
            Layout.preferredWidth: (window.width > 1150) ? 150 : Math.max(window.width * 0.095, 100)
            Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
            height: 40
            color: "Transparent"
            Text
            {
                id:cw
                text: qsTr("COMPANIES WORKED WITH")
                font.family: fonts.regular
                font.weight: 400
                font.pixelSize: (window.width > 1150) ? 15 : Math.max(window.width * 0.008, 13)
                horizontalAlignment: (window.width > 1150) ? Text.AlignLeft : Text.AlignHCenter
                width: (window.width > 1150) ? 150 : Math.max(window.width * 0.095, 100)
                color: pullc.color("white")
                wrapMode: Text.Wrap
                opacity: 0.5
            }
        }

    }

    GridLayout
    {
        Layout.topMargin: (window.width > 1150) ? 100 : (window.width * 0.027)
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
        columns: (window.width > 700) ? 2 : 1
        columnSpacing: (window.width > 700) ? 30 : 1
        Rectangle
        {
            id:resume
            color: pullc.color("gray")
            radius: 10
            Layout.preferredWidth: (window.width > 700) ? 310 : window.width*0.9
            Layout.preferredHeight: 250
            Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignCenter
            Image {
                id: bgImage
                source: "qrc:/youtubePlaylist/gamePreview.png"
                anchors.fill: parent
                smooth: true
                fillMode: Image.PreserveAspectCrop
                opacity: 0.7
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
                radius: 10
            }

            ColumnLayout
            {
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.topMargin: 30
                anchors.leftMargin: 30
                spacing: 10

                Image {
                    id: rIcon
                    source: "qrc:/softwareEng/youtubeWhite"
                    Layout.preferredWidth: 45
                    Layout.preferredHeight: 45
                    smooth: true
                    fillMode: Image.PreserveAspectFit
                    asynchronous: false
                }
                Rectangle
                {
                    Layout.preferredWidth: (window.width > 700) ? 250 : youtube.width*0.8
                    Layout.preferredHeight: 50
                    color: "Transparent"

                    Text
                    {
                        id: resumeT
                        text: qsTr("FireShip — Game tutorial Playlist")
                        font.family: fonts.bold
                        font.weight: 700
                        font.pixelSize: 25
                        // horizontalAlignment: Text.AlignHCenter
                        width: (window.width > 700) ? 250 : resume.width*0.8
                        color: pullc.color("white")
                        wrapMode: Text.Wrap
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
                    resume.opacity = (window.width > 500) ? 0.7 : 1
                }

                onExited:
                {
                    resume.opacity = 1
                }

                onClicked:
                {
                    Qt.openUrlExternally("https://youtube.com/playlist?list=PLeYV3WjZWmHyYUe-BElUVNeFYTmpOQ9Xq&si=2tj9ioXoycysRtZU")
                }
            }

        }

        Rectangle
        {
            id: youtube
            color: pullc.color("neon")
            radius: 10
            Layout.preferredWidth: (window.width > 700) ? 360 : window.width*0.9
            Layout.preferredHeight: 250
            Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignCenter
            opacity: 1
            // Image {
            //     id: bgImage1
            //     source: "qrc:/bg/bgCard"
            //     anchors.fill: parent
            //     smooth: true
            //     fillMode: Image.PreserveAspectCrop
            //     opacity: 0.2
            //     layer.enabled: true
            //     layer.effect: OpacityMask
            //     {
            //         maskSource: mask2
            //     }
            // }
            // Rectangle
            // {
            //     //mask for the background image used inside the profile card
            //     id:mask2
            //     anchors.fill: parent
            //     visible: false
            //     radius: 10
            // }

            ColumnLayout
            {
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.topMargin: 30
                anchors.leftMargin: 30
                spacing: 5

                Image {
                    id: ytIcon
                    source: "qrc:/softwareEng/article"
                    Layout.preferredWidth: 45
                    Layout.preferredHeight: 45
                    smooth: true
                    fillMode: Image.PreserveAspectFit
                    asynchronous: false
                }
                Rectangle
                {
                    Layout.preferredWidth: (window.width > 700) ? 250 : youtube.width*0.8
                    Layout.preferredHeight: 50
                    color: "Transparent"

                    Text
                    {
                        id: yText
                        text: qsTr("Resume it is—roast or toast?")
                        font.family: fonts.bold
                        font.weight: 700
                        font.pixelSize: 25
                        // horizontalAlignment: Text.AlignHCenter
                        width: (window.width > 700) ? 250 : youtube.width*0.8
                        color: pullc.color("black")
                        wrapMode: Text.Wrap
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
                    youtube.opacity = (window.width > 500) ? 0.7 : 1
                }

                onExited:
                {
                    youtube.opacity = 1
                }

                onClicked:
                {
                    Qt.openUrlExternally("https://drive.google.com/file/d/1opCDExyyeEA0Kvw-CnTrf3cRCUmMRcmP/view?usp=sharing")
                }
            }

        }
    }
}
