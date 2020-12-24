import QtQuick 2.0
import Felgo 3.0
import "../common" as Common

Item {
    Image {
         id: background
         anchors.fill: parent
         source: "../scenes/imag/pngtree-beautiful-nature-cartoon-background-for-kids-image_330680.jpg"
     }

   // levelName: "Level3"
    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 30
        font.pixelSize: 30
        color: "#7cfc00"
        text: "حرف(ج)"
}
Timer{
    id:t1
interval: 1600
onTriggered: rec.visible=false

}
Rectangle{
id:backgroun
color: "transparent"
anchors.left : parent.left
anchors.leftMargin: 370
anchors.top: parent.top
anchors.topMargin: 120
width: 30
height:30
Image {
    anchors.fill: parent
    id: imm
    source: "../scenes/imag/91207265_655799831885954_2080424588440764416_n.png"
}

}
    Rectangle{
        id:rec
        width: 110
        height:110

        Image {
            id: im
            anchors.fill: parent
            source: "../scenes/imag/41721674-cute-horse-cartoon.jpg"
        }
        MouseArea{
             id :st
             anchors.fill: parent
             onPressed: {
          anm.running=true
        t1.start()


             }

         }
       SequentialAnimation{
            id:anm
            running: false
        NumberAnimation{

        target: im
        properties:"scale"
        from: 1
        to:0.5
        duration: 1000
        }
        NumberAnimation{
        target: im
        properties: "opacity"
        from: 1.0
        to:0.0
        duration: 1000 }  }

}}
