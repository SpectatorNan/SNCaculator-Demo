//
//  NSObject+Caculator.h
//  SNCaculator-Demo
//
//  Created by spectator Mr.Z on 16/5/29.
//  Copyright © 2016年 spectator Mr.Z. All rights reserved.
//

#import <Foundation/Foundation.h>


@class SNCaculatorMaster;
@interface NSObject (Caculator)



+ (int)makeCaculators:(void(^)(SNCaculatorMaster *maker))caculatorMaker;

@end
