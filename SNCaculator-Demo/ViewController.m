//
//  ViewController.m
//  SNCaculator-Demo
//
//  Created by spectator Mr.Z on 16/5/29.
//  Copyright © 2016年 spectator Mr.Z. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Caculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    int result = [NSObject makeCaculators:^(SNCaculatorMaster *maker) {
        maker.add(2).add(3);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
