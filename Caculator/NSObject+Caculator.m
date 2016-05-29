//
//  NSObject+Caculator.m
//  SNCaculator-Demo
//
//  Created by spectator Mr.Z on 16/5/29.
//  Copyright © 2016年 spectator Mr.Z. All rights reserved.
//

#import "NSObject+Caculator.h"
#import "SNCaculatorMaster.h"

@implementation NSObject (Caculator)

+ (int)makeCaculators:(void (^)(SNCaculatorMaster *))caculatorMaker {
    
    SNCaculatorMaster *master = [[SNCaculatorMaster alloc] init];
    
    caculatorMaker(master);
    
    return master.result;
}

@end
