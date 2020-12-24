import QtQuick 2.0
import Felgo 3.0
import "../common" as Common

Item {

    id: item
   Image {
        id: background
        anchors.fill: parent
        source: "../scenes/imag/pngtree-beautiful-nature-cartoon-background-for-kids-image_330680.jpg"
    }
    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 10
        font.pixelSize: 20
        color: "Crimson"
        text: "ضع حروف حصان"

    }
    Rectangle{
    id:backgroun
    color: "transparent"
    anchors.left : parent.left
    anchors.leftMargin: 390
    anchors.top: parent.top
    anchors.topMargin: 90
    width: 30
    height:30
    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true

        onPressed: backgroun.opacity = 0.5
        onReleased: backgroun.opacity = 1

    }
    Image {
        anchors.fill: parent
        id: imm
        source: "../scenes/imag/91207265_655799831885954_2080424588440764416_n.png"
    }}
    Rectangle{
        id:hosan
        height: 80
        width:90

        color: "transparent"
        //border.color: "green"

        border.width: 50
        anchors.left : parent.left
        anchors.leftMargin: 370
        anchors.top: parent.top
        anchors.topMargin: 120
        Image {
            anchors.fill: parent
            id: hos

            source: "../scenes/imag/cute-horse-cartoon-2BHA7FD1.jpg"
        }

    }

    Text {
        id:fl
        text: qsTr("ح")
        x:250
        y:210
        font.pixelSize: 30
       MouseArea{
       anchors.fill: parent
       onClicked: {
           first.to=(fl.x == 190? 230:170)
           first.running=true
           fl.color= "blue"
       }
       }
      NumberAnimation{
      id:first
      target: fl
      properties: "x,y"
      to:150
      duration: 1000
      }

    }
    Text {
        id: sl
        text: qsTr("ص")
        x:70
        y:210
        font.pixelSize: 30
        MouseArea{
        anchors.fill: parent
        onClicked: {
            sacond.running=true
            sacon.running=true
            sl.color= "blue"

        }
        }

       NumberAnimation on x{
       id:sacond
       target: sl
       properties: "x"
      to:100
       duration: 1000
       running: false
       }
        NumberAnimation on y{
            id:sacon
            target: sl
            properties: "y"
           to:150
            duration: 1000
            running: false
        }

    }
    Text {
        id: tl
        text: qsTr("ا")
        x:130
        y:210
        font.pixelSize: 30


        MouseArea{
        anchors.fill: parent
        onClicked: {
            third.to=(tl.x == 150? 0:150)
            third.running=true
            tl.color= "blue"

        }
        }
       NumberAnimation{
       id:third
       target: tl
       properties: "x,y"
       to:150
       duration: 1000
       }

    }
    Text {
        id: fol
        text: qsTr("ن")
        x:310
        y:210
        font.pixelSize: 30
        MouseArea{
        anchors.fill: parent
        onClicked: {
            fourth.to=(fol.x == 150? 0:150)
            fourth.running=true
            fol.color= "blue"

        }
        }
       NumberAnimation{
       id:fourth
       target: fol
       properties: "x,y"
       to:150
       duration: 1000
       }
    }
    Text {
        id: fil
        text: qsTr("ي")
        x:190
        y:210
        font.pixelSize: 30
        MouseArea{
        anchors.fill: parent
        onClicked: {
            sacond.to=(fil.x == 190? 0:190)
            fifth.running=true
           fifth.color= "red"

        }
        }
       NumberAnimation{
       id:fifth
       target: fil
       properties: "x,y"
       to:150
       duration: 1000
       }
    }
    Text {
        id: sil
        text: qsTr("ل")
        x:370
        y:210
        font.pixelSize: 30
        MouseArea{
        anchors.fill: parent
        onClicked: {
            six.to=(sil.x == 150? 0:150)
            six.running=true
            sil.color= "red"

        }
        }
       NumberAnimation{
       id:six
       target: sil
       properties: "x,y"
       to:150
       duration: 1000
       }
    }

}
