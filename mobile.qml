import QtQuick
import com.colors 1.0
import com.email 1.0
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import QtQuick.Controls
import "./components"

Page
{
    Rectangle
    {
        anchors.fill: parent
        color: pullc.color("black")
    }

    //anchors.fill: parent

    Header
    {
        id:headerComponent
        mainScrollRef: mainScroll
    }

    ColumnLayout
    {
        spacing: 100
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: headerComponent.bottom
        anchors.topMargin: 50
        anchors.bottom: window.bottom

        Flickable
        {
            id: mainScroll

            //anchors.fill: parent
            Layout.preferredWidth: 700
            Layout.preferredHeight: window.height
            contentWidth: width
            contentHeight: contentLayout.implicitHeight + 160
            clip: true
            //Layout.alignment: Qt.AlignTop
            Layout.alignment: Qt.AlignHCenter
            Layout.topMargin: -35

            flickDeceleration: 10000
            maximumFlickVelocity: 500
            pressDelay: 0
            boundsBehavior: Flickable.StopAtBounds

            // ScrollBar.vertical.policy: ScrollBar.AlwaysOff
            // ScrollBar.horizontal.policy: ScrollBar.AlwaysOn
            Rectangle
            {
                id: contents
                width: 700
                height: 4800
                color: "red"
                visible: true
            }

            ColumnLayout
            {
                id: contentLayout
                anchors.horizontalCenter: parent.horizontalCenter

                ProfileCard
                {
                    id: profilecard
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignCenter
                }

                SoftwareEng
                {
                    id: softwareEngComponent
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignCenter
                }

                Projects
                {
                    id: projectComponent
                }

                Experience
                {
                    id: experienceComponent
                }

                Education
                {
                    id: educationComponent
                }

                Contact
                {
                    id: contactComponent
                }

                Text {
                    id: copyRyght
                    text: qsTr("<html>© 2025 <b>Kaustuv Pokharel</b> | Fueled by Coffee, C++ and Qt with WebAssembly</html>")
                    font.family: pMedium.name
                    font.pixelSize: 15
                    color: pullc.color("neon")
                    Layout.alignment: Qt.AlignHCenter
                    Layout.topMargin: 70
                }
            }

            // MouseArea
            // {
            //     anchors.fill: parent
            //     onWheel: wheel => {
            //         contentY -= wheel.angleDelta.y * 0.3
            //     }
            // }
        }
    }
}
