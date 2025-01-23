    import QtQuick
    import com.colors 1.0
    import com.email 1.0
    import QtQuick.Layouts
    import Qt5Compat.GraphicalEffects
    import QtQuick.Controls
    //import com.kaustuv.backend 1.0

    import "./components"

    Page {

        // Connections {
        //     target: Backend
        //     onDynamicComponentReady: (component) => {
        //         projects.sourceComponent = component
        //     }
        // }

        // // Trigger the fetch
        // Component.onCompleted: {
        //     Backend.fetchComponent("Projects", "https://kaustuvpokharel.com/Projects.qml");
        // }

        Rectangle
        {
            id: bg
            anchors
            {
                fill: parent
            }

            color: pullc.color("black")
        }
        Header
        {
            id:headerComponent
            mainScrollRef: mainScroll
        }

        Flickable
        {
            width: parent.width
            height: parent.height
            contentWidth: parent.width
            contentHeight: parent.height
            anchors.top: headerComponent.bottom
            anchors.bottom: window.bottom
            anchors.topMargin: 50
            clip: true  // Prevents content from overflowing


            RowLayout
            {
                spacing: 100
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top

                Loader {
                    id: profileCard
                    Layout.alignment: Qt.AlignTop

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
                        visible: false
                    }

                    ColumnLayout
                    {
                        id: contentLayout
                        spacing: 70

                        Loader {
                            id: softwareEng

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
    }
