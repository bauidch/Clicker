

import QtQuick 2.0
import Sailfish.Silica 1.0
import "script.js" as Script

Page {
    id: page


    SilicaFlickable {
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("About")
                onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
            }
        }


        contentHeight: column.height

        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Clicker")
            }
            Label {
                x: Theme.paddingLarge
                id:txt
                textFormat: Text.RichTex
                text: qsTr("<h2>Hello</h2>")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Click Me")
                onClicked: {
                            if (Script.count>=100)
                                txt.text= qsTr("<h2>Win!!!</h2>")
                            else
                                txt.text = Script.jsTest();
                        }
            }
        }
    }
}


