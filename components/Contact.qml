import QtQuick 2.15
import QtQuick.Layouts
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

    MessageDialog {
        id: submitDialog
        title: "Email Sent"
        buttons: MessageDialog.Ok
        text: ""
    }

    function showDialog(msg) {
        submitDialog.text = msg;
        submitDialog.open();
    }

    spacing: 20
    Layout.topMargin: (window.width > 1150) ? 100 : Math.max(window.width * 0.058, 20)
    Layout.alignment: Qt.AlignHCenter
    Layout.preferredWidth: (window.width > 700) ? window.width * 0.8 : window.width * 0.95

    Text {
        text: qsTr("LET'S WORK")
        font.family: fonts.black
        font.pixelSize: (window.width > 1150) ? 110 : Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("white")
        Layout.alignment: Qt.AlignHCenter
    }

    Text {
        text: qsTr("TOGETHER")
        font.family: fonts.black
        font.pixelSize: (window.width > 1150) ? 110 : Math.max(window.width * 0.058, 50)
        font.weight: 800
        color: pullc.color("gray")
        Layout.topMargin: (window.width > 1150) ? -35 : (window.width * 0.027) - 25
        Layout.alignment: Qt.AlignHCenter
    }

    ColumnLayout {
        spacing: 10
        Layout.alignment: Qt.AlignHCenter

        GridLayout {
            columns: (window.width > 700) ? 2 : 1
            columnSpacing: 20
            rowSpacing: 10
            Layout.alignment: Qt.AlignHCenter

            ColumnLayout {
                spacing: 4
                Text {
                    text: "Name"
                    font.pixelSize: 12
                    color: pullc.color("white")
                    opacity: 0.5
                }

                Rectangle {
                    radius: 10
                    color: pullc.color("gray")
                    border.color: namefield.text.trim().length === 0 ? pullc.color("white") : pullc.color("neon")
                    border.width: 1
                    Layout.preferredWidth: (window.width > 700) ? 300 : window.width * 0.95
                    height: 40

                    TextArea {
                        id: namefield
                        anchors.fill: parent
                        anchors.margins: 5
                        placeholderText: "Your Name"
                        font.family: fonts.regular
                        font.weight: 400
                        font.pixelSize: 14
                        background: null
                        wrapMode: TextArea.Wrap
                        color: pullc.color("white")
                        opacity: 0.9

                        ToolTip.visible: text.length === 0
                        ToolTip.text: "⚠️ Name is required"
                    }
                }
            }

            ColumnLayout {
                spacing: 4
                Text {
                    text: "Email"
                    font.pixelSize: 12
                    color: pullc.color("white")
                    opacity: 0.5
                }

                Rectangle {
                    radius: 10
                    color: pullc.color("gray")
                    border.color: !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(emailfield.text) ? pullc.color("white") : pullc.color("neon")
                    border.width: 1
                    Layout.preferredWidth: (window.width > 700) ? 300 : window.width * 0.95
                    height: 40

                    TextArea {
                        id: emailfield
                        anchors.fill: parent
                        anchors.margins: 5
                        placeholderText: "you@email.com"
                        font.family: fonts.regular
                        font.weight: 400
                        font.pixelSize: 14
                        background: null
                        wrapMode: TextArea.Wrap
                        color: pullc.color("white")
                        opacity: 0.9

                        ToolTip.visible: text.length > 0 && !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(text)
                        ToolTip.text: "⚠️ Invalid email format"
                    }
                }
            }
        }

        ColumnLayout {
            spacing: 5
            Layout.alignment: Qt.AlignHCenter

            Text {
                text: "Subject"
                font.pixelSize: 12
                color: pullc.color("white")
                opacity: 0.5
            }

            Rectangle {
                radius: 10
                color: pullc.color("gray")
                border.color: subjectfield.text.trim().length === 0 ? pullc.color("white") : pullc.color("neon")
                border.width: 1
                Layout.preferredWidth: (window.width > 700) ? 620 : window.width * 0.95
                height: 40

                TextArea {
                    id: subjectfield
                    anchors.fill: parent
                    anchors.margins: 5
                    placeholderText: "Email's subject"
                    font.family: fonts.regular
                    font.weight: 400
                    font.pixelSize: 14
                    background: null
                    wrapMode: TextArea.Wrap
                    color: pullc.color("white")
                    opacity: 0.9

                    ToolTip.visible: text.length === 0
                    ToolTip.text: "⚠️ Subject is required"
                }
            }
        }

        ColumnLayout {
            spacing: 5
            Layout.alignment: Qt.AlignHCenter

            Text {
                text: "Message"
                font.pixelSize: 12
                color: pullc.color("white")
                opacity: 0.5
            }

            Rectangle {
                radius: 10
                color: pullc.color("gray")
                border.color: messagefield.text.trim().length === 0 ? pullc.color("white") : pullc.color("neon")
                border.width: 1
                Layout.preferredWidth: (window.width > 700) ? 620 : window.width * 0.95
                height: (window.width > 700) ? 100 : 60

                ScrollView {
                    anchors.fill: parent
                    clip: true

                    TextArea {
                        id: messagefield
                        anchors.fill: parent
                        anchors.margins: 5
                        placeholderText: "Message"
                        font.family: fonts.regular
                        font.weight: 400
                        font.pixelSize: 14
                        background: null
                        wrapMode: TextArea.Wrap
                        color: pullc.color("white")
                        opacity: 0.9

                        ToolTip.visible: text.length === 0
                        ToolTip.text: "⚠️ Message can't be empty"
                    }
                }
            }
        }

        Rectangle {
            id: submitBtn
            Layout.preferredWidth: (window.width > 700) ? 620 : window.width * 0.95
            height: 40
            radius: 10
            color: contactForm.isFormValid ? pullc.color("neon") : pullc.color("graylight")
            opacity: contactForm.isFormValid ? 1 : 0.6
            Layout.topMargin: 20

            Text {
                anchors.centerIn: parent
                text: qsTr("Submit")
                font.family: fonts.regular
                font.pixelSize: 15
                color: pullc.color("black")
            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor

                onEntered: submitBtn.opacity = contactForm.isFormValid ? 0.6 : 1
                onExited: submitBtn.opacity = contactForm.isFormValid ? 1 : 0.6

                onClicked: {
                    if (contactForm.isFormValid) {
                        var msg = "Thank you, " + namefield.text + "! Your email has been sent."
                        showDialog(msg)
                    }
                }
            }
        }
    }
}
