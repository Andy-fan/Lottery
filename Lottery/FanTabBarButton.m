//
//  FanTabBarButton.m
//  Lottery
//
//  Created by fanmeilong on 16/1/18.
//  Copyright © 2016年 范枚龙. All rights reserved.
//

#import "FanTabBarButton.h"

@implementation FanTabBarButton

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
       //Initialization code
    }
    return self;
}

/**
 *  只要覆盖了这个方法，按钮就不存在高亮状态
 */
-(void)setHighlighted:(BOOL)highlighted
{
    
}



@end
