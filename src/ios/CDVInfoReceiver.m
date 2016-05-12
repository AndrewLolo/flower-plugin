#import "CDVInfoReceiver.h"

@implementation CDVInfoReceiver

- (void)receive:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)addNotification:(CDVInvokedUrlCommand*)command
{
    UILocalNotification *notif = [[UILocalNotification alloc] init];

    notif.timeZone = [NSTimeZone defaultTimeZone];

    notif.fireDate = [[NSDate date] dateByAddingTimeInterval:20.0f];

    notif.alertAction = @"Тыдыщ!";

    notif.alertBody = @"Вот такой вот нотификатор!";

    notif.soundName = UILocalNotificationDefaultSoundName;

    notif.applicationIconBadgeNumber = 1;

    notif.repeatInterval = NSWeekCalendarUnit;

    [[UIApplication sharedApplication] scheduleLocalNotification:notif];

    [notif release];
}

@end