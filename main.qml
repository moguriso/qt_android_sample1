import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true

    MainForm{
        id: main_form
    }

    MouseArea {
        property int click_count: 0
        id: mouseArea1
        anchors.fill: parent

        onClicked: {
            click_count++;
            main_form.click_count_txt.text = click_count
        }

        Keys.onEnterPressed: {
            //event.accepted = true;
            if (event.key == Qt.Key_Enter) {
                event.accepted = true;
                tab_count++
                main_form.tap_count_txt.text = tap_count
            }
        }
    }
}
