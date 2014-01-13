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
            evideoview.state = "hover"
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
                PropertyChanges { target: emenu; x: -152 }
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
        width: parent.width - emenu.width - emenu.x - 20
        height: parent.height - 20
        x: emenu.width + 10
        y: 10
        //focus:true
        state:"defaut"

        /*Keys.onPressed: {
         if(event.key == Qt.Key_V)
         {
             if(evideoview.state == "hover")
                evideoview.state = "defaut"
             else
                evideoview.state = "hover"
             event.accepted = true;
         }
        }*/

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


}
