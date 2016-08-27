//
//  UITableViewCell+ALConfigure.h
//  ios架构
//
//  Created by 栾有数 on 16/7/17.
//  Copyright © 2016年 栾有数. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (ALConfigure)
/**
 *  从nib文件中根据重用标识符注册UITableViewCell
 */
+ (void)alex_registerTable:(UITableView *)table
            nibIdentifier:(NSString *)identifier;

/**
 *  从class中根据重用标识符注册UITableViewCell
 */
+ (void)alex_registerTable:(UITableView *)table
          classIdentifier:(NSString *)identifier;

#pragma mark --
#pragma mark - Rewrite these func in SubClass !
/**
 *  根据model配置UITableViewCell，设置UITableViewCell内容
 */
- (void)alex_configure:(UITableViewCell *)cell
                model:(id)model
            indexPath:(NSIndexPath *)indexPath;

///**
// *  根据viewModel配置UITableViewCell，设置UITableViewCell内容
// */
//- (void)alex_configure:(UITableViewCell *)cell
//            viewModel:(id<SMKViewModelProtocol>)viewModel
//            indexPath:(NSIndexPath *)indexPath;

/**
 *  获取自定义对象的cell高度 (已集成UITableView+FDTemplateLayoutCell，现在创建的cell自动计算高度)
 */
+ (CGFloat)alex_getCellHeightWithModel:(id)model
                            indexPath:(NSIndexPath *)indexPath ;

@end
