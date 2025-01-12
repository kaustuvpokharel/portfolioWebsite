import QtQuick
import com.colors 1.0
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

import "./components"

Window {
    id:window
    width: 1920
    height: Screen.height
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
                height: 1080
                width: 700
                contentWidth: 700
                contentHeight: 4800
                clip: true
                Layout.alignment: Qt.AlignTop
                Layout.topMargin: -35
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
                }
            }
        }
    }
}
