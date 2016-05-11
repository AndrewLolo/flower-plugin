#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>

@interface CDVInfoReceiver : CDVPlugin

- (void)receive:(CDVInvokedUrlCommand*)command;

@end
