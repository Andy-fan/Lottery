//
//  SettingViewController.m
//  Lottery
//
//  Created by fanmeilong on 16/4/7.
//  Copyright © 2016年 范枚龙. All rights reserved.
//

#import "SettingViewController.h"

@implementation SettingViewController

-(id)init{
    return [super initWithStyle:UITableViewStyleGrouped];
}

-(id)initWithStyle:(UITableViewStyle)style{
    return [super initWithStyle:UITableViewStyleGrouped];
}


-(void)viewDidLoad{
    [super viewDidLoad];
    self.title = @"设置";
}


#pragma mark --- tableView DataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"setting";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    return cell;
}



#pragma mark --- tablveView Delegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

@end
