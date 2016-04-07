//
//  FanTabBar.h
//  Lottery
//
//  Created by fanmeilong on 16/1/18.
//  Copyright © 2016年 范枚龙. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FanTabBar;
@protocol FanTabBarDelegate <NSObject>

@optional
-(void)tabBar:(FanTabBar *)tabBar didSelectButtonFrom:(NSInteger)from to:(NSInteger)to;
@end

@interface FanTabBar : UIView
@property (weak,nonatomic)  id<FanTabBarDelegate>  delegate;
/**
 *  用来添加一个内部的按钮
 *
 *  @param name    按钮图片
 *  @param selName 按钮选择时的图片
 */
-(void)addTabButtonWithName:(NSString *)name selName:(NSString *)selName;
@end
