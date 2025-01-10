import QtQuick
import com.colors 1.0
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

import "./components"

Window {
    width: 1920
    height: 1080
    visible: true
    title: qsTr("Kaustuv Pokharel")
    Rectangle
    {
        id: bg
        anchors
        {
            fill: parent
        }

        color: pullc.color("black")
    }

    ColorList
    {
        id: pullc
        //meaning pull color

        //Function assigned in colorlist Source file
    }

    FontLoader
    {
        id: pbold
        source: "qrc:/Poppins-Bold.ttf"
    }
    FontLoader
    {
        id: pMedium
        source: "qrc:/Poppins-Medium.ttf"
    }

    Rectangle
    {
        width: 280
        height: 40
        color: pullc.color("gray")
        radius: 10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 30
        z : 1
        RowLayout
        {
            spacing: 20
            anchors.centerIn: parent

            Image {
                id: githubIcon
                source: "qrc:/iconsStrong/githubIcon"
                Layout.preferredWidth: 25
                Layout.preferredHeight: 25
                smooth: true
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: linkedInIcon
                source: "qrc:/iconsStrong/linkedIcon"
                Layout.preferredWidth: 25
                Layout.preferredHeight: 25
                smooth: true
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: youtubeIcon
                source: "qrc:/iconsStrong/youtubeIcon"
                Layout.preferredWidth: 25
                Layout.preferredHeight: 25
                smooth: true
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: behanceIcon
                source: "qrc:/iconsStrong/behanceIcon"
                Layout.preferredWidth: 25
                Layout.preferredHeight: 25
                smooth: true
                fillMode: Image.PreserveAspectFit
            }

            Image
            {
                id:emailIcon
                source: "qrc:/iconsStrong/emailIcon"
                Layout.preferredWidth: 25
                Layout.preferredHeight: 25
                smooth: true
                fillMode: Image.PreserveAspectFit
            }
        }
    }

    Flickable
    {
        width: parent.width
        height: parent.height
        contentWidth: parent.width
        contentHeight: parent.height
        clip: true  // Prevents content from overflowing


        RowLayout
        {
            spacing: 100
            anchors.centerIn: parent
            ProfileCard
            {
                id: profilecard
                Layout.alignment: Qt.AlignTop
                Layout.topMargin: 200
            }

            Flickable
            {
                height: 1080
                width: 700
                contentWidth: 700
                contentHeight: 2000
                clip: true
                Rectangle
                {
                    id: contents
                    width: 700
                    height: 2000
                    color: "red"
                }
            }
        }
    }

}
