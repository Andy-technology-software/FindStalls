//
//  LoginViewController.m
//  FindStalls
//
//  Created by lingnet on 2017/10/16.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "LoginViewController.h"

#import "LoginModel.h"

#import "LoginTableViewCell.h"

#import "AppDelegate.h"

#import "RegistViewController.h"
@interface LoginViewController ()<UITableViewDataSource,UITableViewDelegate,LoginTableViewCellDelegate>{
    UITableView* _tableView;
}
@property(nonatomic,strong)NSMutableArray* dataSourceArr0;

@end

@implementation LoginViewController

- (void)sendBackRegist {
    RegistViewController* vc = [[RegistViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    [[self rdv_tabBarController] setTabBarHidden:YES animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"登录";
    
    [self createTableView];
}

#pragma mark - 初始化tableView
- (void)createTableView{
    self.automaticallyAdjustsScrollViewInsets = NO;
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, [MyController isIOS7], [MyController getScreenWidth], [MyController getScreenHeight] - [MyController isIOS7]) style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.showsVerticalScrollIndicator = NO;
    [self.view addSubview:_tableView];
}

#pragma mark - tableView行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

#pragma mark - 自定义tableView
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LoginTableViewCell *celll = [[LoginTableViewCell alloc] init];
    celll.selectionStyle = UITableViewCellSelectionStyleNone;
    celll.LoginTableViewCellDelegate = self;
    LoginModel* model = self.dataSourceArr0[indexPath.row];
    [celll configCellWithModel:model];
    return celll;
}

#pragma mark - tableView行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    LoginModel *model = nil;
    if (indexPath.row < self.dataSourceArr0.count) {
        model = [self.dataSourceArr0 objectAtIndex:indexPath.row];
    }
    
    return [LoginTableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
        LoginTableViewCell *cell = (LoginTableViewCell *)sourceCell;
        [cell configCellWithModel:model];
    }];

}

- (void)sendBackPwd:(NSString *)pwd {
    
}

- (void)sendBackName:(NSString *)name {
    
}

- (void)sendBackLogin {
    [(AppDelegate *)[UIApplication sharedApplication].delegate setRootVC];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
