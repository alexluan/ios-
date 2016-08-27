//
//  UITableViewCell+ALConfigure.m
//  ios架构
//
//  Created by 栾有数 on 16/7/17.
//  Copyright © 2016年 栾有数. All rights reserved.
//

#import "UITableViewCell+ALConfigure.h"

@implementation UITableViewCell (ALConfigure)
/**
 *  从nib文件中根据重用标识符注册UITableViewCell
 */
+ (void)alex_registerTable:(UITableView *)table
             nibIdentifier:(NSString *)identifier{
    [table registerNib:[UINib nibWithNibName:[NSString stringWithFormat:@"%@",[self class]]
                                      bundle:nil]
forCellReuseIdentifier:identifier];
}

/**
 *  从class中根据重用标识符注册UITableViewCell
 */
+ (void)alex_registerTable:(UITableView *)table
           classIdentifier:(NSString *)identifier{
    [table registerClass:[self class] forCellReuseIdentifier:identifier];
}

#pragma mark --
#pragma mark - Rewrite these func in SubClass !
- (void)alex_configure:(UITableViewCell *)cell model:(id)model indexPath:(NSIndexPath *)indexPath
{
    // Rewrite this func in SubClass !
}
//- (void)alex_configure:(UITableViewCell *)cell viewModel:(id<SMKViewModelProtocol>)viewModel indexPath:(NSIndexPath *)indexPath
//{
//    // Rewrite this func in SubClass !
//}

+ (CGFloat)alex_getCellHeightWithModel:(id)model indexPath:(NSIndexPath *)indexPath
{
    // Rewrite this func in SubClass if necessary
    if (!model) {
        return 0.0f ; // if obj is null .
    }
    return 44.0f ; // default cell height
}
@end
