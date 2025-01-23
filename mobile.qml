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
            contentHeight: (window.width > 700) ? contentLayout.implicitHeight + 160 :  contentLayout.implicitHeight + 360
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
            // Rectangle
            // {
            //     id: contents
            //     width: 700
            //     height: 4800
            //     color: "red"
            //     visible: true
            // }

            ColumnLayout
            {
                id: contentLayout
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 20

                Loader {
                    id: profileCard
                    Layout.alignment: Qt.AlignHCenter
                    Component.onCompleted: {
                        Backend.fetchComponent("profileCard", "https://kaustuvpokharel.com/profileCard.qml");
                    }

                    Connections {
                        target: Backend
                        function onComponentFetched(componentName, qmlContent) {
                            if (componentName === "profileCard") {
                                console.log("profileCard QML content fetched successfully");
                                profileCard.source = "data:text/plain," + encodeURIComponent(qmlContent);
                            }
                        }
                        function onComponentFetchFailed(componentName, error) {
                            console.error(`Failed to fetch ${componentName}: ${error}`);
                        }
                    }
                }

                Loader {
                    id: softwareEng
                    Layout.alignment: Qt.AlignHCenter
                    Component.onCompleted: {
                        Backend.fetchComponent("SoftwareEng", "https://kaustuvpokharel.com/SoftwareEng.qml");
                    }

                    Connections {
                        target: Backend
                        function onComponentFetched(componentName, qmlContent) {
                            if (componentName === "SoftwareEng") {
                                console.log("SoftwareEng QML content fetched successfully");
                                softwareEng.source = "data:text/plain," + encodeURIComponent(qmlContent);
                            }
                        }
                        function onComponentFetchFailed(componentName, error) {
                            console.error(`Failed to fetch ${componentName}: ${error}`);
                        }
                    }
                }

                // Projects
                // {
                //     id: projectComponent
                // }

                Loader {
                    id: projects
                    Layout.alignment: Qt.AlignHCenter
                    Component.onCompleted: {
                        Backend.fetchComponent("Projects", "https://kaustuvpokharel.com/Projects.qml");
                    }

                    Connections {
                        target: Backend
                        function onComponentFetched(componentName, qmlContent) {
                            if (componentName === "Projects") {
                                console.log("Projects QML content fetched successfully");
                                projects.source = "data:text/plain," + encodeURIComponent(qmlContent);
                            }
                        }
                        function onComponentFetchFailed(componentName, error) {
                            console.error(`Failed to fetch ${componentName}: ${error}`);
                        }
                    }
                }


                // Experience
                // {
                //     id: experienceComponent
                // }

                Loader {
                    id: experience
                    Layout.alignment: Qt.AlignHCenter
                    Component.onCompleted: {
                        Backend.fetchComponent("Experience", "https://kaustuvpokharel.com/Experience.qml");
                    }

                    Connections {
                        target: Backend
                        function onComponentFetched(componentName, qmlContent) {
                            if (componentName === "Experience") {
                                console.log("Experience QML content fetched successfully");
                                experience.source = "data:text/plain," + encodeURIComponent(qmlContent);
                            }
                        }
                        function onComponentFetchFailed(componentName, error) {
                            console.error(`Failed to fetch ${componentName}: ${error}`);
                        }
                    }
                }

                Loader {
                    id: education
                    Layout.alignment: Qt.AlignHCenter
                    Component.onCompleted: {
                        Backend.fetchComponent("Education", "https://kaustuvpokharel.com/Education.qml");
                    }

                    Connections {
                        target: Backend
                        function onComponentFetched(componentName, qmlContent) {
                            if (componentName === "Education") {
                                console.log("Education QML content fetched successfully");
                                education.source = "data:text/plain," + encodeURIComponent(qmlContent);
                            }
                        }
                        function onComponentFetchFailed(componentName, error) {
                            console.error(`Failed to fetch ${componentName}: ${error}`);
                        }
                    }
                }

                // Contact
                // {
                //     id: contactComponent
                // }

                Loader {
                    id: contact
                    Layout.alignment: Qt.AlignHCenter
                    Component.onCompleted: {
                        Backend.fetchComponent("Contact", "https://kaustuvpokharel.com/Contact.qml");
                    }

                    Connections {
                        target: Backend
                        function onComponentFetched(componentName, qmlContent) {
                            if (componentName === "Contact") {
                                console.log("Contact QML content fetched successfully");
                                contact.source = "data:text/plain," + encodeURIComponent(qmlContent);
                            }
                        }
                        function onComponentFetchFailed(componentName, error) {
                            console.error(`Failed to fetch ${componentName}: ${error}`);
                        }
                    }
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
