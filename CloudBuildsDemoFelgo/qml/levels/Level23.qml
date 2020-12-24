import QtQuick 2.0
import Felgo 3.0
import "../common" as Common

Item {

    Rectangle{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 10

        width: 85
        height: 40
        color: "white"

        radius: 5
    Text {

        anchors.fill:parent
        anchors.margins: 5
        id: header1
        text: qsTr("حرف (ل)")
        font.pixelSize: 20

    }

    }


    //the letter spelling
    Rectangle{
        id:t
        width: 30
        height: 30
        radius: 5
        anchors.top: parent.top
        anchors.topMargin: 15
        anchors.right: parent.right
        anchors.rightMargin: 150
        color: "#cccccc"
        Image {
            id: sound_img_source2
            anchors.fill: parent
            source: "../../assets/img/sound_icon.png"
            opacity: 0.8
        }
    SoundEffect{
    id:letter_sound
    source: "../../assets/sounds/Dmp3.wav"
    }
    MouseArea{
        anchors.fill: parent
        hoverEnabled: true

        onPressed: t.opacity = 0.5
        onReleased: t.opacity = 0.8

        onClicked: letter_sound.play()

    }

    }

    /////////////////All playing canter///////////////////////////
    Rectangle{
    id:sceenCenter1
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    anchors.topMargin: 60
    width: parent.width-20
    height: parent.height - 120
    radius: 20
    color: "white"

    Rectangle{
    //color: "red"

    width: 100
    height: 100
    anchors.top: parent.top
    anchors.topMargin: 5
    anchors.horizontalCenter: parent.horizontalCenter

    Image {
        id: l_img
        anchors.fill: parent
        source: "../../assets/img/lemon.png"
    }
    }
    Rectangle
    {
       id:control1
       width: 90
       height: 40
       radius: 10
       anchors.bottom: parent.bottom
       anchors.bottomMargin: 30
       anchors.left: parent.left
       anchors.leftMargin: 30
       gradient: Gradient {
                  GradientStop { position: 0 ; color: control_area1.pressed ? "#ccc" : "#eee" }
                  GradientStop { position: 1 ; color: control_area1.pressed ? "#aaa" : "#ccc" }
              }
       border.width: control1.activeFocus ? 3 : 1
       border.color: "#888"
       Timer{
       id:t1
       interval: 400
       onTriggered:{

          // control1.border.color="#888"
           mm1.visible=true
           mm2.visible=true
       }
       }
       MouseArea{
       id:control_area1
       anchors.fill: parent
       onClicked: {
           control1.border.color="green"
           t1.start()
           control1.visible=false
           control2.visible=false
           control3.visible=false


       }
       }
       Text {
           anchors.top: parent.top
           anchors.topMargin: 12.5
           anchors.horizontalCenter: parent.horizontalCenter
           text: qsTr("ليمون")
           font.family: "Calibri"
       }

    }


    Rectangle
    {
        id:control2
        width: 90
        height: 40
        radius: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        anchors.horizontalCenter: parent.horizontalCenter
        gradient: Gradient {
                   GradientStop { position: 0 ; color: control_area2.pressed ? "#ccc" : "#eee" }
                   GradientStop { position: 1 ; color: control_area2.pressed ? "#aaa" : "#ccc" }
               }
        border.width: control2.activeFocus ? 3 : 1
        border.color: "#888"
        Timer{
        id:t2
        interval: 1500
        onTriggered:control2.border.color="#888"

        }

        MouseArea{
        id:control_area2
        anchors.fill: parent
        onClicked: {
            control2.border.color="red"
            t2.start()
        }
        }
        Text {
            anchors.top: parent.top
            anchors.topMargin: 12.5
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("برتقال")
            font.family: "Calibri"
        }
    }

    Rectangle{
        id:control3
        width: 90
        height: 40
        radius: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        anchors.right: parent.right
        anchors.rightMargin: 30

        gradient: Gradient {
                   GradientStop { position: 0 ; color: control_area3.pressed ? "#ccc" : "#eee" }
                   GradientStop { position: 1 ; color: control_area3.pressed ? "#aaa" : "#ccc" }
               }
        border.width: control3.activeFocus ? 3 : 1
        border.color: "#888"

        Timer{
        id:t3
        interval: 1500
        onTriggered:control3.border.color="#888"

        }
        MouseArea{
        id:control_area3
        anchors.fill: parent
        onClicked: {
            control3.border.color="red"
            t3.start()
        }

        }
        Text {
            anchors.top: parent.top
            anchors.topMargin: 12.5
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("موزه")
            font.family: "Calibri"
        }
    }
    Rectangle{
    id:mm1
    anchors.bottom: sceenCenter1.bottom
    anchors.bottomMargin: 10
    anchors.horizontalCenter: sceenCenter1.horizontalCenter
    visible: false
    width:320
    height: 40
    radius: 10
    color: "#add8e6"
    Text {
        id: con
        anchors.left: parent.left
        anchors.leftMargin: 60
        anchors.top: parent.top
        anchors.topMargin: 12
        text: qsTr("Well Done,you have chosen the right one")
    }


    }
    Rectangle{
    id:mm2
    anchors.bottom: sceenCenter1.bottom
    anchors.bottomMargin:60
    anchors.horizontalCenter:sceenCenter1.horizontalCenter
    visible: false
    width:80
    height: 40
    radius: 10
    color: "#add8e6"
    Text {
        id: co2
        anchors.left: mm2.left
        anchors.leftMargin: 23
        anchors.top: parent.top
        anchors.topMargin: 5
        font.pixelSize: 20
        font.family: "Calibri"
        text: qsTr("ليمون")
    }
    }



}




}
