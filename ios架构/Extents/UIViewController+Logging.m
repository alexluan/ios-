//
//  UIViewController+Logging.m
//  ios架构
//
//  Created by 栾有数 on 16/7/27.
//  Copyright © 2016年 栾有数. All rights reserved.
//

#import "UIViewController+Logging.h"

@implementation UIViewController (Logging)
+ (void)load
{
    [UIViewController aspect_hookSelector:@selector(viewDidAppear:)
                              withOptions:AspectPositionAfter
                               usingBlock:^(id<AspectInfo> aspectInfo) {
                                   NSString *className = NSStringFromClass([[aspectInfo instance] class]);
                                   [Logging logWithEventName:className];
                               } error:NULL];
}
@end
