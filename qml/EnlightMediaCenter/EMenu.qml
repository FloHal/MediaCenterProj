import QtQuick 2.0

Rectangle {
    width: 150
    height: parent.height + 4

    color: "#44888888"
    border.color: "#66AAAAAA"

    EButton {
        id: videoButton
        objectName: "videoButton"
        x: 10
        y: 10
        etext: "Video"
    }

    EButton {
        id: musicButton
        objectName: "musicButton"
        x: 10
        y: 60
        etext: "Musique"
    }

    EButton {
        id: imageButton
        objectName: "imageButton"
        x: 10
        y: 110
        etext: "Image"
    }

    EButton {
        id: settingsButton
        objectName: "settingsButton"
        x: 10
        y: 160
        etext: "Parametres"
    }

    EButton {
        x: 10
        y: 210
        id: quitButton
        objectName: "quitButton"
        etext: "Quitter"
    }
}
