import QtQuick 6.8
import QtQuick.Shapes 6.8
import QtQuick.Controls.Material

Window {
    width: 640
    height: 700
    visible: true
    title: qsTr("Border Animation")
    color: "#202020"

    Item {
        width: 400
        height: 600
        anchors.centerIn: parent

        ParallelAnimation {
            running: true
            loops: Animation.Infinite

            NumberAnimation {
                target: linearGradient
                property: "x1"
                from: 0
                to: gradientBorder.width
                duration: 1300
            }

            NumberAnimation {
                target: linearGradient
                property: "y1"
                from: gradientBorder.height
                to: 0
                duration: 1300
            }

            NumberAnimation {
                target: linearGradient
                property: "x2"
                from: gradientBorder.width
                to: 0
                duration: 1300
            }

            NumberAnimation {
                target: linearGradient
                property: "y2"
                from: 0
                to: gradientBorder.height
                duration: 1300
            }
        }

        Shape {
            id: gradientBorder
            width: parent.width
            height: parent.height

            ShapePath {
                fillGradient: LinearGradient {
                    id: linearGradient
                    x1: 0
                    y1: gradientBorder.height

                    x2: gradientBorder.width
                    y2: 0

                    GradientStop {
                        position: 0
                        color: "#12c2e9"
                    }

                    GradientStop {
                        position: 0.3
                        color: "#c471ed"
                    }

                    GradientStop {
                        position: 1
                        color: "#f64f59"
                    }
                }

                PathRectangle {
                    width: gradientBorder.width
                    height: gradientBorder.height
                    radius: 8
                }
            }
        }

        Rectangle {
            anchors.centerIn: parent
            width: parent.width - 8
            height: parent.height - 8
            color: "#363636"
            radius: 8
        }
    }
}
