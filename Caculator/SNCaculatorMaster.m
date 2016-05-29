//
//  SNCaculatorMaster.m
//  SNCaculator-Demo
//
//  Created by spectator Mr.Z on 16/5/29.
//  Copyright © 2016年 spectator Mr.Z. All rights reserved.
//

#import "SNCaculatorMaster.h"

@implementation SNCaculatorMaster


- (SNCaculatorMaster *(^)(int))add {
    
    return ^(int value) {
        
        self.result += value;
        return self;
    };
}

- (SNCaculatorMaster *(^)(int))sub {
    
    return ^(int value) {
        
        self.result -= value;
        return self;
    };
}

- (SNCaculatorMaster *(^)(int))multi {
    
    return ^(int value) {
        self.result *= value;
        return self;
    };
}

- (SNCaculatorMaster *(^)(int))divide {
    
    return ^(int value) {
        
        self.result /= value;
        
        return self;
    };
}

@end
