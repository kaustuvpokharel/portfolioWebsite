import QtQuick
import com.colors 1.0
import com.email 1.0
import com.font 1.0
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
        layer.enabled: true   // Caches the loaded ProfileCard component
        layer.smooth: true    // Optional: smoothens the cached texture
        layer.mipmap: true
    }

    ColorList
    {
        id: pullc
    }

    EmailSender
    {
        id: emailSender
    }

    FontLoad
    {
        id: fonts
    }

    StackView
    {
        id: loader
        layer.enabled: true   // Caches the loaded ProfileCard component
        layer.smooth: true    // Optional: smoothens the cached texture
        layer.mipmap: true
        anchors.fill: parent
        Component.onCompleted: {
            // Dynamically determine which layout to load at startup
            if (window.width > 1150) {
                loader.push("qrc:/KaustuvPokharel/desktop.qml")
            } else {
                loader.push("qrc:/KaustuvPokharel/mobile.qml")
            }
        }
    }

    Timer
    {
        id: debounceTimer
        interval: 10
        repeat: false
        onTriggered: {
            if (width > 1150 && previousWidth <= 1150) {
                loader.replace("qrc:/KaustuvPokharel/desktop.qml")
            } else if (width <= 1150 && previousWidth > 1150) {
                loader.replace("qrc:/KaustuvPokharel/mobile.qml")
            }
            previousWidth = width;  // Update previous width
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
