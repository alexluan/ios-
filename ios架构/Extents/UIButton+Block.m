//
//  UIButton+Block.m
//  ios架构
//
//  Created by 栾有数 on 16/7/19.
//  Copyright © 2016年 栾有数. All rights reserved.
//

#import "UIButton+Block.h"
#import <objc/runtime.h>

static const char btnKey;

@implementation UIButton (Block)

- (void)handelWithBlock:(btnBlock)block
{
    if (block)
    {
        objc_setAssociatedObject(self, &btnKey, block, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    [self addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
}

- (void)btnAction
{
    btnBlock block = objc_getAssociatedObject(self, &btnKey);
    block();
}

@end
