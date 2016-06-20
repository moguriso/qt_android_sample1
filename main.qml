import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true

    MainForm{
        id: main_form
    }

    Item {
        property int tap_count: 0
        anchors.fill: parent
        focus: true
        Keys.onEnterPressed: {
            console.log("Enter key")
            tap_count++;
            main_form.tap_count_txt.text = tap_count
        }

        Keys.onLeftPressed: {
            console.log("move left")
        }

        Keys.onRightPressed: {
            console.log("move right")
        }
    }

    MouseArea {
        property int click_count: 0
        id: mouseArea1
        anchors.fill: parent
        focus:true

        onClicked: {
            click_count++;
            main_form.click_count_txt.text = click_count
        }
    }
}
