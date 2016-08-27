//
//  UIAlertView+Block.m
//  ios架构
//
//  Created by 栾有数 on 16/7/19.
//  Copyright © 2016年 栾有数. All rights reserved.
//

#import "UIAlertView+Block.h"
#import <objc/runtime.h>

static const char alertKey;

@implementation UIAlertView (Block)

- (void)showWithBlock:(successBlock)block
{
    if (block)
    {
        objc_setAssociatedObject(self, &alertKey, block, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        self.delegate = self;
    }
    
    [self show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    successBlock block = objc_getAssociatedObject(self, &alertKey);
    
    block(buttonIndex);
}
@end
