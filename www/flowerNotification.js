var cordova = require('cordova');

function addNotification(flowerName, interval) {
    cordova.exec(onSuccess, onError, 'FlowerNotification', 'addNotification', [flowerName, interval]);
}

function onError() {/**/}
function onSuccess() {/**/}

module.exports = addNotification;