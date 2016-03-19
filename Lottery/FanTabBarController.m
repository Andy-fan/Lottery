//
//  FanTabBarController.m
//  Lottery
//
//  Created by fanmeilong on 16/1/18.
//  Copyright © 2016年 范枚龙. All rights reserved.
//

#import "FanTabBarController.h"
#import "FanTabBar.h"
#import "FanTabBarButton.h"
@interface FanTabBarController ()<FanTabBarDelegate>

@end

@implementation FanTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self.tabBar removeFromSuperview];
    //1 添加自己的tabbar
    FanTabBar *myTabBar = [[FanTabBar alloc]init];
    myTabBar.delegate = self;
    myTabBar.frame = self.tabBar.bounds;
    myTabBar.backgroundColor = [UIColor greenColor];
    [self.tabBar addSubview:myTabBar];
    
    //2 添加对应个数的按钮
    for (int i = 0; i < self.viewControllers.count ; i++) {
        NSString *name = [NSString stringWithFormat:@"TabBar%d",i + 1];
        NSString *selName = [NSString stringWithFormat:@"TabBar%dSel",i + 1];
        [myTabBar addTabButtonWithName:name selName:selName];
    }
}

#pragma mark --- FANTabBar的代理方法
-(void)tabBar:(FanTabBar *)tabBar didSelectButtonFrom:(int)from to:(int)to
{
    //选中最新的控制器
    self.selectedIndex = to;
}

@end
