//
//  FanNavigationController.m
//  Lottery
//
//  Created by fanmeilong on 16/1/18.
//  Copyright © 2016年 范枚龙. All rights reserved.
//

#import "FanNavigationController.h"

@implementation FanNavigationController

+(void)initialize
{
    //1 设置导航栏主题
    UINavigationBar *navBar = [UINavigationBar appearance];
    
    //设置背景图片
    NSString *bgName = nil;
    if (iOS7) { //至少是iOS 7.0
        bgName = @"NavBar64";
        navBar.tintColor = [UIColor whiteColor];
    }else{  //非iOS7
        bgName = @"NavBar";
    }
    [navBar setBackgroundImage:[UIImage imageNamed:bgName] forBarMetrics:UIBarMetricsDefault];
    //设置标题文字颜色
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:16];
    [navBar setTitleTextAttributes:attrs];
    
    //2 设置BarButtonItem的主题
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    //设置文字颜色
    NSMutableDictionary *itemAttrs = [NSMutableDictionary dictionary];
    itemAttrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
    itemAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:itemAttrs forState:UIControlStateNormal];
    
    //设置返回按钮背景
    if (!iOS7) { //至少是iOS7
        //设置按钮背景
        [item setBackgroundImage:[UIImage imageNamed:@"NavButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        [item setBackgroundImage:[UIImage imageNamed:@"NavButtonPressed"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
        [item setBackButtonBackgroundImage:[UIImage imageNamed:@"NavBackButton"] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
        [item setBackButtonBackgroundImage:[UIImage imageNamed:@"NavBackButtonPressed"] forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    }
    
}
/**
 *  重写这个方法，能拦截所有的push操作
 */
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    viewController.hidesBottomBarWhenPushed =  YES;
    [super pushViewController:viewController animated:animated];
}


@end
