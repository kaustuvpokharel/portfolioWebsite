import QtQuick 2.15
import com.colors 1.0
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

Rectangle
{
    id: pcMainRect
    width: 350
    height: 650
    color: pullc.color("white");
    radius: 20
    clip: true
    Image {
        id: bgImage
        source: "qrc:/bg/bgCard"
        anchors.fill: parent
        smooth: true
        fillMode: Image.PreserveAspectCrop
        opacity: 0.4
        layer.enabled: true
        layer.effect: OpacityMask
        {
            maskSource: mask1
        }
    }

    Rectangle
    {
        //mask for the background image used inside the profile card
        id:mask1
        anchors.fill: parent
        visible: false
        radius: 20
    }

    ColumnLayout
    {
        spacing:20
        anchors.centerIn: parent
        Image {
            id: profilePicture
            source: "qrc:/profilepic"  // Add the correct file extension
            Layout.preferredWidth: pcMainRect.width
            Layout.preferredHeight: pcMainRect.height / 1.9
            smooth: true
            fillMode: Image.PreserveAspectFit
            Layout.alignment: Qt.AlignCenter

        }

        Text
        {
            id: name
            text: qsTr("Kaustuv Pokharel")
            font.family: pbold.name
            font.weight: 700
            font.pixelSize: 27
            color: pullc.color("black")
            Layout.alignment: Qt.AlignCenter
        }

        Rectangle
        {
            id: textWrapper
            width: 260
            height: 90
            Layout.alignment: Qt.AlignCenter
            Layout.topMargin: 15
            color: "Transparent"

            Text
            {

                id: introduction
                text: qsTr("Software Engineering Student with background in CrossPlatform Application Development, Graphics Programming and GPGPU with C++.")
                wrapMode: Text.WordWrap
                Layout.alignment: Qt.AlignCenter
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                width: 260
                font.family: pMedium.name
                color: pullc.color("gray")
                opacity: 0.8
            }
        }



    }
}
