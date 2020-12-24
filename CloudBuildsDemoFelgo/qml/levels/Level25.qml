import QtQuick 2.0
import Felgo 3.0
import "../common" as Common
import QtMultimedia 5.2

Item {


    id: item
    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 30
        font.pixelSize: 30
        color: "#7cfc00"
        text: "حرف(ن)"
    }
    Rectangle{
    id:shose

    anchors.left : parent.left
    anchors.leftMargin: 330
    anchors.top: parent.top
    anchors.topMargin: 110

    height: 80
    width: 90
    color: "white"
    border.color: "black"
    Image {
        id: sshose
        anchors.fill: parent
        source: "../scenes/imag/حزاء.jpg"
        MediaPlayer{
        id:hh
        source: "../scenes/Sounds/حزاء.wav"}
        MouseArea{
        id:st
        anchors.fill: parent
        onPressed: {
        hh.play()
}
 }
    }


}
}
