var cordova = require('cordova');

function receiveInfo(flowerName) {
    cordova.exec(onSuccess, onError, 'InfoReceiver', 'addNotification', [flowerName]);
}

function onError() {alert('error');}
function onSuccess() {alert('success');}

module.exports = receiveInfo;