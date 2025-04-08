import QtQuick
import com.colors 1.0
import com.email 1.0
import com.font 1.0
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

import "./components"

Window {
    id: window
    width: 1920
    height: Screen.height
    minimumHeight: 720
    minimumWidth: 350
    visible: true
    title: "Kaustuv Pokharel " + width + "x" + height

    Component.onCompleted: {
        Qt.application.frameRate = 60
        if (window.width > 1150) {
            pageLoader.setSource("qrc:/KaustuvPokharel/desktop.qml")
        } else {
            pageLoader.setSource("qrc:/KaustuvPokharel/mobile.qml")
        }
    }

    property int previousWidth: width

    Rectangle {
        id: bg
        anchors.fill: parent
        color: pullc.color("black")
        layer.enabled: true
        layer.smooth: true
        layer.mipmap: true
    }

    ColorList {
        id: pullc
    }

    EmailSender {
        id: emailSender
    }

    FontLoad {
        id: fonts
    }

    Loader {
        id: pageLoader
        anchors.fill: parent
        active: true
        asynchronous: true
    }

    Timer {
        id: debounceTimer
        interval: 10
        repeat: false
        onTriggered: {
            if (window.width > 1150 && previousWidth <= 1150) {
                pageLoader.setSource("qrc:/KaustuvPokharel/desktop.qml")
            } else if (window.width <= 1150 && previousWidth > 1150) {
                pageLoader.setSource("qrc:/KaustuvPokharel/mobile.qml")
            }
            previousWidth = window.width
        }
    }

    onWidthChanged: debounceTimer.restart()
}
