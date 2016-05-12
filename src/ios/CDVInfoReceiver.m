#import "CDVInfoReceiver.h"

@implementation CDVInfoReceiver


- (void)addNotification:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* notificationBody = [command.arguments objectAtIndex:0];
    NSNumber* notificationInterval = [command.arguments objectAtIndex:1];


    if (notificationBody != nil && [notificationBody length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }



    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end