import QtQuick 2.5

Rectangle {
    id: _root

    width: 360
    height: 360
    property alias click_count_txt: click_count_txt
    property alias tap_count_txt: tap_count_txt

    Text {
        id: click_count_txt

        anchors.centerIn: parent
        text: "Hello World"
        anchors.verticalCenterOffset: -44
        anchors.horizontalCenterOffset: 0
    }

    Text {
        id: tap_count_txt
        x: -2
        y: 0
        text: "Hello World"
        anchors.verticalCenterOffset: 47
        anchors.centerIn: parent
        anchors.horizontalCenterOffset: 0
    }
}
