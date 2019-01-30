
 //////////////////////////
 //  from https://wiki.qt.io/Simple_QML_Progress_Bar
/////////////////////////////
import QtQuick 2.4
import Ubuntu.Components 1.3




 
ProgressBar {
    property var webview
 id: progressbar
 
 property int minimum: 0
 property int maximum: 100
 property int value: webview.loadProgress
 property color color: "#0082C9"
     showProgressPercentage: false
  visible: webview ? webview.loading
                       // Workaround for https://bugs.launchpad.net/oxide/+bug/1290821.
                       // Note: this also works with a QtWebKit webview by chance,
                       // because !undefined evaluates to true.
                       && !webview.lastLoadStopped
                     : false
 height: units.dp(2.5)
 clip: true
 
 Rectangle {
 id: border
 anchors.fill: parent

 color: "#000000"
 border.width: 0
 border.color: parent.color
 }
 
 
 Rectangle {
 id: highlight
 property int widthDest: ( ( progressbar.width * ( value- minimum ) ) / ( maximum - minimum ) - 4 )
 width: highlight.widthDest


 
anchors {
 left: parent.left
 top: parent.top
 bottom: parent.bottom
 margins: 0
 }
 color: parent.color
 }
}
