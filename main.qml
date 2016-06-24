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

        Keys.onPressed: {
            switch(event.key){
            case Qt.Key_Return:
            case Qt.Key_Enter:
                main_form.tap_count_txt.text = "Enter key"
                console.log("Enter key")
                break;
            case Qt.Key_Left:
                main_form.tap_count_txt.text = "Left key"
                console.log("Left key")
                break;
            case Qt.Key_Right:
                main_form.tap_count_txt.text = "Right key"
                console.log("Right key")
                break;
            default:
                console.log("??? key")
            }

//            event.accepted = true;
        }

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

        onClicked: {
            click_count++;
            main_form.click_count_txt.text = click_count
        }
    }
}
