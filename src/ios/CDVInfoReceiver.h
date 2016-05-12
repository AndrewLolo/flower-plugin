#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface CDVInfoReceiver (UILocalNotification) : CDVPlugin

- (void)receive:(CDVInvokedUrlCommand*)command;
- (void)addNotification:(CDVInvokedUrlCommand*)command;

@end
