import Felgo 3.0
import QtQuick 2.0
import "../common"

SceneBase {
    id: menuScene

    signal selectLevelPressed
    signal creditsPressed

    Rectangle {
        anchors.fill: parent.gameWindowAnchorItem
        Image {
            anchors.fill: parent
            source: "../../assets/img/BB.jpg"
            width:parent.width
            height:parent.height
        }
    }

    // the "logo"
    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 30
        font.pixelSize: 40
        color: "#daa520"
        text: "اللغة العربية"
    }

    // menu
    Column {
        anchors.centerIn: parent
        spacing: 10
        MenuButton {
            text: "حروف اللغة العربية"
            onClicked: selectLevelPressed()
            color: "#ffff4d"
        }
       MenuButton {
            text: " أختبر نفسك"
            onClicked: creditsPressed()
            color: "#ffff4d"
            anchors.left: parent.left
            anchors.leftMargin: 20
        }
    }

    // a little Felgo logo is always nice to have, right?
   /* Image {
        source: "../../assets/img/A.jpg"
        width:60
        height:60


       // anchors.right: menuScene.gameWindowAnchorItem.right
       // anchors.rightMargin: 10
       // anchors.bottom: menuScene.gameWindowAnchorItem.bottom
       // anchors.bottomMargin: 10
    }*/
}
