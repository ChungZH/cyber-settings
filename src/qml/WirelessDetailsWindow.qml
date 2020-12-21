import QtQuick 2.4
import QtQuick.Window 2.3
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import MeuiKit 1.0 as Meui

Window {
    id: control
    title: model.itemUniqueName

    width: detailsLayout.implicitWidth + Meui.Units.largeSpacing * 4
    height: detailsLayout.implicitHeight + Meui.Units.largeSpacing * 4
    minimumWidth: width
    minimumHeight: height
    maximumHeight: height
    maximumWidth: width

    flags: Qt.Dialog
    modality: Qt.WindowModal

    signal forgetBtnClicked()

    Rectangle {
        anchors.fill: parent
        color: Meui.Theme.backgroundColor
    }

    ColumnLayout {
        id: detailsLayout
        anchors.fill: parent
        anchors.margins: Meui.Units.largeSpacing

        GridLayout {
            columns: 2
            columnSpacing: Meui.Units.largeSpacing * 2

            Label {
                font.bold: true
                text: qsTr("Security")
                Layout.alignment: Qt.AlignRight
            }

            Label {
                id: securityLabel
                text: model.securityTypeString
                color: Meui.Theme.disabledTextColor
            }

            Label {
                font.bold: true
                text: qsTr("IPv4 Address")
                Layout.alignment: Qt.AlignRight
            }

            Label {
                id: ipv4AddressLabel
                // text: model.ipV4Address
                color: Meui.Theme.disabledTextColor
            }

            Label {
                font.bold: true
                text: qsTr("IPv6 Address")
                Layout.alignment: Qt.AlignRight
            }

            Label {
                id: ipV6AddressLabel
                // text: model.ipV6Address
                color: Meui.Theme.disabledTextColor
            }

            Label {
                font.bold: true
                text: qsTr("MAC Address")
                Layout.alignment: Qt.AlignRight
            }

            Label {
                id: macAddressLabel
                // text: model.macAddress
                color: Meui.Theme.disabledTextColor
            }

            Label {
                font.bold: true
                text: qsTr("Gateway")
                Layout.alignment: Qt.AlignRight
            }

            Label {
                id: routerLabel
                // text: model.gateway
                color: Meui.Theme.disabledTextColor
            }

            Label {
                font.bold: true
                text: qsTr("DNS")
                Layout.alignment: Qt.AlignRight
            }

            Label {
                id: dnsLabel
                // text: model.nameServer
                color: Meui.Theme.disabledTextColor
            }
        }

        Button {
            text: qsTr("Forget This Network")
            Layout.alignment: Qt.AlignHCenter
            onClicked: control.forgetBtnClicked()
        }
    }
}
