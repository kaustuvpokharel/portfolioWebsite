import QtQuick 2.15
import com.colors 1.0
import com.email 1.0
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import QtQuick.Controls

ColumnLayout
{

    Layout.topMargin: (window.width > 1150) ? 100 : Math.max(window.width * 0.058, 20)
    // anchors.top : parent.top
    // anchors.topMargin: 100
    Text {
        id: software
        text: qsTr("LET'S WORK")
        font.family: pBlack.name
        font.pixelSize: (window.width > 1150) ? 110 : Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("white")
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
    }

    Text {
        id: engineer
        text: qsTr("TOGETHER")
        font.family: pBlack.name
        font.pixelSize:  (window.width > 1150) ? 110 :  Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("gray")

        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
        Layout.topMargin: (window.width > 1150) ? -50 :  (window.width * 0.027) - 35
    }

    ColumnLayout
    {
        Layout.topMargin: (window.width > 1150) ? -20 : window.width*0.020
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
        GridLayout
        {
            columnSpacing: 20
            columns: 2
            Text {
                id: name
                text: qsTr("Name")
                font.family: pRegular.name
                font.pixelSize: (window.width > 700) ? 12 : Math.max(window.width * 0.001, 10)
                // horizontalAlignment: Text.AlignHCenter
                color: pullc.color("white")
                wrapMode: Text.Wrap
                opacity: 0.5
            }

            Text {
                id: email
                text: qsTr("Email")
                font.family: pRegular.name
                font.pixelSize: (window.width > 700) ? 12 : Math.max(window.width * 0.001, 10)
                // horizontalAlignment: Text.AlignHCenter
                color: pullc.color("white")
                wrapMode: Text.Wrap
                opacity: 0.5
            }
            Rectangle
            {
                id: nameFieldRect
                Layout.preferredWidth: (window.width > 700) ? 340 : window.width*0.45
                Layout.preferredHeight: (window.width > 700) ? 40 : 30
                color: pullc.color("gray")
                radius: 10

                TextArea {
                    id: namefield
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.top: parent.top
                    anchors.topMargin: 5

                    placeholderText: qsTr("Your Name")
                    font.family: pRegular.name
                    font.pixelSize: (window.width > 700) ? 14 : Math.max(window.width * 0.001, 10)
                    background: null
                    wrapMode: TextArea.Wrap
                    color: pullc.color("white")
                    width: parent.width - 20
                    height: parent.height
                    opacity: 0.5

                    MouseArea
                    {
                        anchors.fill: parent
                        cursorShape: Qt.IBeamCursor  // Show cursor to indicate text input
                        onClicked: {
                            namefield.forceActiveFocus()
                            nameFieldRect.border.color = pullc.color("neon")
                            nameFieldRect.border.width = 1.5
                        }
                    }
                }

                MouseArea
                {
                    anchors.fill: nameFieldRect
                    hoverEnabled: true
                    propagateComposedEvents: true
                    cursorShape: Qt.PointingHandCursor

                    onExited: {
                        nameFieldRect.border.width = 0
                    }

                    onClicked: {
                        nameFieldRect.border.color = pullc.color("neon")
                        nameFieldRect.border.width = 1.5
                        namefield.forceActiveFocus()
                    }
                }

            }

            Rectangle
            {
                id: emailFieldRect
                Layout.preferredWidth: (window.width > 700) ? 340 : window.width*0.45
                Layout.preferredHeight: (window.width > 700) ? 40 : 30
                color: pullc.color("gray")
                radius: 10

                TextArea {
                    id: emailfield
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.top: parent.top
                    anchors.topMargin: 5

                    placeholderText: qsTr("Your@email.com")
                    font.family: pRegular.name
                    font.pixelSize: (window.width > 700) ? 14 : Math.max(window.width * 0.001, 10)
                    background: null
                    wrapMode: TextArea.Wrap
                    color: pullc.color("white")
                    width: parent.width - 20
                    height: parent.height
                    opacity: 0.5

                    MouseArea
                    {
                        anchors.fill: parent
                        cursorShape: Qt.IBeamCursor  // Show cursor to indicate text input
                        onClicked: {
                            emailfield.forceActiveFocus()
                            emailFieldRect.border.color = pullc.color("neon")
                            emailFieldRect.border.width = 1.5
                        }
                    }
                }

                MouseArea
                {
                    anchors.fill: emailFieldRect
                    hoverEnabled: true
                    propagateComposedEvents: true
                    cursorShape: Qt.PointingHandCursor

                    onExited: {
                        emailFieldRect.border.width = 0
                    }

                    onClicked: {
                        emailFieldRect.border.color = pullc.color("neon")
                        emailFieldRect.border.width = 1.5
                        emailfield.forceActiveFocus()
                    }
                }
            }
        }

        ColumnLayout
        {
            Text {
                id: subject
                text: qsTr("Subject")
                font.family: pRegular.name
                font.pixelSize: (window.width > 700) ? 12 : Math.max(window.width * 0.001, 10)
                // horizontalAlignment: Text.AlignHCenter
                color: pullc.color("white")
                wrapMode: Text.Wrap
                opacity: 0.5
            }

            Rectangle
            {
                id: subjectFieldRect
                Layout.preferredWidth: (window.width > 700) ? 700 : window.width*0.95
                Layout.preferredHeight: (window.width > 700) ? 40 : 30
                color: pullc.color("gray")
                radius: 10

                TextArea {
                    id: subjectfield
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.top: parent.top
                    anchors.topMargin: 5

                    placeholderText: qsTr("Email's subject")
                    font.family: pRegular.name
                    font.pixelSize: (window.width > 700) ? 14 : Math.max(window.width * 0.001, 10)
                    background: null
                    wrapMode: TextArea.Wrap
                    color: pullc.color("white")
                    width: parent.width - 20
                    height: parent.height
                    opacity: 0.5

                    MouseArea
                    {
                        anchors.fill: parent
                        cursorShape: Qt.IBeamCursor  // Show cursor to indicate text input
                        onClicked: {
                            subjectfield.forceActiveFocus()
                            subjectFieldRect.border.color = pullc.color("neon")
                            subjectFieldRect.border.width = 1.5
                        }
                    }
                }

                MouseArea
                {
                    anchors.fill: subjectFieldRect
                    hoverEnabled: true
                    propagateComposedEvents: true
                    cursorShape: Qt.PointingHandCursor

                    onExited: {
                        subjectFieldRect.border.width = 0
                    }

                    onClicked: {
                        subjectFieldRect.border.color = pullc.color("neon")
                        subjectFieldRect.border.width = 1.5
                        subjectfield.forceActiveFocus()
                    }
                }
            }
        }

        ColumnLayout
        {
            Text
            {
                id: message
                text: qsTr("Message")
                font.family: pRegular.name
                font.pixelSize: (window.width > 700) ? 12 : Math.max(window.width * 0.001, 10)
                // horizontalAlignment: Text.AlignHCenter
                color: pullc.color("white")
                wrapMode: Text.Wrap
                opacity: 0.5
            }

            Rectangle
            {
                id: messageFieldRect
                Layout.preferredWidth: (window.width > 700) ? 700 : window.width*0.95
                Layout.preferredHeight: (window.width > 700) ? 80 : 45
                color: pullc.color("gray")
                radius: 10

                Flickable {
                    id: flickableMessage
                    width: (window.width > 700) ? 700 : window.width*0.95
                    height: (window.width > 700) ? 80 : 45
                    anchors.centerIn: parent
                    contentWidth: parent.width
                    clip: true
                    flickableDirection: Flickable.VerticalFlick

                    TextArea {
                        id: messagefield
                        anchors.left: parent.left
                        anchors.top: parent.top

                        placeholderText: qsTr("Message")
                        font.family: pRegular.name
                        font.pixelSize: (window.width > 700) ? 14 : Math.max(window.width * 0.001, 10)
                        background: null
                        wrapMode: TextArea.Wrap
                        color: pullc.color("white")
                        rightPadding: 15
                        width: parent.width - 20
                        opacity: 0.5
                        // Auto-scroll to the bottom when text is added beyond the visible area
                        onCursorRectangleChanged: {
                            if (cursorRectangle.y + cursorRectangle.height >= flickableMessage.contentHeight - flickableMessage.height) {
                                if(flickableMessage.contentHeight > flickableMessage.height)
                                {
                                    flickableMessage.contentY = flickableMessage.contentHeight - flickableMessage.height + 20
                                }

                                flickableMessage.contentHeight = messagefield.contentHeight
                            }
                        }
                        MouseArea
                        {
                            anchors.fill: parent
                            cursorShape: Qt.IBeamCursor
                            onClicked: {
                                messagefield.forceActiveFocus()
                                messageFieldRect.border.color = pullc.color("neon")
                                messageFieldRect.border.width = 1.5
                            }
                        }
                    }
                }

                MouseArea
                {
                    anchors.fill: messageFieldRect
                    hoverEnabled: true
                    propagateComposedEvents: true
                    cursorShape: Qt.PointingHandCursor

                    onExited: {
                        messageFieldRect.border.width = 0
                    }

                    onClicked: {
                        messageFieldRect.border.color = pullc.color("neon")
                        messageFieldRect.border.width = 1.5
                        messagefield.forceActiveFocus()
                    }
                }
            }
        }

        Rectangle
        {
            id: submitBtn
            Layout.preferredWidth: (window.width > 700) ? 700 : window.width*0.95
            Layout.preferredHeight: (window.width > 700) ? 40 : 30
            color: pullc.color("neon")
            radius: 10

            Text
            {
                anchors.centerIn: parent
                text: qsTr("Submit")
                font.family: pRegular.name
                font.pixelSize: (window.width > 700) ? 15 : Math.max(window.width * 0.001, 13)
                font.weight: 600
                // horizontalAlignment: Text.AlignHCenter
                color: pullc.color("black")
                wrapMode: Text.Wrap
            }


            MouseArea
            {
                anchors.fill: parent
                hoverEnabled: true
                propagateComposedEvents: true
                cursorShape: Qt.PointingHandCursor

                onEntered:
                {
                    submitBtn.opacity = 0.7
                }
                onExited:
                {
                    submitBtn.opacity = 1
                }

                onClicked:
                {
                    emailSender.sendEmail(name.text, emailfield.text, subjectfield.text, messagefield.text)
                }
            }
        }
    }
}
