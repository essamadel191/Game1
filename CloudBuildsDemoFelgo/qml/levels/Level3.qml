import QtQuick 2.0
import Felgo 3.0
import "../common" as Common
import  QtMultimedia 5.2
Item {

    id: item
    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 30
        font.pixelSize: 30
        color: "#7cfc00"
        text: "حرف(ت)"
    }
    Rectangle{
        id:ssize
        height: 90
        width:100
        //border.color: "green"
      //  radius: 20
        border.width: 50

        anchors.left : parent.left
        anchors.leftMargin: 330
        anchors.top: parent.top
        anchors.topMargin: 110
        z:2
    Rectangle{
        id:shose
        anchors.fill: parent
        border.width: 5
        clip: true
        height: 80
        color: "transparent"
        //radius:30
        width: 90
        z:3

    Image {
            id: sshose
            fillMode: Image.PreserveAspectCrop
            anchors.centerIn: parent
            source: "../scenes/imag/حزاء.jpg"
            height: 80

            width: 90
            z: 4
            opacity: 0.9
            MediaPlayer{
            id:hh
            source: "../scenes/Sounds/حزاء.wav"}
            MouseArea{
                 id :st
                 anchors.fill: parent
                 onPressed: {
                 shose.border.color="green"
                 }
             }
            }


    }}


}
