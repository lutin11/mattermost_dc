import QtQuick 2.4
import Ubuntu.Components 1.2
import Ubuntu.Components.Popups 1.0

Dialog {
    id: qrcodedialog
    title: ""
    text: ""

    Button {
        text: i18n.tr("Close")
        onClicked: PopupUtils.close(qrcodedialog)
    }
}

