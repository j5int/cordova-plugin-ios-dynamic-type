/********* DynamicType.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface DynamicType : CDVPlugin
- (void)get:(CDVInvokedUrlCommand*)command;
@end

@implementation DynamicType

//TODO Add an observer to update the app when the preferredContentSizeCategory changes

- (void)get:(CDVInvokedUrlCommand*)command
{
    NSString * sizeCategory = [[UIApplication sharedApplication] preferredContentSizeCategory].stringByStandardizingPath;

    CDVPluginResult* pluginResult = nil;

    if (sizeCategory != nil && [sizeCategory length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:sizeCategory];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
