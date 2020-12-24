import Felgo 3.0
import QtQuick 2.0
import "scenes"


    GameWindow {
        id: window


        EntityManager {
            id: entityManager
        }

        // menu scene
        MenuScene {
            id: menuScene
            onSelectLevelPressed: window.state = "selectLevel"
            onCreditsPressed: window.state = "credits"
            onBackButtonPressed: {
                nativeUtils.displayMessageBox(qsTr("Really quit the game?"), "", 2);
            }
            Connections {
                target: nativeUtils
                onMessageBoxFinished: {
                    if(accepted && window.activeScene === menuScene)
                        Qt.quit()
                }
            }
        }

        SelectLevelScene {
            id: selectLevelScene
            onLevelPressed: {
                gameScene.setLevel(selectedLevel)
                window.state = "game"

            }
            onBackButtonPressed: window.state = "menu"
        }

        CreditsScene {
            id: creditsScene
            onBackButtonPressed: window.state = "menu"
        }

        GameScene {
            id: gameScene
            onBackButtonPressed: window.state = "selectLevel"
        }

        state: "menu"
        activeScene: menuScene

        states: [
            State {
                name: "menu"
                PropertyChanges {target: menuScene; opacity: 1}
                PropertyChanges {target: window; activeScene: menuScene}
            },
            State {
                name: "selectLevel"
                PropertyChanges {target: selectLevelScene; opacity: 1}
                PropertyChanges {target: window; activeScene: selectLevelScene}
            },
            State {
                name: "credits"
                PropertyChanges {target: creditsScene; opacity: 1}
                PropertyChanges {target: window; activeScene: creditsScene}
            },
            State {
                name: "game"
                PropertyChanges {target: gameScene; opacity: 1}
                PropertyChanges {target: window; activeScene: gameScene}
            }
        ]
    }


