import Felgo 3.0
import QtQuick 2.0
import "../common"

SceneBase {
    id:creditsScene

    // background
    Rectangle {
        anchors.fill: parent.gameWindowAnchorItem
        color: "#49a349"
    }

    // back button to leave scene
    MenuButton {
        text: "Back"
        // anchor the button to the gameWindowAnchorItem to be on the edge of the screen on any device
        anchors.right: creditsScene.gameWindowAnchorItem.right
        anchors.rightMargin: 10
        anchors.top: creditsScene.gameWindowAnchorItem.top
        anchors.topMargin: 10
        onClicked: backButtonPressed()
    }

    // credits
    Text {
        text: "الغه العربيه"
        color: "brown"
        anchors.centerIn: parent
    }
}
