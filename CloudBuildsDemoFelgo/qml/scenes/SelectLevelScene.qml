import Felgo 3.0
import QtQuick 2.0
import "../common"

SceneBase {
    id: selectLevelScene

    // signal indicating that a level has been selected
    signal levelPressed(string selectedLevel)

    // background
    Rectangle{
        anchors.fill: parent.gameWindowAnchorItem
    Rectangle {
        anchors.fill: parent
        radius: 30

        color: "#add8e6"
    }
    }

    // back button to leave scene
    MenuButton {
        text: "Back"
        // anchor the button to the gameWindowAnchorItem to be on the edge of the screen on any device
        anchors.right: selectLevelScene.gameWindowAnchorItem.right
        anchors.rightMargin: 10
        anchors.bottom: selectLevelScene.gameWindowAnchorItem.bottom
        anchors.bottomMargin: 10
        onClicked: backButtonPressed()
        color: "#4da6ff"
    }

    // levels to be selected
    Grid {
        anchors.centerIn: parent
        spacing: 5
        columns: 7
        MenuButton {
            text: "خ"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level7.qml")
            }
        }
        MenuButton {
            text: "ح"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level6.qml")
            }
        }
        MenuButton {
            text: "ج"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level5.qml")
            }
        }
        MenuButton {
            text: "ث"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level4.qml")
            }
        }
        MenuButton {
            text: "ت"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level3.qml")
            }
        }
        MenuButton {
            text: "ب"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level2.qml")
            }
        }
        MenuButton {
            text: "أ"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level1.qml")
            }
        }

    MenuButton {
        text: "ص"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level14.qml")
        }
    }
    MenuButton {
        text: "ش"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level13.qml")
        }
    }
    MenuButton {
        text: "س"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level12.qml")
        }
    }
    MenuButton {
        text: "ز"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level11.qml")
        }
    }
    MenuButton {
        text: "ر"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level10.qml")
        }
    }

    MenuButton {
        text: "ذ"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level9.qml")
        }
    }
    MenuButton {
        text: "د"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level8.qml")
        }
    }
    MenuButton {
        text: "ق"
        width: 50
        height: 50
        onClicked: {
             levelPressed("Level21.qml")
        }
    }
    MenuButton {
        text: "ف"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level20.qml")
        }
    }
    MenuButton {
        text: "غ"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level19.qml")
        }
    }
    MenuButton {
        text: "ع"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level18.qml")
        }
    }
    MenuButton {
        text: "ظ"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level17.qml")
        }
    }
    MenuButton {
        text: "ط"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level16.qml")
        }
    }
    MenuButton {
        text: "ض"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level15.qml")
        }
    }
    MenuButton {
        text: "ي"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level28.qml")
        }
    }
    MenuButton {
        text: "و"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level27.qml")
        }
    }
    MenuButton {
        text: "ه"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level26.qml")
        }
    }
    MenuButton {
        text: "ن"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level25.qml")
        }
    }
    MenuButton {
        text: "م"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level24.qml")
        }
    }

    MenuButton {
        text: "ل"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level23.qml")
        }
    }

    MenuButton {
        text: "ك"
        width: 50
        height: 50
        onClicked: {
            levelPressed("Level22.qml")
        }
    }


      /*  Repeater {
            model: 10
            MenuButton {
                text: " "
                width: 50
                height: 50
            }
        }*/
    }
}
