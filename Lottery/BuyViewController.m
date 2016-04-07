//
//  BuyViewController.m
//  Lottery
//
//  Created by fanmeilong on 16/3/19.
//  Copyright © 2016年 范枚龙. All rights reserved.
//

#import "BuyViewController.h"

@interface BuyViewController ()
- (IBAction)titleClick:(UIButton *)sender;

@end

@implementation BuyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    self.edgesForExtendedLayout 
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)titleClick:(UIButton *)sender {
    //1.按钮旋转
    [UIView animateWithDuration:0.5 animations:^{
    sender.imageView.transform = CGAffineTransformMakeRotation(M_PI);
    }];
    
    //2.添加UIView
//    UIView *temp = [[UIView alloc]init];
//    temp.frame = CGRectMake(10, 10, 100, 30);
//    temp.backgroundColor
    //
    
}
@end
