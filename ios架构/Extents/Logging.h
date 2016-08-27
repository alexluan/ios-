//
//  Logging.h
//  ios架构
//
//  Created by 栾有数 on 16/7/27.
//  Copyright © 2016年 栾有数. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Aspects.h"

#define GLLoggingPageImpression @"GLLoggingPageImpression"
#define GLLoggingTrackedEvents @"GLLoggingTrackedEvents"
#define GLLoggingEventName @"GLLoggingEventName"
#define GLLoggingEventSelectorName @"GLLoggingEventSelectorName"
#define GLLoggingEventHandlerBlock @"GLLoggingEventHandlerBlock"

@interface Logging : NSObject

+ (void)logWithEventName:(id)className;


+ (void)setupWithConfiguration:(NSDictionary *)configs;

@end