//
//  UIButton+Block.h
//  ios架构
//
//  Created by 栾有数 on 16/7/19.
//  Copyright © 2016年 栾有数. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^btnBlock)();

@interface UIButton (Block)

- (void)handelWithBlock:(btnBlock)block;

@end
