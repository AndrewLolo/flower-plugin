var cordova = require('cordova');

function receiveInfo(flowerName) {
    cordova.exec(onError, onSuccess, "InfoReceiver", "receive", [flowerName]);
}

function onError() {alert('error');}
function onSuccess() {alert('success');}

module.exports = receiveInfo;