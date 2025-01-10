import QtQuick
import com.colors 1.0
import QtQuick.Layouts

Window {
    width: 1920
    height: 1080
    visible: true
    title: qsTr("Kaustiv Pokharel")
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

    Rectangle
    {
        id: pcMainRect
        width: 350
        height: 650
        color: pullc.color("white");
        radius: 10

        RowLayout
        {
            anchors
            {
                fill:parent
            }

            Image
            {
                id: profilePicture
                source: "file"
            }

            Text
            {
                id: name
                text: qsTr("text")
            }

            Text {
                id: introduction
                text: qsTr("text")
            }

            ColumnLayout
            {

            }
        }
    }
}
