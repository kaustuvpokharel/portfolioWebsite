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
        text: qsTr("SOFTWARE")
        font.family: pBlack.name
        font.pixelSize: 110
        font.weight: 800
        color: pullc.color("white")
    }

    Text {
        id: engineer
        text: qsTr("ENGINEER")
        font.family: pBlack.name
        font.pixelSize: 110
        font.weight: 800
        color: pullc.color("gray")

        Layout.topMargin: -50
    }

    Rectangle
    {
        id: textWrapper1
        width: 650
        height: 90
        color: "Transparent"
        Layout.topMargin: -20
        Text
        {
            id:discript
            text: qsTr("Passionate about creating intuitive and engaging user experiences. Specialize in transforming ideas into beautifully crafted products.")
            font.family: pRegular.name
            font.pixelSize: 17
            // horizontalAlignment: Text.AlignHCenter
            width: 650
            color: pullc.color("white")
            wrapMode: Text.Wrap
            opacity: 0.5
        }
    }

    GridLayout
    {

        columns: 3
        columnSpacing: 30
        rowSpacing: -10
        Layout.topMargin: 10
        Text {
            id: yieNum
            text: qsTr("+3")
            font.family: pSemibold.name
            font.pixelSize: 70
            font.weight: 600
            color: pullc.color("white")
        }

        Text {
            id: pcNum
            text: qsTr("+10")
            font.family: pSemibold.name
            font.pixelSize: 70
            font.weight: 600
            color: pullc.color("white")
        }

        Text {
            id: cwNum
            text: qsTr("+4")
            font.family: pSemibold.name
            font.pixelSize: 70
            font.weight: 600
            color: pullc.color("white")
        }


        Rectangle
        {
            width: 150
            height: 40
            color: "Transparent"
            Text
            {
                id:yie
                text: qsTr("YEARS OF EXPERIENCE")
                font.family: pRegular.name
                font.pixelSize: 15
                // horizontalAlignment: Text.AlignHCenter
                width: 150
                color: pullc.color("white")
                wrapMode: Text.Wrap
                opacity: 0.5
            }
        }

        Rectangle
        {
            width: 150
            height: 40
            color: "Transparent"
            Text
            {
                id:pc
                text: qsTr("PROJECTS COMPLETED")
                font.family: pRegular.name
                font.pixelSize: 15
                // horizontalAlignment: Text.AlignHCenter
                width: 150
                color: pullc.color("white")
                wrapMode: Text.Wrap
                opacity: 0.5
            }
        }

        Rectangle
        {
            width: 150
            height: 40
            color: "Transparent"
            Text
            {
                id:cw
                text: qsTr("COMPANIES WORKED WITH")
                font.family: pRegular.name
                font.pixelSize: 15
                // horizontalAlignment: Text.AlignHCenter
                width: 150
                color: pullc.color("white")
                wrapMode: Text.Wrap
                opacity: 0.5
            }
        }

    }

    RowLayout
    {
        Layout.topMargin: 50
        spacing: 30
        Rectangle
        {
            id:resume
            color: pullc.color("gray")
            radius: 10
            width: 310
            height: 250
            Image {
                id: bgImage
                source: "qrc:/bg/bgCard"
                anchors.fill: parent
                smooth: true
                fillMode: Image.PreserveAspectCrop
                opacity: 0.2
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
                radius: 10
            }

            ColumnLayout
            {
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.topMargin: 30
                anchors.leftMargin: 30

                Image {
                    id: rIcon
                    source: "qrc:/iconsStrong/githubIcon"
                    Layout.preferredWidth: 45
                    Layout.preferredHeight: 45
                    smooth: true
                    fillMode: Image.PreserveAspectFit
                }
                Rectangle
                {
                    width: 250
                    height: 50
                    color: "Transparent"

                    Text
                    {
                        id: resumeT
                        text: qsTr("RESUME it is—roast or toast?")
                        font.family: pSemibold.name
                        font.pixelSize: 25
                        // horizontalAlignment: Text.AlignHCenter
                        width: 250
                        color: pullc.color("white")
                        wrapMode: Text.Wrap
                    }
                }

            }

        }

        Rectangle
        {
            id: youtube
            color: pullc.color("neon")
            radius: 10
            width: 360
            height: 250
            Image {
                id: bgImage1
                source: "qrc:/bg/bgCard"
                anchors.fill: parent
                smooth: true
                fillMode: Image.PreserveAspectCrop
                opacity: 0.2
                layer.enabled: true
                layer.effect: OpacityMask
                {
                    maskSource: mask2
                }
            }
            Rectangle
            {
                //mask for the background image used inside the profile card
                id:mask2
                anchors.fill: parent
                visible: false
                radius: 10
            }

            ColumnLayout
            {
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.topMargin: 30
                anchors.leftMargin: 30

                Image {
                    id: ytIcon
                    source: "qrc:/iconsStrong/githubIcon"
                    Layout.preferredWidth: 45
                    Layout.preferredHeight: 45
                    smooth: true
                    fillMode: Image.PreserveAspectFit
                }
                Rectangle
                {
                    width: 250
                    height: 50
                    color: "Transparent"

                    Text
                    {
                        id: yText
                        text: qsTr("RESUME it is—roast or toast?")
                        font.family: pSemibold.name
                        font.pixelSize: 25
                        // horizontalAlignment: Text.AlignHCenter
                        width: 250
                        color: pullc.color("gray")
                        wrapMode: Text.Wrap
                    }
                }

            }

        }
    }
}