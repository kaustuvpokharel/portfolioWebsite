import QtQuick 2.15
import com.colors 1.0
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects

Rectangle
{
    id: header
    width: 270
    height: 50
    color: pullc.color("gray")
    radius: 10
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    anchors.topMargin: 30
    z : 1
    RowLayout
    {
        spacing: 20
        anchors.centerIn: parent

        Image {
            id: githubIcon
            source: "qrc:/iconsStrong/githubIcon"
            Layout.preferredWidth: 25
            Layout.preferredHeight: 25
            smooth: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: linkedInIcon
            source: "qrc:/iconsStrong/linkedIcon"
            Layout.preferredWidth: 25
            Layout.preferredHeight: 25
            smooth: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: youtubeIcon
            source: "qrc:/iconsStrong/youtubeIcon"
            Layout.preferredWidth: 25
            Layout.preferredHeight: 25
            smooth: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: behanceIcon
            source: "qrc:/iconsStrong/behanceIcon"
            Layout.preferredWidth: 25
            Layout.preferredHeight: 25
            smooth: true
            fillMode: Image.PreserveAspectFit
        }

        Image
        {
            id:emailIcon
            source: "qrc:/iconsStrong/emailIcon"
            Layout.preferredWidth: 25
            Layout.preferredHeight: 25
            smooth: true
            fillMode: Image.PreserveAspectFit
        }
    }
}
