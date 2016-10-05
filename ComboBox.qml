import QtQuick 2.6
import QtQuick.Controls 2.0

import "./"

ComboBox {
    id: control

    font.pointSize: palette.fontSize

    delegate: ItemDelegate {
        width: control.width
        text: modelData
        highlighted: control.highlightedIndex === index
    }

    background: Rectangle {
        implicitWidth: 200
        implicitHeight: palette.controlBaseSize
        color: control.enabled ? palette.sunkenColor : palette.disabledColor
        border.color: control.focus ? palette.highlightColor : "transparent"
    }

    contentItem: Text {
        text: control.displayText
        verticalAlignment: Text.AlignVCenter
        font: control.font
        color: palette.textColor
    }
}
