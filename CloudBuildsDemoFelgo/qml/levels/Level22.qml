import QtQuick 2.0
import Felgo 3.0
import "../common" as Common
import QtMultimedia 5.12

Item {

    property int answer1: 0
    property int answer2: 0
    property int answer3: 0

    id: item
    //header
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
        text: qsTr("حرف (ك)")
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

        //Dog image
        Rectangle{
        //color: "red"
        width: 100
        height: 100
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10

        Image {
            id: dog_img
            anchors.fill: parent
            source: "../../assets/img/dog.png"
        }
        }

        // Sound Icon
        Rectangle{
        color: "#bfbfbf"
        radius: 5
        id:sound_img
        width: 30
        height: 30
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 60
        anchors.right: parent.right
        anchors.rightMargin: 50
        Image {
            id: sound_img_source
            anchors.fill: parent
            source: "../../assets/img/sound_icon.png"
            opacity: 0.8
        }
        }
        SoundEffect{
        id:sound
        source: "../../assets/sounds/dog_sound2 (online-audio-converter.com).wav"
        }
        MouseArea{
            anchors.fill: sound_img
            hoverEnabled: true

            onPressed: sound_img.opacity = 0.5
            onReleased: sound_img.opacity = 0.8

            onClicked: sound.play()

        }
        //all letters right answer
        Rectangle{
        id:all_letter
        //color: "blue"
        width: 180
        height: 40
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 40
        anchors.left: parent.left
        anchors.leftMargin: 50

        //letter1
        Rectangle{
        id:letter1
        //color: "red"
        radius: 5
        width: 50
        height: 30
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 5
        anchors.left: parent.left
        anchors.leftMargin: 5
        border.color: "#cccccc"
        border.width: 2

        }
        //letter2
        Rectangle{
        id:letter2
        //color: "red"
        radius: 5
        width: 50
        height: 30
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 5
        anchors.left: parent.left
        anchors.leftMargin: 65
        border.color: "#cccccc"
        border.width: 2


        }
        //letter3
        Rectangle{
        id:letter3
        //color: "red"
        radius: 5
        width: 50
        height: 30
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 5
        anchors.left: parent.left
        anchors.leftMargin: 125
        border.color: "#cccccc"
        border.width: 2


        }
        }

        //first letter
        Rectangle{
        id:first
        width: 20
        height: 25
        radius: 5
        border.color: "#cccccc"
        x:20
        y:50

        Text {
            anchors.fill: third
            anchors.right: parent.right
            anchors.rightMargin: 4

            id:first_item
            font.pixelSize: 15
            text: qsTr("ك")

        }
        MouseArea{
        anchors.fill:first
        hoverEnabled: true
        onPressed: first.opacity=0.5
        onReleased: first.opacity=1
        onClicked: {
            if(answer1===0 && answer2===0 && answer3 ===0)
{            letter_anime_x.start()
            letter_anime_y.start()
                answer1=1
 }
            else{
            first_item.color="red"
            }
        }
        }

        NumberAnimation on x{
        id:letter_anime_x
        target: first
        properties: "x"
        to:190
        duration: 1000
        running: false
        }
        NumberAnimation on y{
        id:letter_anime_y
        target: first
        properties: "y"
        to:128
        duration: 1000
        running: false
        }
        }

        //Second letter
        Rectangle{
        id:second
        width: 20
        height: 25
        radius: 5
        border.color: "#cccccc"
        x:60
        y:50

        Text {
            anchors.fill: third
            anchors.right: parent.right
            anchors.rightMargin: 4

            id:second_item
            font.pixelSize: 15
            text: qsTr("ل")
            z:6
        }
        MouseArea{
        anchors.fill:second
        hoverEnabled: true
        onPressed: second.opacity=0.5
        onReleased: second.opacity=1
        onClicked: {
if(answer1===1 && answer2 ===0 && answer3 ===0){
            letter2_anime_x.start()
            letter2_anime_y.start()
    answer2=1
    second_item.color="black"
}
else{
    second_item.color="red"
}
        }
        }

        NumberAnimation on x{
        id:letter2_anime_x
        target: second
        properties: "x"
        to:130
        duration: 1000
        running: false
        }
        NumberAnimation on y{
        id:letter2_anime_y
        target: second
        properties: "y"
        to:128
        duration: 1000
        running: false
        }
        }

        Rectangle{
        id:third
        width: 20
        height: 25
        radius: 5
        border.color: "#cccccc"
        x:140
        y:50

        Text {
            anchors.fill: third
            anchors.right: parent.right
            anchors.rightMargin: 4

            id:third_item
            font.pixelSize: 15
            text: qsTr("ب")

        }

        Timer{
        id:message_timer
        interval: 1500
        onTriggered: message_finished()
        function message_finished(){
        if(answer1===1 && answer2===1 && answer3===1){
            all_letter.visible=false
            first.visible=false
            second.visible=false
            third.visible=false
            mm1.visible=true
            mm2.visible=true
            sound.play()

        }

        }
        running: false
        }
        MouseArea{
        anchors.fill:third
        hoverEnabled: true
        onPressed: third.opacity=0.5
        onReleased: third.opacity=1
        onClicked: {
            if(answer1===1 && answer2===1 && answer3===0){
            letter3_anime_x.start()
            letter3_anime_y.start()
                answer3=1
                third_item.color="black"
                message_timer.start()
            }
            else{
                third_item.color="red"
            }
        }
        }

        NumberAnimation on x{
        id:letter3_anime_x
        target: third
        properties: "x"
        to:70
        duration: 1000
        running: false
        }
        NumberAnimation on y{
        id:letter3_anime_y
        target: third
        properties: "y"
        to:128
        duration: 1000
        running: false
        }
        }
        /////////////////////////random letter///////////////////////////////////
        Rectangle{
        id:rand1
        width: 20
        height: 25
        radius: 5
        border.color: "#cccccc"
        x:100
        y:50

        Text {
            anchors.fill: rand1
            anchors.right: parent.right
            anchors.rightMargin: 4
            id:rand1_txt

            font.pixelSize: 15
            text: qsTr("م")

        }
        MouseArea{
        anchors.fill:rand1
        hoverEnabled: true
        onPressed: rand1.opacity=0.5
        onReleased: rand1.opacity=1
        onClicked: rand1_txt.color="red"
        }

        }
        Rectangle{
        id:rand2
        width: 20
        height: 25
        radius: 5
        border.color: "#cccccc"
        x:180
        y:50

        Text {
            anchors.fill: rand2
            anchors.top: rand2.top
            anchors.topMargin: 4
            anchors.right: rand2.right
            anchors.rightMargin: 8
            id:rand2_txt

            font.pixelSize: 15
            text: qsTr("أ")

        }
        MouseArea{
        anchors.fill:rand2
        hoverEnabled: true
        onPressed: rand2.opacity=0.5
        onReleased: rand2.opacity=1
        onClicked: rand2_txt.color="red"
        }

        }
        Rectangle{
        id:rand3
        width: 20
        height: 25
        radius: 5
        border.color: "#cccccc"
        x:220
        y:50

        Text {
            anchors.fill: rand3
            anchors.top: rand3.top
            anchors.topMargin: 1
            anchors.right: rand3.right
            anchors.rightMargin: 1
            id:rand3_txt

            font.pixelSize: 15
            text: qsTr("س")

        }
        MouseArea{
        anchors.fill:rand3
        hoverEnabled: true
        onPressed: rand3.opacity=0.5
        onReleased: rand3.opacity=1
        onClicked: rand3_txt.color="red"
        }

        }
        Rectangle{
        id:rand4
        width: 20
        height: 25
        radius: 5
        border.color: "#cccccc"
        x:260
        y:50

        Text {
            anchors.fill: rand4
            anchors.top: rand4.top
            anchors.topMargin: 1
            anchors.right: rand4.right
            anchors.rightMargin: 1
            id:rand4_txt

            font.pixelSize: 15
            text: qsTr("ض")

        }
        MouseArea{
        anchors.fill:rand4
        hoverEnabled: true
        onPressed: rand4.opacity=0.5
        onReleased: rand4.opacity=1
        onClicked: rand4_txt.color="red"
        }

        }
        ////////////////////////////end random letter //////////////////////////////
        Rectangle{
        id:mm1
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 20
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
            text: qsTr("Well Done,All letters in their right place")
        }
        }
        Rectangle{
        id:mm2
        anchors.bottom: parent.bottom
        anchors.bottomMargin:60
        anchors.left: parent.left
        anchors.leftMargin: 130
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
            text: qsTr("كلب")
        }
        }
        Rectangle{
         id:question
         width: 280
         height: 30
         radius: 10
         anchors.top: parent.top
         anchors.topMargin: 10
         anchors.left: parent.left
         anchors.leftMargin: 60
         color: "#add8e6"
         Text {
             anchors.top: parent.top
             anchors.topMargin: 5
             anchors.fill: parent
             id: question_text
             text: qsTr(" (Arrange the right letter) رتب الحروف فى مكانها المناسب ")
         }

        }

        }

}
