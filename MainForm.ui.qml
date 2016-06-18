import QtQuick 2.5

Rectangle {
    id: _root
    property alias mouseArea: mouseArea
    property alias hello_text: hello_text

    width: 360
    height: 360

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    Text {
        id: hello_text

        anchors.centerIn: parent
        text: "Hello World"
    }
}
