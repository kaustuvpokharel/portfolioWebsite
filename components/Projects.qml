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
        text: qsTr("RECENT")
        font.family: pBlack.name
        font.pixelSize: 110
        font.weight: 800
        color: pullc.color("white")
    }

    Text {
        id: engineer
        text: qsTr("PROJECTS")
        font.family: pBlack.name
        font.pixelSize: 110
        font.weight: 800
        color: pullc.color("gray")

        Layout.topMargin: -50
    }

    ColumnLayout
    {   Layout.topMargin: -20
        Rectangle
        {
            id: onhoverrect1
            width: 700
            height: 200
            color: "Transparent" // On hover changes to gray
            radius: 20
            RowLayout
            {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 10
                spacing: 20
                Rectangle
                {
                    width: 150
                    height: 180
                    id: imgrect1
                    color: "Transparent"
                    radius: 20

                    Image {
                        id: rocketifyImg
                        source: "qrc:/projects/rocketifyImg"
                        anchors.fill: parent
                        smooth: true
                        fillMode: Image.PreserveAspectCrop
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
                }

                ColumnLayout
                {
                    Text {
                        id: projectname1
                        text: qsTr("Rocketify")
                        font.family: pSemibold.name
                        font.pixelSize: 30
                        font.weight: 600
                        color: pullc.color("white")
                    }

                    Text {
                        id: pdescipt1
                        text: qsTr("C++ airship game done with QT Framework.")
                        font.family: pRegular.name
                        font.pixelSize: 17
                        // horizontalAlignment: Text.AlignHCenter
                        width: 650
                        color: pullc.color("white")
                        wrapMode: Text.Wrap
                        opacity: 0.5
                    }
                }
            }
        }


        Rectangle
        {
            id: onhoverrect2
            width: 700
            height: 200
            color: "Transparent" // On hover changes to gray
            radius: 20
            RowLayout
            {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 10
                spacing: 20
                Rectangle
                {
                    width: 150
                    height: 180
                    id: imgrect2
                    color: "Transparent"
                    radius: 20

                    Image {
                        source: "qrc:/projects/rocketifyImg"
                        anchors.fill: parent
                        smooth: true
                        fillMode: Image.PreserveAspectCrop
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
                        radius: 20
                    }
                }

                ColumnLayout
                {
                    Text {
                        id: projectname2
                        text: qsTr("Rocketify")
                        font.family: pSemibold.name
                        font.pixelSize: 30
                        font.weight: 600
                        color: pullc.color("white")
                    }

                    Text {
                        id: pdescipt2
                        text: qsTr("C++ airship game done with QT Framework.")
                        font.family: pRegular.name
                        font.pixelSize: 17
                        // horizontalAlignment: Text.AlignHCenter
                        width: 650
                        color: pullc.color("white")
                        wrapMode: Text.Wrap
                        opacity: 0.5
                    }
                }
            }
        }

        Rectangle
        {
            id: onhoverrect3
            width: 700
            height: 200
            color: "Transparent" // On hover changes to gray
            radius: 20
            RowLayout
            {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 10
                spacing: 20
                Rectangle
                {
                    width: 150
                    height: 180
                    id: imgrect3
                    color: "Transparent"
                    radius: 20

                    Image {
                        source: "qrc:/projects/rocketifyImg"
                        anchors.fill: parent
                        smooth: true
                        fillMode: Image.PreserveAspectCrop
                        layer.enabled: true
                        layer.effect: OpacityMask
                        {
                            maskSource: mask3
                        }
                    }

                    Rectangle
                    {
                        //mask for the background image used inside the profile card
                        id:mask3
                        anchors.fill: parent
                        visible: false
                        radius: 20
                    }
                }

                ColumnLayout
                {
                    Text {
                        id: projectname3
                        text: qsTr("Rocketify")
                        font.family: pSemibold.name
                        font.pixelSize: 30
                        font.weight: 600
                        color: pullc.color("white")
                    }

                    Text {
                        id: pdescipt3
                        text: qsTr("C++ airship game done with QT Framework.")
                        font.family: pRegular.name
                        font.pixelSize: 17
                        // horizontalAlignment: Text.AlignHCenter
                        width: 650
                        color: pullc.color("white")
                        wrapMode: Text.Wrap
                        opacity: 0.5
                    }
                }
            }
        }

        Rectangle
        {
            id: onhoverrect4
            width: 700
            height: 200
            color: "Transparent" // On hover changes to gray
            radius: 20
            RowLayout
            {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 10
                spacing: 20
                Rectangle
                {
                    width: 150
                    height: 180
                    id: imgrect4
                    color: "Transparent"
                    radius: 20

                    Image {
                        source: "qrc:/projects/rocketifyImg"
                        anchors.fill: parent
                        smooth: true
                        fillMode: Image.PreserveAspectCrop
                        layer.enabled: true
                        layer.effect: OpacityMask
                        {
                            maskSource: mask4
                        }
                    }

                    Rectangle
                    {
                        //mask for the background image used inside the profile card
                        id:mask4
                        anchors.fill: parent
                        visible: false
                        radius: 20
                    }
                }

                ColumnLayout
                {
                    Text {
                        id: projectname4
                        text: qsTr("Rocketify")
                        font.family: pSemibold.name
                        font.pixelSize: 30
                        font.weight: 600
                        color: pullc.color("white")
                    }

                    Text {
                        id: pdescipt4
                        text: qsTr("C++ airship game done with QT Framework.")
                        font.family: pRegular.name
                        font.pixelSize: 17
                        // horizontalAlignment: Text.AlignHCenter
                        width: 650
                        color: pullc.color("white")
                        wrapMode: Text.Wrap
                        opacity: 0.5
                    }
                }
            }
        }
    }
}
