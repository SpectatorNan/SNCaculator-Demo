//
//  SNCaculatorMaster.h
//  SNCaculator-Demo
//
//  Created by spectator Mr.Z on 16/5/29.
//  Copyright © 2016年 spectator Mr.Z. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SNCaculatorMaster : NSObject

@property (nonatomic,assign) int  result;


- (SNCaculatorMaster *(^)(int))add;

- (SNCaculatorMaster *(^)(int))sub;

- (SNCaculatorMaster *(^)(int))multi;

- (SNCaculatorMaster *(^)(int))divide;

@end
