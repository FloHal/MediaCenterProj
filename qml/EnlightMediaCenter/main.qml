import QtQuick 2.0

Rectangle {
    id:mainView
    width: 700
    height: 450
    focus:true

    Keys.onPressed: {
     if(event.key == Qt.Key_V)
     {
         if(evideoview.state == "hover")
            evideoview.state = "defaut"
         else
         {
            evideoview.state = "hover"
            emusicview.state = "defaut"
             esettingsview.state = "defaut"
             eimageview.state = "defaut"
         }
         event.accepted = true;
     }
     else if(event.key == Qt.Key_M)
     {
         if(emenu.state == "hover")
            emenu.state = "defaut"
         else
            emenu.state = "hover"
         event.accepted = true;
     }
     else if(event.key == Qt.Key_C)
     {
         if(emusicview.state == "hover")
            emusicview.state = "defaut"
         else
         {
            emusicview.state = "hover"
            evideoview.state = "defaut"
             esettingsview.state = "defaut"
             eimageview.state = "defaut"
         }
         event.accepted = true;
     }
     else if(event.key == Qt.Key_I)
     {
         if(eimageview.state == "hover")
            eimageview.state = "defaut"
         else
         {
            eimageview.state = "hover"
            evideoview.state = "defaut"
            emusicview.state = "defaut"
            esettingsview.state = "defaut"
         }
         event.accepted = true;
     }
     else if(event.key == Qt.Key_S)
     {
         if(esettingsview.state == "hover")
            esettingsview.state = "defaut"
         else
         {
            esettingsview.state = "hover"
            evideoview.state = "defaut"
            emusicview.state = "defaut"
            eimageview.state = "defaut"
         }
         event.accepted = true;
     }

    }

    Image
    {
        width: parent.width
        height: parent.height
        source: "Leaves-download-free-wallpaper-for-pc.jpg"
    }

    EMenu
    {
        id:emenu
        //color:"transparent"
        state: "hover"
        //focus: true
        y: - 2


        /*Keys.onPressed: {
         if(event.key == Qt.Key_M)
         {
             if(emenu.state == "hover")
                emenu.state = "defaut"
             else
                emenu.state = "hover"
             event.accepted = true;
         }
        }*/

        states : [
        State {
                name:"hover"; //when: emenuMA.containsMouse == true;
                PropertyChanges { target: emenu; x: -2 }
            },
        State {
                name:"defaut"; //when: emenuMA.containsMouse == false;
                PropertyChanges { target: emenu; x: -162 }
            }
        ]

        transitions: [
            Transition {
                from: "hover"
                to: "defaut"
                PropertyAnimation { target: emenu; properties: "x"; duration: 300; easing.type: Easing.InQuad }
            },
            Transition {
                from: "defaut"
                to: "hover"
                PropertyAnimation { target: emenu; properties: "x"; duration: 1000; easing.type: Easing.OutElastic }
            }
        ]
    }

    EVideoView{
        id:evideoview
        objectName: "evideoview"
        width: parent.width - emenu.width - emenu.x - 10
        height: parent.height + 2
        x: emenu.width + 10
        y: -1
        state:"defaut"

        states : [
        State {
                name:"hover"; //when: emenuMA.containsMouse == true;
                PropertyChanges { target: evideoview; x:  emenu.x + emenu.width + 10 }
            },
        State {
                name:"defaut"; //when: emenuMA.containsMouse == false;
                PropertyChanges { target: evideoview; x: mainView.width + 2 }
            }
        ]

        transitions: [
            Transition {
                from: "hover"
                to: "defaut"
                PropertyAnimation { target: evideoview; properties: "x"; duration: 300; easing.type: Easing.InOutQuad }
            },
            Transition {
                from: "defaut"
                to: "hover"
                PropertyAnimation { target: evideoview; properties: "x"; duration: 800; easing.type: Easing.OutElastic }
            }
        ]

    }

    EMusicView
    {
        id:emusicview
        objectName: "emusicview"
        width: parent.width - emenu.width - emenu.x - 10
        height: parent.height + 2
        x: emenu.width + 10
        y: -1
        //focus:true
        state:"defaut"

        states : [
        State {
                name:"hover"; //when: emenuMA.containsMouse == true;
                PropertyChanges { target: emusicview; x:  emenu.x + emenu.width + 10 }
            },
        State {
                name:"defaut"; //when: emenuMA.containsMouse == false;
                PropertyChanges { target: emusicview; x: mainView.width + 2 }
            }
        ]

        transitions: [
            Transition {
                from: "hover"
                to: "defaut"
                PropertyAnimation { target: emusicview; properties: "x"; duration: 300; easing.type: Easing.InOutQuad }
            },
            Transition {
                from: "defaut"
                to: "hover"
                PropertyAnimation { target: emusicview; properties: "x"; duration: 800; easing.type: Easing.OutElastic }
            }
        ]
    }

    EImageView
    {
        id:eimageview
        objectName: "eimageview"
        width: parent.width - emenu.width - emenu.x - 10
        height: parent.height + 2
        x: emenu.width + 10
        y: -1
        //focus:true
        state:"defaut"

        states : [
        State {
                name:"hover"; //when: emenuMA.containsMouse == true;
                PropertyChanges { target: eimageview; x:  emenu.x + emenu.width + 10 }
            },
        State {
                name:"defaut"; //when: emenuMA.containsMouse == false;
                PropertyChanges { target: eimageview; x: mainView.width + 2 }
            }
        ]

        transitions: [
            Transition {
                from: "hover"
                to: "defaut"
                PropertyAnimation { target: eimageview; properties: "x"; duration: 300; easing.type: Easing.InOutQuad }
            },
            Transition {
                from: "defaut"
                to: "hover"
                PropertyAnimation { target: eimageview; properties: "x"; duration: 800; easing.type: Easing.OutElastic }
            }
        ]
    }

    ESettingsView
    {
        id:esettingsview
        objectName: "esettingsview"
        width: parent.width - emenu.width - emenu.x - 10
        height: parent.height + 2
        x: emenu.width + 10
        y: -1
        state:"defaut"

        states : [
        State {
                name:"hover"; //when: emenuMA.containsMouse == true;
                PropertyChanges { target: esettingsview; x:  emenu.x + emenu.width + 10 }
            },
        State {
                name:"defaut"; //when: emenuMA.containsMouse == false;
                PropertyChanges { target: esettingsview; x: mainView.width + 2 }
            }
        ]

        transitions: [
            Transition {
                from: "hover"
                to: "defaut"
                PropertyAnimation { target: esettingsview; properties: "x"; duration: 300; easing.type: Easing.InOutQuad }
            },
            Transition {
                from: "defaut"
                to: "hover"
                PropertyAnimation { target: esettingsview; properties: "x"; duration: 800; easing.type: Easing.OutElastic }
            }
        ]
    }


}
