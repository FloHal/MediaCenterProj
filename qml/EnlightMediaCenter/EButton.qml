import QtQuick 2.0

Rectangle {
    id : ebutton
    width: 120
    height: 32
    //color:"transparent"
    color: "#44888888"
    border.color: "#66AAAAAA"
    radius: 8
    state: "defaut"

    property alias etext: etext.text

    signal eclicked()

    Text
    {
        id: etext
        text: "Default EButton"
        anchors.centerIn: parent
        color: "white"

    }

    MouseArea
    {
        id: emouseArea
        anchors.fill: parent
        hoverEnabled: true
        onClicked:
            ebutton.eclicked()
    }

    states: [
        State {
        name:"hover"; when: emouseArea.containsMouse == true;
        PropertyChanges { target: ebutton; color: "#66FFFFFF" }
        },
        State{
        name:"defaut"; when: emouseArea.containsMouse == false;
        PropertyChanges { target: ebutton; color: "#44888888" }
        }
    ]

    transitions: [
    Transition {
            from: "hover"
            to: "defaut"
            ColorAnimation { target: ebutton; duration: 200 }
        },
        Transition {
            from: "defaut"
            to: "hover"
            ColorAnimation { target: ebutton; duration: 200 }
        }
    ]
}
