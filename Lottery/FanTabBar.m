//
//  FanTabBar.m
//  Lottery
//
//  Created by fanmeilong on 16/1/18.
//  Copyright © 2016年 范枚龙. All rights reserved.
//

#import "FanTabBar.h"
#import "FanTabBarButton.h"

@interface FanTabBar()
/**
 *  记录当前选中的按钮
 */
@property (weak,nonatomic)  FanTabBarButton  *selectedButton;
@end

@implementation FanTabBar

-(void)addTabButtonWithName:(NSString *)name selName:(NSString *)selName
{
    //创建按钮
    FanTabBarButton *button = [FanTabBarButton buttonWithType:UIButtonTypeCustom];
    
    //设置图片
    [button setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:selName] forState:UIControlStateSelected];
    //添加
    [self addSubview:button];
    
#warning UIControlEventTouchDown ：手指一按下去就会触摸这个事件
    //监听
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchDown];
    //默认选中第0个按钮
    if (self.subviews.count == 1) {
        [self buttonClick:button];
    }
}

/**
 *  监听按钮点击
 */
-(void)buttonClick:(FanTabBarButton *)button
{
    //0 通知代理
    if ([self.delegate respondsToSelector:@selector(tabBar:didSelectButtonFrom:to:)]) {
        [self.delegate tabBar:self didSelectButtonFrom:self.selectedButton.tag to:button.tag];
    }
    
    //1 让当前选中的按钮取消选中
    self.selectedButton.selected = NO;
    //2 让新点击的按钮选中
    button.selected = YES;
    // 3 新点击的按钮就成为了“当前选中的按钮”
    self.selectedButton = button;
    
}


-(void)layoutSubviews
{
    [super layoutSubviews];
    
    NSInteger count = self.subviews.count  ;
    for (int i = 0; i<count; i++) {
        FanTabBarButton *button = self.subviews[i];
        button.tag = i;
        
        //设置frame
        CGFloat buttonY = 0;
        CGFloat buttonW = self.frame.size.width / count;
        CGFloat buttonH = self.frame.size.height;
        CGFloat buttonX = i * buttonW;
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
    }
}


@end
