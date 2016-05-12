var cordova = require('cordova');

function receiveInfo(flowerName) {
    cordova.exec(onSuccess, onError, 'InfoReceiver', 'receive', [flowerName]);
}

function onError() {alert('error');}
function onSuccess() {alert('success');}

module.exports = receiveInfo;