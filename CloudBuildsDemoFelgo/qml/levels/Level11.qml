import QtQuick 2.0
import Felgo 3.0
import "../common" as Common
import  QtMultimedia 5.2

Item {
    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 30
        font.pixelSize: 30
        color: "#7cfc00"
        text: "حرف(ز)"  }
    Rectangle{
        id:ssize
        height: 90
        width:100
        color: "white"
       border.color: "white"
        //radius: 20
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
        border.color: "white"

        height: 80

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

            MediaPlayer{
            id:hh
            source: "../scenes/Sounds/حزاء.wav"}
            MouseArea{
                 id :st
                 anchors.fill: parent
                 onPressed: {
                 shose.border.color="green"
                     hh.play()
                 }
             }
            }


    }}
    Rectangle{
        id:ssi
        height: 90
        width:100
        color: "white"
       border.color: "white"
        //radius: 20
        border.width: 50
        anchors.left : parent.left
        anchors.leftMargin: 200
        anchors.top: parent.top
        anchors.topMargin: 110

z:2
    Rectangle{
        id:hos
        anchors.fill: parent
        border.width: 3
        border.color: "white"

        height: 80

        //radius:30
        width: 90

z:3
    Image {
            id: homs
            fillMode: Image.PreserveAspectCrop
            anchors.centerIn: parent
            source: "../scenes/imag/حمص.jpg"
            height: 80

            width: 90
z:4

            MediaPlayer{
            id:ho
            source: "../scenes/Sounds/حزاء.wav"}
            MouseArea{
                 id :hhh
                 anchors.fill: parent
                 onPressed: {
                hos.border.color="red"
                     ho.play()
                 }
             }
            }
}}


}

