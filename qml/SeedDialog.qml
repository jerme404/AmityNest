// Copyright (c) 2018, The TurtleCoin Developers
//
// Please see the included LICENSE file for more information.
//

import QtQuick.Window 2.2
import QtQuick 2.7
import QtQuick.Controls 2.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1

Dialog {
    id: dialogSeed
    title: "Private Seed"
    standardButtons: StandardButton.Ok
    width: 900

    property var walletFilename: ""
    property var walletSeed: ""
    property var walletAddress: ""

    Text {
        id: textDescription
        text: qsTrId("str-see-below-seed")
        font.family: "Arial"
        font.pixelSize: 13
    }

    Text {
        id: textDescriptionWalletFilename
        text: qsTrId("str-seed-wallet-file")
        anchors.top: textDescription.bottom
        anchors.topMargin: 25
        anchors.left: textDescription.left
        anchors.leftMargin: 0
        font.family: "Arial"
        font.pixelSize: 13
    }

    Text {
        id: textWalletFilename
        text: walletFilename
        anchors.bottom: textDescriptionWalletFilename.bottom
        anchors.bottomMargin: 0
        anchors.left: textDescriptionWalletFilename.right
        anchors.leftMargin: 20
        font.family: "Arial"
        font.pixelSize: 13
    }

    Text {
        id: textDescriptionAddress
        text: qsTrId("str-seed-address")
        anchors.top: textDescriptionWalletFilename.bottom
        anchors.topMargin: 25
        anchors.left: textDescriptionWalletFilename.left
        anchors.leftMargin: 0
        font.family: "Arial"
        font.pixelSize: 13
    }

    Text {
        id: textAddress
        anchors.top: textDescriptionAddress.bottom
        anchors.topMargin: 10
        anchors.left: textDescriptionAddress.left
        anchors.leftMargin: 0
        text: walletAddress
        leftPadding: 5
        padding: 2
        font.family: "Arial"
        font.pixelSize: 13
        font.bold: true
    }

    Text {
        id: textDescriptionSeed
        text: qsTrId("str-seed-seed")
        anchors.top: textAddress.bottom
        anchors.topMargin: 25
        anchors.left: textAddress.left
        anchors.leftMargin: 0
        font.family: "Arial"
        font.pixelSize: 13
    }

    Text {
        id: textSeed
        anchors.top: textDescriptionSeed.bottom
        anchors.topMargin: 10
        anchors.left: textDescriptionSeed.left
        anchors.leftMargin: 0
        width: 500
        text: walletSeed
        leftPadding: 5
        padding: 2
        font.family: "Arial"
        font.pixelSize: 13
        font.bold: true
        wrapMode: Text.WordWrap
    }

    Button {
        id: buttonCopy
        text: qsTrId("str-seed-copy")
        anchors.top: textSeed.top
        anchors.topMargin: -15
        anchors.left: textSeed.right
        anchors.leftMargin: 80
        height: 30

        contentItem: Text {
            text: buttonCopy.text
            font.pixelSize: 15
            font.family: "Arial"
            font.bold: true
            opacity: enabled ? 1.0 : 0.3
            color: buttonCopy.down ? "#dddddd" : "#ffffff"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }

        background: Rectangle {
            implicitWidth: 140
            height: 30
            opacity: enabled ? 1 : 0.3
            radius: 6
            color: buttonCopy.down ? "#383838" : "#444444"
        }

        onClicked: {
            QmlBridge.clickedButtonCopyKeys();
        }
    }

    onAccepted: {
        walletFilename = "";
        walletSeed = "";
        walletAddress = "";
    }

    function show(filename, mnemonicSeed, address) {
        walletFilename = filename;
        walletSeed = mnemonicSeed;
        walletAddress = address;
        dialogSeed.open();
    }
}
