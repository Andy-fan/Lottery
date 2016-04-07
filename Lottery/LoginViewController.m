//
//  LoginViewController.m
//  Lottery
//
//  Created by fanmeilong on 16/3/31.
//  Copyright © 2016年 范枚龙. All rights reserved.
//

#import "LoginViewController.h"
#import "UIImage+Extension.h"
#import "SettingViewController.h"
@interface LoginViewController()
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
- (IBAction)setting;

@end

@implementation LoginViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    UIImage *normal = [UIImage resizableImage:@"RedButton"];
    UIImage *high = [UIImage resizableImage:@"RedButtonPressed"];
    
//   normal =  [normal stretchableImageWithLeftCapWidth:normal.size.width*0.5 topCapHeight:normal.size.height*0.5];
//   high = [high stretchableImageWithLeftCapWidth:high.size.width*0.5 topCapHeight:high.size.height*0.5];
    //一共三种方法
//    [normal resizableImageWithCapInsets:UIEdgeInsetsMake(<#CGFloat top#>, <#CGFloat left#>, <#CGFloat bottom#>, <#CGFloat right#>)]
//    [normal resizableImageWithCapInsets:<#(UIEdgeInsets)#> resizingMode:<#(UIImageResizingMode)#>];
    
    [self.loginBtn setBackgroundImage:normal forState:UIControlStateNormal];
    [self.loginBtn setBackgroundImage:high forState:UIControlStateHighlighted];
    
}

- (IBAction)setting {
    SettingViewController *settingVC = [[SettingViewController alloc]init];
    [self.navigationController pushViewController:settingVC animated:YES];
}
@end
