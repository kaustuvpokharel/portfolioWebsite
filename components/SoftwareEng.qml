import QtQuick 2.15
import com.colors 1.0
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

ColumnLayout
{
    id:softengLayer
    Layout.topMargin: (window.width > 1150) ? 50 : Math.max(window.width * 0.058, 20)
    Text {
        id: software
        text: qsTr("SOFTWARE")
        font.family: pBlack.name
        font.pixelSize: (window.width > 1150) ? 110 : Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("white")
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
    }

    Text {
        id: engineer
        text: qsTr("ENGINEER")
        font.family: pBlack.name
        font.pixelSize:  (window.width > 1150) ? 110 :  Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("gray")
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
        Layout.topMargin: (window.width > 1150) ? -50 :  (window.width * 0.027) - 35
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
            text: qsTr("<html><b>Core Skills:</b> C++, C language, CMake, Linux, Git, Github, Jira, Blender 3D<br />
<b>Frameworks/Libraries:</b> QT, QML, Vulkan, STL, Socket, Boost, Tensorflow, Pcap, OpenCL, OpenCV<br />
<b>Basic Skills:</b> Python, JavaScript, HTML, CSS, SQL, Microsoft Azure, Figma, Confluence<br />
<b>Concepts:</b> Agile Methods, OOP, Graphics Programming, Parallel/Concurrent Programming, Multi-threading, Memory Management, Unit Test, Scrum, CI/CD</html>")
            font.family: pRegular.name
            font.pixelSize: (window.width > 1150) ? 16 : Math.max(window.width * 0.001, 14)
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
        Layout.topMargin: (window.width > 1150) ? 100 : (window.width * 0.0027)
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter

        Text {
            id: yieNum
            text: qsTr("+2")
            font.family: pSemibold.name
            font.pixelSize:  (window.width > 1150) ? 70 :  Math.max(window.width * 0.088, 30)
            font.weight: 600
            color: pullc.color("white")
            Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
        }

        Text {
            id: pcNum
            text: qsTr("+10")
            font.family: pSemibold.name
            font.pixelSize:  (window.width > 1150) ? 70 :  Math.max(window.width * 0.088, 30)
            font.weight: 600
            color: pullc.color("white")
            Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
        }

        Text {
            id: cwNum
            text: qsTr("+3")
            font.family: pSemibold.name
            font.pixelSize:  (window.width > 1150) ? 70 :  Math.max(window.width * 0.088, 30)
            font.weight: 600
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
                font.family: pRegular.name
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
                font.family: pRegular.name
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
                font.family: pRegular.name
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
            // Image {
            //     id: bgImage
            //     source: "qrc:/bg/bgCard"
            //     anchors.fill: parent
            //     smooth: true
            //     fillMode: Image.PreserveAspectCrop
            //     opacity: 0.2
            //     layer.enabled: true
            //     layer.effect: OpacityMask
            //     {
            //         maskSource: mask1
            //     }
            // }
            // Rectangle
            // {
            //     //mask for the background image used inside the profile card
            //     id:mask1
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
                spacing: 10

                Image {
                    id: rIcon
                    source: "qrc:/softwareEng/resume"
                    Layout.preferredWidth: 45
                    Layout.preferredHeight: 45
                    smooth: true
                    fillMode: Image.PreserveAspectFit
                }
                Rectangle
                {
                    Layout.preferredWidth: (window.width > 700) ? 250 : youtube.width*0.8
                    Layout.preferredHeight: 50
                    color: "Transparent"

                    Text
                    {
                        id: resumeT
                        text: qsTr("RESUME it is—roast or toast?")
                        font.family: pSemibold.name
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
                hoverEnabled: true
                propagateComposedEvents: true
                cursorShape: Qt.PointingHandCursor

                onEntered:
                {
                    resume.opacity = 0.7
                }

                onExited:
                {
                    resume.opacity = 1
                }

                onClicked:
                {
                    Qt.openUrlExternally("https://dev.to/kastuv")
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
                }
                Rectangle
                {
                    Layout.preferredWidth: (window.width > 700) ? 250 : youtube.width*0.8
                    Layout.preferredHeight: 50
                    color: "Transparent"

                    Text
                    {
                        id: yText
                        text: qsTr("Blogs it is—roast or toast?")
                        font.family: pSemibold.name
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
                hoverEnabled: true
                propagateComposedEvents: true
                cursorShape: Qt.PointingHandCursor

                onEntered:
                {
                    youtube.opacity = 0.7
                }

                onExited:
                {
                    youtube.opacity = 1
                }

                onClicked:
                {
                    Qt.openUrlExternally("https://dev.to/kastuv")
                }
            }

        }
    }
}
