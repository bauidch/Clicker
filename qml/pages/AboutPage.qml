import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: page

   SilicaFlickable {
        id: pageFlickable
        anchors.fill: parent
        contentHeight: column.height

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            PageHeader {
                title: qsTr("About Clicker")
            }
            Label{
                 anchors {
                     horizontalCenter: parent.horizontalCenter
                     margins: Theme.paddingLarge
                    }

                 text: "Clicker"
            }

            Label {
                text: qsTr("Mini Clicker Game")
                anchors {
                      horizontalCenter: parent.horizontalCenter
                }
                font.family: Theme.fontFamilyHeading
                horizontalAlignment: Text.AlignHCenter
            }

                Label {
                    text:qsTr("for SailfishOS")
                    anchors {
                        horizontalCenter: parent.horizontalCenter
                    }
                }
                IconButton {
                 icon.source: "image://theme/icon-m-sailfish"
                 anchors {
                     horizontalCenter: parent.horizontalCenter
                 }
                }

            Label{
                 anchors {
                     horizontalCenter: parent.horizontalCenter
                     margins: Theme.paddingLarge
                    }

                 text: "App Version 0.1"
            }

            Label {
                 font.pixelSize: Theme.fontSizeMedium
                 color: Theme.highlightColor
                 font.family: Theme.fontFamilyHeading
                 text: qsTr("Created by bauidch")
                 anchors {
                     horizontalCenter: parent.horizontalCenter
                 }
            }






}
}
   VerticalScrollDecorator { flickable: pageFlickable }
}





