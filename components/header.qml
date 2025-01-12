import QtQuick 2.15
import com.colors 1.0
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

Rectangle
{
    id: header
    width: 280
    height: 50
    color: pullc.color("gray")
    radius: 10
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    anchors.topMargin: 30
    z : 1
    RowLayout
    {
        spacing: 30
        anchors.centerIn: parent

        Image {
            id: homeIcon
            source: "qrc:/header/home"
            Layout.preferredWidth: 27
            Layout.preferredHeight: 27
            smooth: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: projectIcon
            source: "qrc:/header/project"
            Layout.preferredWidth: 24
            Layout.preferredHeight: 24
            smooth: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: experienceIcon
            source: "qrc:/header/experience"
            Layout.preferredWidth: 25
            Layout.preferredHeight: 25
            smooth: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: educationIcon
            source: "qrc:/header/education"
            Layout.preferredWidth: 25
            Layout.preferredHeight: 25
            smooth: true
            fillMode: Image.PreserveAspectFit
        }

        Image
        {
            id:contactIcon
            source: "qrc:/header/contact"
            Layout.preferredWidth: 25
            Layout.preferredHeight: 25
            smooth: true
            fillMode: Image.PreserveAspectFit
        }
    }
}
