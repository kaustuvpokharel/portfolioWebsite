import QtQuick 2.15
import com.colors 1.0
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects



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

                Text {
                    id: namefield
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    text: qsTr("Your Name")
                    font.family: pRegular.name
                    font.pixelSize: 14
                    // horizontalAlignment: Text.AlignHCenter
                    color: pullc.color("white")
                    wrapMode: Text.Wrap
                    opacity: 0.5
                }
            }

            Rectangle
            {
                id: emailFieldRect
                width: 340
                height: 40
                color: pullc.color("gray")
                radius: 10

                Text {
                    id: emailfield
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    text: qsTr("Your@email.com")
                    font.family: pRegular.name
                    font.pixelSize: 14
                    // horizontalAlignment: Text.AlignHCenter
                    color: pullc.color("white")
                    wrapMode: Text.Wrap
                    opacity: 0.5
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

                Text {
                    id: subjectfield

                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.verticalCenter: parent.verticalCenter
                    text: qsTr("Email's subject")
                    font.family: pRegular.name
                    font.pixelSize: 14
                    // horizontalAlignment: Text.AlignHCenter
                    color: pullc.color("white")
                    wrapMode: Text.Wrap
                    opacity: 0.5
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

                Text
                {
                    id: messagefield
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 10
                    anchors.leftMargin: 10
                    text: qsTr("Message")
                    font.family: pRegular.name
                    font.pixelSize: 14
                    // horizontalAlignment: Text.AlignHCenter
                    color: pullc.color("white")
                    wrapMode: Text.Wrap
                    opacity: 0.5
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
        }
    }
}
