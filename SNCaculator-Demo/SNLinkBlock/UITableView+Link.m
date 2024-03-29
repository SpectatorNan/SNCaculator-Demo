//
//  UITableView+Link.m
//  SNLinkBlock
//
//  Created by Spectator on 16/5/29.
//  Copyright © 2016年 Spectator. All rights reserved.
//

#import "UITableView+Link.h"

@implementation UITableView (Link)

- (UITableView *(^)(id))table_delegate {
    
    return ^(id obj) {
        
        self.delegate = obj;
        
        return self;
    };
}

- (UITableView *(^)(id))table_dataSource {
    
    return ^(id obj) {
        self.dataSource = obj;
        
        return self;
    };
}

- (UITableView *(^)(UITableViewCellSeparatorStyle))table_separatorStyle {
    
    return ^(UITableViewCellSeparatorStyle style) {
        self.separatorStyle = style;
        
        return self;
    };
}

- (UITableView *(^)(UIColor *))table_backgroundColor {
    
    return ^(UIColor *color) {
        
        self.backgroundColor = color;
        
        return self;
    };
}

@end
