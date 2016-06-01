//
//  ViewController.m
//  SNCaculator-Demo
//
//  Created by spectator Mr.Z on 16/5/29.
//  Copyright © 2016年 spectator Mr.Z. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Caculator.h"
#import "SNCaculatorMaster.h"
#import "SNLinkBlock.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self steupView];
}

- (void)steupView {
    
    
    UILabel *resultLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 30, self.view.bounds.size.width-20, 100)];
    resultLabel.layer.borderColor = [UIColor blackColor].CGColor;
    resultLabel.layer.borderWidth = 1.0f;
    resultLabel.layer.cornerRadius = 5.0f;
    resultLabel.clipsToBounds = YES;
    [self.view addSubview:resultLabel];
    
    CGFloat buttonHeight = (self.view.bounds.size.width-50)/4;
    
    UIButton *buttonOne = [self createButtonNum:@"1" fontSize:buttonHeight];
    buttonOne.frame = CGRectMake(10, CGRectGetMaxY(resultLabel.frame)+20, buttonHeight, buttonHeight);
    
    
    UIButton *buttonTwo = [self createButtonNum:@"2" fontSize:buttonHeight];
    buttonTwo.frame = CGRectMake(CGRectGetMaxX(buttonOne.frame)+10, CGRectGetMaxY(resultLabel.frame)+20, buttonHeight, buttonHeight);
    
    UIButton *buttonThree = [self createButtonNum:@"3" fontSize:buttonHeight];
    buttonThree.frame = CGRectMake(CGRectGetMaxX(buttonTwo.frame)+10, CGRectGetMaxY(resultLabel.frame)+20, buttonHeight, buttonHeight);
    
    UIButton *buttonAdd = [self createButtonNum:@"+" fontSize:buttonHeight];
    buttonAdd.frame = CGRectMake(CGRectGetMaxX(buttonThree.frame)+10, CGRectGetMaxY(resultLabel.frame)+20, buttonHeight, buttonHeight);
    
    UIButton *buttonFour = [self createButtonNum:@"4" fontSize:buttonHeight];
    buttonFour.frame = CGRectMake(10, CGRectGetMaxY(buttonOne.frame)+20, buttonHeight, buttonHeight);
    
    UIButton *buttonFive = [self createButtonNum:@"5" fontSize:buttonHeight];
    buttonFive.frame =  CGRectMake(CGRectGetMaxX(buttonOne.frame)+10, CGRectGetMaxY(buttonOne.frame)+20, buttonHeight, buttonHeight);
    
    UIButton *buttonSix = [self createButtonNum:@"6" fontSize:buttonHeight];
    buttonSix.frame = CGRectMake(CGRectGetMaxX(buttonFive.frame)+10, CGRectGetMaxY(buttonOne.frame)+20, buttonHeight, buttonHeight);
    
    UIButton *buttonSub = [self createButtonNum:@"-" fontSize:buttonHeight];
    buttonSub.frame = CGRectMake(CGRectGetMaxX(buttonSix.frame)+10, CGRectGetMaxY(buttonOne.frame)+20, buttonHeight, buttonHeight);
    
    UIButton *buttonSeven = [self createButtonNum:@"7" fontSize:buttonHeight];
    buttonSeven.frame = CGRectMake(10, CGRectGetMaxY(buttonFour.frame)+20, buttonHeight, buttonHeight);
    
    UIButton *buttonEight = [self createButtonNum:@"8" fontSize:buttonHeight];
    buttonEight.frame = CGRectMake(CGRectGetMaxX(buttonSeven.frame)+10, CGRectGetMaxY(buttonFour.frame)+20, buttonHeight, buttonHeight);
    
    UIButton *buttonNine = [self createButtonNum:@"9" fontSize:buttonHeight];
    buttonNine.frame = CGRectMake(CGRectGetMaxX(buttonEight.frame)+10, CGRectGetMaxY(buttonFour.frame)+20, buttonHeight, buttonHeight);
    
    UIButton *buttonMulti = [self createButtonNum:@"*" fontSize:buttonHeight];
    buttonMulti.frame = CGRectMake(CGRectGetMaxX(buttonNine.frame)+10, CGRectGetMaxY(buttonFour.frame)+20, buttonHeight, buttonHeight);
    
    UIButton *buttonZero = [self createButtonNum:@"0" fontSize:buttonHeight];
    buttonZero.frame = CGRectMake(10, CGRectGetMaxY(buttonSeven.frame)+20, buttonHeight, buttonHeight);
    
    UIButton *buttonEqual = [self createButtonNum:@"=" fontSize:buttonHeight];
    buttonEqual.frame = CGRectMake(CGRectGetMaxX(buttonZero.frame)+10, CGRectGetMaxY(buttonSeven.frame)+20, buttonHeight*2+10, buttonHeight);
    
    UIButton *buttonDivide = [self createButtonNum:@"/" fontSize:buttonHeight];
    buttonDivide.frame = CGRectMake(CGRectGetMaxX(buttonEqual.frame)+10, CGRectGetMaxY(buttonSeven.frame)+20, buttonHeight, buttonHeight);
    
    [self.view sn_addSubviews:@[buttonOne,buttonTwo,buttonThree,buttonFour,buttonFive,buttonSix,buttonSeven,buttonEight,buttonNine,buttonAdd,buttonSub,buttonMulti,buttonDivide,buttonZero,buttonEqual]];

}


- (UIButton *)createButtonNum:(NSString *)num fontSize:(CGFloat)buttonHeight{
    

    UIButton *buttonTwo = [UIButton buttonWithType:UIButtonTypeCustom]
    .button_title(num,UIControlStateNormal)
    .button_backgroundColor([UIColor blueColor])
    .button_titleFont([UIFont systemFontOfSize:buttonHeight])
    .button_titleColor([UIColor blackColor],UIControlStateNormal);
    
    
    return buttonTwo;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
