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
    //maximumHeight: contentLayout.implicitHeight + 160
    visible: true
    title: qsTr("Kaustuv Pokharel" + width + "x" + height)
    Component.onCompleted: Qt.application.frameRate = 60
    property int previousWidth: width

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

    StackView
    {
        id: loader
        anchors.fill: parent
        initialItem: "qrc:/KaustuvPokharel/desktop.qml"
    }

    Timer {
            id: debounceTimer
            interval: 10
            repeat: false
            onTriggered: {
                // Switch layout only if the width crosses the 1050px boundary
                if (width > 1150 && previousWidth <= 1150) {
                    loader.replace("qrc:/KaustuvPokharel/desktop.qml")
                } else if (width <= 1150 && previousWidth > 1150) {
                    loader.replace("qrc:/KaustuvPokharel/mobile.qml")
                }
                previousWidth = width  // Update previous width
            }
        }


    onWidthChanged:
    {
        debounceTimer.restart();
    }

    // Component
    // {
    //     id:mobile
    //     Mobile
    //     {
    //         id: mobileView
    //     }
    // }
}
