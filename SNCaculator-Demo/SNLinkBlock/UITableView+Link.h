//
//  UITableView+Link.h
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Link)
/**
 *  设置 dataSource
 */
@property (nonatomic, copy, readonly) UITableView *(^table_dataSource)(id obj);
/**
 *  设置 delegate
 */
@property (nonatomic, copy, readonly) UITableView *(^table_delegate)(id obj);
/**
 *  设置 separatorStyle
 */
@property (nonatomic, copy, readonly) UITableView *(^table_separatorStyle)(UITableViewCellSeparatorStyle style);
/**
 *  设置 backgroundColor
 */
@property (nonatomic, copy, readonly) UITableView *(^table_backgroundColor)(UIColor *color);

@end
