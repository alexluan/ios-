//
//  AppDelegate+Logging.h
//  ios架构
//
//  Created by 栾有数 on 16/7/27.
//  Copyright © 2016年 栾有数. All rights reserved.
//

#import "AppDelegate.h"
#import <objc/runtime.h>
#import "Aspects.h"
#import "Logging.h"

@interface AppDelegate (Logging)

- (void)setupLogging;

@end
