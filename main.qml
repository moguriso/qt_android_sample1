import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true

    MainForm{
        id: main_form
    }

    Column {
        id: column1
        anchors.fill: parent
    }

    MouseArea {
        property int click_count: 0
        id: mouseArea1
        anchors.fill: parent

        onClicked: {
            click_count++;
            main_form.hello_text.text = click_count
        }

    }
}
