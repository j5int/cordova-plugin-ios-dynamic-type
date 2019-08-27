/********* DynamicType.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface DynamicType : CDVPlugin {
  // Member variables go here.
}

- (void)get:(CDVInvokedUrlCommand*)command;
// - (void)onContentSizeChange;
@end

@implementation DynamicType

// - (void)onContentSizeChange
// {
//     printf("test");
// }
//
// - (void)pluginInitialize
// {
//     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onContentSizeChange) name:UIContentSizeCategoryDidChangeNotification object:nil];
//
// }

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
