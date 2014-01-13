import QtQuick 2.0
import QtMultimedia 5.0

Rectangle {
    id: evideo
    color: "#44888888"
    border.color: "#66AAAAAA"

    property alias text: texttitle.text
    property alias source: video.source

    signal qmlClicked()

    Text
    {
        id: texttitle
        color: "white"
        x: 5
        y: 5
        text: "No Video"
    }

    EButton
    {
        id: openMovie
        etext: "Open a video"
        x: parent.width - 130
        y : 10
        MouseArea
        {
            anchors.fill: parent
            onClicked:
                evideo.qmlClicked()
        }
    }

    Video
    {
        id:video
        objectName: "video"
        width: parent.width - 20
        height: parent.height - 60
        x: 10
        y: 50
        //source: "/home/flo/Téléchargements/big_buck_bunny_480p_surround-fix.avi"
        source: ""

        MouseArea
        {
            id: videoMA
            anchors.fill: parent
            onClicked:
                video.playbackState == MediaPlayer.PlayingState ? video.pause() : video.play()
        }
    }
}
