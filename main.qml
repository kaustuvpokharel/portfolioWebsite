import QtQuick
import com.colors 1.0
import com.email 1.0
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import QtQuick.Controls

import "./components"

Window {
    id:window
    width: 1920
    height: Screen.height
    minimumHeight: 720
    minimumWidth: 350
    maximumHeight: contentLayout.implicitHeight + 160
    visible: true
    title: qsTr("Kaustuv Pokharel" + width + "x" + height)
    Component.onCompleted: Qt.application.frameRate = 60
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

    EmailSender
    {
        id: emailSender
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

    FontLoader
    {
        id: pBlack
        source: "qrc:/Poppins-Black.ttf"
    }
    FontLoader
    {
        id: pRegular
        source: "qrc:/Poppins-Regular.ttf"
    }
    FontLoader
    {
        id: pSemibold
        source: "qrc:/Poppins-MediumItalic.ttf"
    }

    Header
    {
        id:headerComponent
    }

    Flickable
    {
        width: parent.width
        height: parent.height
        contentWidth: parent.width
        contentHeight: parent.height
        anchors.top: headerComponent.bottom
        anchors.bottom: window.bottom
        anchors.topMargin: 50
        clip: true  // Prevents content from overflowing


        RowLayout
        {
            spacing: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top

            ProfileCard
            {
                id: profilecard
                Layout.alignment: Qt.AlignTop
                // Layout.topMargin: 250
            }

            Flickable
            {
                id: mainScroll

                //anchors.fill: parent
                Layout.preferredWidth: 700
                Layout.preferredHeight: window.height
                contentWidth: width
                contentHeight: contentLayout.implicitHeight + 160
                clip: true
                //Layout.alignment: Qt.AlignTop
                Layout.alignment: Qt.AlignHCenter
                Layout.topMargin: -35

                flickDeceleration: 10000
                maximumFlickVelocity: 500
                pressDelay: 0
                boundsBehavior: Flickable.StopAtBounds

                // ScrollBar.vertical.policy: ScrollBar.AlwaysOff
                // ScrollBar.horizontal.policy: ScrollBar.AlwaysOn
                Rectangle
                {
                    id: contents
                    width: 700
                    height: 4800
                    color: "red"
                    visible: false
                }

                ColumnLayout
                {
                    id: contentLayout

                    SoftwareEng
                    {
                        id: softwareEngComponent
                    }

                    Projects
                    {
                        id: projectComponent
                    }

                    Experience
                    {
                        id: experienceComponent
                    }

                    Education
                    {
                        id: educationComponent
                    }

                    Contact
                    {
                        id: contactComponent
                    }

                    Text {
                        id: copyRyght
                        text: qsTr("<html>© 2025 <b>Kaustuv Pokharel</b> | Fueled by Coffee, C++ and Qt with WebAssembly</html>")
                        font.family: pMedium.name
                        font.pixelSize: 15
                        color: pullc.color("neon")
                        Layout.alignment: Qt.AlignHCenter
                        Layout.topMargin: 70
                    }
                }

                // MouseArea
                // {
                //     anchors.fill: parent
                //     onWheel: wheel => {
                //         contentY -= wheel.angleDelta.y * 0.3
                //     }
                // }
            }
        }
    }
}
