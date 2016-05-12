#import <Foundation/Foundation.h>
#import <UIApplication.h>
#import <Cordova/CDVPlugin.h>

@interface CDVInfoReceiver : CDVPlugin

- (void)receive:(CDVInvokedUrlCommand*)command;

@end
