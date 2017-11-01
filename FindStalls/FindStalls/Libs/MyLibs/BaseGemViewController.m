//
//  BaseGemViewController.m
//  FindStalls
//
//  Created by Gem on 2017/10/19.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "BaseGemViewController.h"

@interface BaseGemViewController ()

@end

@implementation BaseGemViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
     [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    [[self rdv_tabBarController] setTabBarHidden:YES animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    [[self rdv_tabBarController] setTabBarHidden:NO animated:YES];
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [MyController colorWithHexString:BGColor];
    [self createLeftNvc];
}
#pragma mark - 创建返回
- (void)createLeftNvc{
    UIButton*rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,60,22)];
    [rightButton setImage:[UIImage imageNamed:@"返回-白"]forState:UIControlStateNormal];
    rightButton.imageEdgeInsets = UIEdgeInsetsMake(0, -50, 0, 0);
    
    [rightButton addTarget:self action:@selector(backBtnClick)forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem*rightItem = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
    self.navigationItem.leftBarButtonItem= rightItem;
}
#pragma mark - 返回响应
- (void)backBtnClick{
    [self.navigationController popViewControllerAnimated:YES];
}


@end
