import QtQuick 2.15
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import QtQuick.Controls
import QtQuick.Dialogs

ColumnLayout {
    id: contactForm

    property bool isFormValid:
        namefield.text.trim().length > 0 &&
        emailfield.text.trim().length > 0 &&
        subjectfield.text.trim().length > 0 &&
        messagefield.text.trim().length > 0 &&
        /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(emailfield.text)

    function showDialog(msg) {
        formErrorDialog.text = msg
        formErrorDialog.open()
    }

    MessageDialog {
        id: formErrorDialog
        title: "Form Error"
        buttons: MessageDialog.Ok
        text: ""
    }

    layer.enabled: true
    layer.smooth: true
    layer.mipmap: true
    Layout.topMargin: (window.width > 1150) ? 100 : Math.max(window.width * 0.058, 20)

    Text {
        id: software
        text: qsTr("LET'S WORK")
        font.family: fonts.black
        font.pixelSize: (window.width > 1150) ? 110 : Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("white")
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
    }

    Text {
        id: engineer
        text: qsTr("TOGETHER")
        font.family: fonts.black
        font.pixelSize:  (window.width > 1150) ? 110 :  Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("gray")
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter
        Layout.topMargin: (window.width > 1150) ? -35 :  (window.width * 0.027) - 25
    }

    ColumnLayout {
        Layout.topMargin: (window.width > 1150) ? -20 : window.width*0.020
        Layout.alignment: (window.width > 1150) ? Qt.AlignLeft : Qt.AlignHCenter

        GridLayout {
            columnSpacing: 20
            columns: 2

            Text {
                text: qsTr("Name")
                font.family: fonts.regular
                font.weight: 400
                font.pixelSize: (window.width > 700) ? 12 : Math.max(window.width * 0.001, 10)
                color: pullc.color("white")
                opacity: 0.5
            }

            Text {
                text: qsTr("Email")
                font.family: fonts.regular
                font.weight: 400
                font.pixelSize: (window.width > 700) ? 12 : Math.max(window.width * 0.001, 10)
                color: pullc.color("white")
                opacity: 0.5
            }

            //Name Field
            Rectangle {
                id: nameFieldRect
                Layout.preferredWidth: (window.width > 700) ? 340 : window.width*0.45
                Layout.preferredHeight: (window.width > 700) ? 40 : 30
                color: pullc.color("gray")
                radius: 10
                border.color: namefield.text.trim().length === 0 ? "red" : "green"
                border.width: 1

                TextArea {
                    id: namefield
                    anchors.fill: parent
                    anchors.margins: 5
                    placeholderText: qsTr("Your Name")
                    font.family: fonts.regular
                    font.weight: 400
                    font.pixelSize: (window.width > 700) ? 14 : Math.max(window.width * 0.001, 10)
                    background: null
                    wrapMode: TextArea.Wrap
                    color: pullc.color("white")
                    opacity: 0.9

                    ToolTip.visible: text.length === 0
                    ToolTip.text: "Name is required"
                }
            }

            //Email Field
            Rectangle {
                id: emailFieldRect
                Layout.preferredWidth: (window.width > 700) ? 340 : window.width*0.45
                Layout.preferredHeight: (window.width > 700) ? 40 : 30
                color: pullc.color("gray")
                radius: 10
                border.color: !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(emailfield.text) ? "red" : "green"
                border.width: 1

                TextArea {
                    id: emailfield
                    anchors.fill: parent
                    anchors.margins: 5
                    placeholderText: qsTr("Your@email.com")
                    font.family: fonts.regular
                    font.weight: 400
                    font.pixelSize: (window.width > 700) ? 14 : Math.max(window.width * 0.001, 10)
                    background: null
                    wrapMode: TextArea.Wrap
                    color: pullc.color("white")
                    opacity: 0.9

                    ToolTip.visible: text.length > 0 && !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(text)
                    ToolTip.text: "Invalid email format"
                }
            }
        }

        //Subject
        ColumnLayout {
            Text {
                text: qsTr("Subject")
                font.family: fonts.regular
                font.weight: 400
                font.pixelSize: (window.width > 700) ? 12 : Math.max(window.width * 0.001, 10)
                color: pullc.color("white")
                opacity: 0.5
            }

            Rectangle {
                id: subjectFieldRect
                Layout.preferredWidth: (window.width > 700) ? 700 : window.width*0.95
                Layout.preferredHeight: 40
                color: pullc.color("gray")
                radius: 10
                border.color: subjectfield.text.trim().length === 0 ? "red" : "green"
                border.width: 1

                TextArea {
                    id: subjectfield
                    anchors.fill: parent
                    anchors.margins: 5
                    placeholderText: qsTr("Email's subject")
                    font.family: fonts.regular
                    font.weight: 400
                    font.pixelSize: (window.width > 700) ? 14 : Math.max(window.width * 0.001, 10)
                    background: null
                    wrapMode: TextArea.Wrap
                    color: pullc.color("white")
                    opacity: 0.9

                    ToolTip.visible: text.length === 0
                    ToolTip.text: "Subject is required"
                }
            }
        }

        // Message
        ColumnLayout {
            Text {
                text: qsTr("Message")
                font.family: fonts.regular
                font.weight: 400
                font.pixelSize: (window.width > 700) ? 12 : Math.max(window.width * 0.001, 10)
                color: pullc.color("white")
                opacity: 0.5
            }

            Rectangle {
                id: messageFieldRect
                Layout.preferredWidth: (window.width > 700) ? 700 : window.width*0.95
                Layout.preferredHeight: (window.width > 700) ? 80 : 45
                color: pullc.color("gray")
                radius: 10
                border.color: messagefield.text.trim().length === 0 ? "red" : "green"
                border.width: 1

                ScrollView {
                    id: scrollableMessage
                    anchors.fill: parent
                    clip: true

                    TextArea {
                        id: messagefield
                        anchors.fill: parent
                        anchors.margins: 5
                        placeholderText: qsTr("Message")
                        font.family: fonts.regular
                        font.weight: 400
                        font.pixelSize: (window.width > 700) ? 14 : Math.max(window.width * 0.001, 10)
                        background: null
                        wrapMode: TextArea.Wrap
                        color: pullc.color("white")
                        opacity: 0.9
                        width: parent.width - 20

                        ToolTip.visible: text.length === 0
                        ToolTip.text: "Message can't be empty"
                    }
                }
            }
        }

        //Submit Button
        Rectangle {
            id: submitBtn
            Layout.preferredWidth: (window.width > 700) ? 700 : window.width*0.95
            Layout.preferredHeight: (window.width > 700) ? 40 : 30
            color: contactForm.isFormValid ? pullc.color("neon") : pullc.color("graylight")
            radius: 10
            opacity: contactForm.isFormValid ? 1 : 0.6

            Text {
                anchors.centerIn: parent
                text: qsTr("Submit")
                font.family: fonts.regular
                font.pixelSize: (window.width > 700) ? 15 : 13
                font.weight: 400
                color: pullc.color("white")
            }
        }
    }
}
