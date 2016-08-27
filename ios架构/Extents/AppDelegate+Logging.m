//
//  AppDelegate+Logging.m
//  ios架构
//
//  Created by 栾有数 on 16/7/27.
//  Copyright © 2016年 栾有数. All rights reserved.
//

#import "AppDelegate+Logging.h"

@implementation AppDelegate (Logging)
- (void)setupLogging
{
    NSDictionary *config = @{
                             @"MainViewController": @{
                                     GLLoggingPageImpression: @"page imp - main page",
                                     GLLoggingTrackedEvents: @[
                                             @{
                                                 GLLoggingEventName: @"button one clicked",
                                                 GLLoggingEventSelectorName: @"buttonOneClicked:",
                                                 GLLoggingEventHandlerBlock: ^(id<AspectInfo> aspectInfo) {
                                                     NSLog(@"button one clicked");
                                                 },
                                                 },
                                             @{
                                                 GLLoggingEventName: @"button two clicked",
                                                 GLLoggingEventSelectorName: @"buttonTwoClicked:",
                                                 GLLoggingEventHandlerBlock: ^(id<AspectInfo> aspectInfo) {
                                                     NSLog(@"button two clicked");
                                                 },
                                                 },
                                             ],
                                     },
                             
                             @"DetailViewController": @{
                                     GLLoggingPageImpression: @"page imp - detail page",
                                     }
                             };
    
    [Logging setupWithConfiguration:config];
}@end
