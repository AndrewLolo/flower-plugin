#import "CDVInfoReceiver.h"

@implementation CDVInfoReceiver


- (void)addNotification:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* notificationBody = [command.arguments objectAtIndex:0];
    id num = [command argumentAtIndex:1];

    if (notificationBody != nil && [notificationBody length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    UILocalNotification *notification = [[UILocalNotification alloc] init];
    notification.timeZone  = [NSTimeZone systemTimeZone];
    notification.fireDate  = [[NSDate date] dateByAddingTimeInterval:num];
    notification.alertAction = @"Ok";
    notification.alertBody = notificationBody;
    notification.soundName = UILocalNotificationDefaultSoundName;
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end