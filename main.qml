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
