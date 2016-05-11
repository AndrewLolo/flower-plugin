var cordova = require('cordova');
var exec = require('cordova/exec');


function receiveInfo(flowerName) {
    exec(onError, onSuccess, "InfoReceiver", "receive", [flowerName]);
}

function onError() {alert('error');}
function onSuccess() {alert('success');}

module.exports = receiveInfo();