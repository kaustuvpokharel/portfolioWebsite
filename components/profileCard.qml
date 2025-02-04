import QtQuick 2.15
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

ColumnLayout
{
    spacing: 10
    Layout.alignment: Qt.AlignHCenter
    Layout.preferredWidth: pcMainRect.width
    layer.enabled: true   // Caches the loaded ProfileCard component
    layer.smooth: true    // Optional: smoothens the cached texture
    layer.mipmap: true
    Rectangle
    {
        id: pcMainRect
        Layout.preferredWidth:
        {
            if(window.width > 1150)
            {
                return 350
            }
            if(window.width > 700)
            {
                return mainScroll.width *0.9
            }
            else
            {
                return window.width*0.9
            }

        }
        Layout.preferredHeight: 650
        Layout.alignment: Qt.AlignHCenter
        color: pullc.color("white");
        radius: 20
        clip: true
        Image {
            id: bgImage
            source: "qrc:/bg/bgCard"
            anchors.fill: parent
            smooth: true
            fillMode: Image.PreserveAspectCrop
            opacity: 0.4
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

        ColumnLayout
        {
            spacing:20
            anchors.centerIn: parent
            Image {
                id: profilePicture
                source: "qrc:/profilepic"  // Add the correct file extension
                Layout.preferredWidth: pcMainRect.width
                Layout.preferredHeight: pcMainRect.height / 1.9
                smooth: true
                fillMode: Image.PreserveAspectFit
                Layout.alignment: Qt.AlignCenter
                asynchronous: false
            }

            Text
            {
                id: name
                text: qsTr("Kaustuv Pokharel")
                font.family: fonts.bold
                font.weight: 700
                font.pixelSize: 27
                color: pullc.color("black")
                Layout.alignment: Qt.AlignCenter
            }

            Rectangle
            {
                id: textWrapper
                width: 260
                height: 90
                Layout.alignment: Qt.AlignCenter
                Layout.topMargin: 15
                color: "Transparent"

                Text
                {

                    id: introduction
                    text: qsTr("Software Engineering Student with background in CrossPlatform Application Development, Graphics Programming and GPGPU with C++.")
                    wrapMode: Text.WordWrap
                    Layout.alignment: Qt.AlignCenter
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignHCenter
                    width: 260
                    font.family: fonts.medium
                    font.weight: 500
                    color: pullc.color("gray")
                    opacity: 0.8
                }
            }

            RowLayout
            {
                spacing: 10
                Layout.alignment: Qt.AlignCenter
                Layout.topMargin: 15

                Rectangle
                {
                    id: gIcon
                    width: 35
                    height: 35
                    color: "Transparent"//pullc.color("gray")
                    radius: 10
                    Image {
                        id: githubIcon
                        source: "qrc:/iconsStrong/githubIcon"
                        width: 25
                        height: 25
                        smooth: true
                        fillMode: Image.PreserveAspectFit
                        anchors.centerIn: parent
                        asynchronous: false
                    }

                    MouseArea
                    {
                        anchors.fill: parent
                        hoverEnabled: true
                        propagateComposedEvents: true
                        cursorShape: Qt.PointingHandCursor

                        onEntered:
                        {
                            gIcon.color = pullc.color("graylight")
                        }
                        onExited:
                        {
                            gIcon.color = "Transparent"
                        }

                        onClicked:
                        {
                            Qt.openUrlExternally("https://github.com/kaustuvpokharel")
                        }
                    }

                }

                Rectangle
                {
                    id: lIcon
                    width: 35
                    height: 35
                    color: "Transparent"//pullc.color("gray")
                    radius: 10
                    Image {
                        id: linkedInIcon
                        source: "qrc:/iconsStrong/linkedIcon"
                        width: 25
                        height: 25
                        smooth: true
                        fillMode: Image.PreserveAspectFit
                        anchors.centerIn: parent
                        asynchronous: false
                    }

                    MouseArea
                    {
                        anchors.fill: parent
                        hoverEnabled: true
                        propagateComposedEvents: true
                        cursorShape: Qt.PointingHandCursor

                        onEntered:
                        {
                            lIcon.color = pullc.color("graylight")
                        }
                        onExited:
                        {
                            lIcon.color = "Transparent"
                        }

                        onClicked:
                        {
                            Qt.openUrlExternally("https://www.linkedin.com/in/kaustuvpokharel/")
                        }
                    }

                }

                Rectangle
                {
                    id: yIcon
                    width: 35
                    height: 35
                    color: "Transparent"//pullc.color("gray")
                    radius: 10
                    Image {
                        id: youtubeIcon
                        source: "qrc:/iconsStrong/youtubeIcon"
                        width: 25
                        height: 25
                        smooth: true
                        fillMode: Image.PreserveAspectFit
                        anchors.centerIn: parent
                        asynchronous: false
                    }

                    MouseArea
                    {
                        anchors.fill: parent
                        hoverEnabled: true
                        propagateComposedEvents: true
                        cursorShape: Qt.PointingHandCursor

                        onEntered:
                        {
                            yIcon.color = pullc.color("graylight")
                        }
                        onExited:
                        {
                            yIcon.color = "Transparent"
                        }

                        onClicked:
                        {
                            Qt.openUrlExternally("https://www.youtube.com/@K-A-L-I-")
                        }
                    }

                }

                Rectangle
                {
                    id: bIcon
                    width: 35
                    height: 35
                    color: "Transparent"//pullc.color("gray")
                    radius: 10
                    Image {
                        id: behanceIcon
                        source: "qrc:/iconsStrong/behanceIcon"
                        width: 25
                        height: 25
                        smooth: true
                        fillMode: Image.PreserveAspectFit
                        anchors.centerIn: parent
                        asynchronous: false
                    }

                    MouseArea
                    {
                        anchors.fill: parent
                        hoverEnabled: true
                        propagateComposedEvents: true
                        cursorShape: Qt.PointingHandCursor

                        onEntered:
                        {
                            bIcon.color = pullc.color("graylight")
                        }
                        onExited:
                        {
                            bIcon.color = "Transparent"
                        }

                        onClicked:
                        {
                            Qt.openUrlExternally("https://www.behance.net/kaustuvpokharel3")
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
                        id: emailIcon
                        source: "qrc:/iconsStrong/emailIcon"
                        width: 25
                        height: 25
                        smooth: true
                        fillMode: Image.PreserveAspectFit
                        anchors.centerIn: parent
                        asynchronous: false
                    }

                    MouseArea
                    {
                        anchors.fill: parent
                        hoverEnabled: true
                        propagateComposedEvents: true
                        cursorShape: Qt.PointingHandCursor

                        onEntered:
                        {
                            eIcon.color = pullc.color("graylight")
                        }
                        onExited:
                        {
                            eIcon.color = "Transparent"
                        }

                        onClicked:
                        {
                            Qt.openUrlExternally("mailto:kastuvpokharel@gmail.com")
                        }
                    }
                }
            }
        }
    }

    Rectangle
    {
        id: cppText
        Layout.preferredWidth:
        {
            if(window.width > 1150)
            {
                return 350
            }
            if(window.width > 700)
            {
                return mainScroll.width *0.9
            }
            else
            {
                return window.width*0.9
            }

        }
        Layout.preferredHeight: 30
        color: pullc.color("neon");
        radius: 30
        clip: true
        Layout.alignment: Qt.AlignHCenter

        Image {
            id: bgImage1
            source: "qrc:/bg/bgCard"
            anchors.fill: parent
            smooth: true
            fillMode: Image.PreserveAspectCrop
            opacity: 0
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
            radius: 15
        }

        Text
        {
            id: textcp
            text: qsTr("Built with C++ in QT-QML: WebAssembly")
            anchors.centerIn: parent
            font.pixelSize: 15
            horizontalAlignment: Text.AlignHCenter
            width: 260
            font.family: fonts.medium
            font.weight: 500
            color: pullc.color("gray")
        }


        MouseArea
        {
            anchors.fill: parent
            hoverEnabled: true
            propagateComposedEvents: true
            cursorShape: Qt.PointingHandCursor

            onEntered:
            {
                cppText.color = pullc.color("white");
                bgImage1.opacity = 0.4
            }

            onExited:
            {
                cppText.color = pullc.color("neon");
                bgImage1.opacity = 0
            }

            onClicked:
            {
                Qt.openUrlExternally("https://github.com/kaustuvpokharel/portfolioWebsite")
            }

        }
    }

}


