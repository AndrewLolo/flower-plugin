var cordova = require('cordova');

function receiveInfo(flowerName, interval) {
    cordova.exec(onSuccess, onError, 'InfoReceiver', 'addNotification', [flowerName, interval]);
}

function onError() {alert('error');}
function onSuccess(result) {alert(result);}

module.exports = receiveInfo;