import QtQuick 2.15
import com.colors 1.0
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import QtQuick.Controls



ColumnLayout
{
    Layout.topMargin: 100
    // anchors.top : parent.top
    // anchors.topMargin: 100
    Text {
        id: software
        text: qsTr("LET'S WORK")
        font.family: pBlack.name
        font.pixelSize: 110
        font.weight: 800
        color: pullc.color("white")
    }

    Text {
        id: engineer
        text: qsTr("TOGETHER")
        font.family: pBlack.name
        font.pixelSize: 110
        font.weight: 800
        color: pullc.color("gray")

        Layout.topMargin: -50
    }

    ColumnLayout
    {
        spacing: 20
        Layout.alignment: Qt.AlignCenter
        GridLayout
        {
            columnSpacing: 20
            columns: 2
            Text {
                id: name
                text: qsTr("Name")
                font.family: pRegular.name
                font.pixelSize: 12
                // horizontalAlignment: Text.AlignHCenter
                color: pullc.color("white")
                wrapMode: Text.Wrap
                opacity: 0.5
            }

            Text {
                id: email
                text: qsTr("Email")
                font.family: pRegular.name
                font.pixelSize: 12
                // horizontalAlignment: Text.AlignHCenter
                color: pullc.color("white")
                wrapMode: Text.Wrap
                opacity: 0.5
            }
            Rectangle
            {
                id: nameFieldRect
                width: 340
                height: 40
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
                    font.pixelSize: 14
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
                width: 340
                height: 40
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
                    font.pixelSize: 14
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
                font.pixelSize: 12
                // horizontalAlignment: Text.AlignHCenter
                color: pullc.color("white")
                wrapMode: Text.Wrap
                opacity: 0.5
            }

            Rectangle
            {
                id: subjectFieldRect
                width: 700
                height: 40
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
                    font.pixelSize: 14
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
                font.pixelSize: 12
                // horizontalAlignment: Text.AlignHCenter
                color: pullc.color("white")
                wrapMode: Text.Wrap
                opacity: 0.5
            }

            Rectangle
            {
                id: messageFieldRect
                width: 700
                height: 100
                color: pullc.color("gray")
                radius: 10

                Flickable {
                    id: flickableMessage
                    width: parent.width - 20
                    height: 80
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
                        font.pixelSize: 14
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
            width: 700
            height: 40
            color: pullc.color("neon")
            radius: 10

            Text
            {
                anchors.centerIn: parent
                text: qsTr("Submit")
                font.family: pRegular.name
                font.pixelSize: 15
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

                }
            }
        }
    }
}
