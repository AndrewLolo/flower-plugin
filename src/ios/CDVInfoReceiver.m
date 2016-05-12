#import "CDVInfoReceiver.h"

@implementation CDVInfoReceiver


- (void)addNotification:(CDVInvokedUrlCommand*)command
{
    NSString* notificationBody = [command.arguments objectAtIndex:0];
    id num = [command argumentAtIndex:1];

    [self.commandDelegate runInBackground:^{
        UILocalNotification *notification = [[UILocalNotification alloc] init];
        notification.timeZone  = [NSTimeZone systemTimeZone];
        notification.fireDate  = [[NSDate date] dateByAddingTimeInterval:[num floatValue]];
        notification.alertAction = @"Ok";
        notification.alertBody = notificationBody;
        notification.soundName = UILocalNotificationDefaultSoundName;
        [[UIApplication sharedApplication] scheduleLocalNotification:notification];

        [self execCallback:command];
    }]
}

@end