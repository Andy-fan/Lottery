//
//  FanTitleButton.m
//  Lottery
//
//  Created by fanmeilong on 16/3/19.
//  Copyright © 2016年 范枚龙. All rights reserved.
//


#import "FanTitleButton.h"
#import <Availability.h>

@interface FanTitleButton()
@property (strong, nonatomic) UIFont *titleFont;

@end
@implementation FanTitleButton


/**
 *  当一个对象从xib或者storyboard中加载完毕后，就会调用一次 （3后）
 */
-(void)awakeFromNib{
    
    NSLog(@"awakeFromNib ---  ");
//    UIFont *font = [UIFont systemFontOfSize:14];
//    self.titleFont = font;
//    //图标居中
//    self.imageView.contentMode = UIViewContentModeCenter;
}

/**
 *    自定义控件的时候，标准是都要创建这三个方法
 */

//从文件中解析一个对象的时候就会调用这个方法 （1先） 如果代码创建不会调用这个
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        NSLog(@"initWithCoder ---  ");
        [self setup];
    }
    return self;
}

//通过代码创建控件的时候就会调用
-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"initWithFrame ---  ");
        [self setup];
    }
    return self;
}


/**
 *   初始化
 */
-(void)setup
{
    UIFont *font = [UIFont systemFontOfSize:14];
    self.titleFont = font;
    //图标居中
    self.imageView.contentMode = UIViewContentModeCenter;
}

//- (CGRect)backgroundRectForBounds:(CGRect)bounds{
//    return CGRectZero;
//}


//- (CGRect)contentRectForBounds:(CGRect)bounds{
//    return CGRectZero;
//}


/**
 * 控制器内部label的frame
 * contentRect ： 按钮自己的边框  （2.就是为了解决这个顺序）
 */
- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    NSLog(@"titleRectForContentRect ---  ");
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    NSDictionary *attrs = @{NSFontAttributeName : self.titleFont};
    CGFloat titleW;
    if (iOS7) {
        
#ifdef __IPHONE_7_0  //只有Xcode5之后的版本才会编译这段代码
        titleW = [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size.width;
#else   //假如Xcode4勒，iOS7
        titleW = [self.currentTitle sizeWithFont:self.titleFont].width;

#endif
    }else{
        titleW = [self.currentTitle sizeWithFont:self.titleFont].width;
    }
    CGFloat titleH = contentRect.size.height;
    return CGRectMake(titleX, titleY, titleW, titleH);
}

/**
 *  控制器内部imageView的frame
 */
- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    NSLog(@"imageRectForContentRect ---  ");
    CGFloat imageW = 30;
    CGFloat imageX = contentRect.size.width - imageW ;
    CGFloat imageY = 0;
    CGFloat imageH = contentRect.size.height;
    return CGRectMake(imageX, imageY, imageW, imageH);
}

@end
