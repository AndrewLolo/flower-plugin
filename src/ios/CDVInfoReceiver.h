#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface CDVInfoReceiver : CDVPlugin

- (void)receive:(CDVInvokedUrlCommand*)command;
- (void)addNotification:(CDVInvokedUrlCommand*)command;

@end
