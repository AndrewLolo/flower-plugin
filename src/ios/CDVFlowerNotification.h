#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface CDVFlowerNotification : CDVPlugin

- (void)addNotification:(CDVInvokedUrlCommand*)command;

@end
