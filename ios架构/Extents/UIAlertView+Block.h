//
//  UIAlertView+Block.h
//  ios架构
//
//  Created by 栾有数 on 16/7/19.
//  Copyright © 2016年 栾有数. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^successBlock)(NSInteger buttonIndex);

@interface UIAlertView (Block)<UIAlertViewDelegate>

- (void)showWithBlock:(successBlock)block;

@end
