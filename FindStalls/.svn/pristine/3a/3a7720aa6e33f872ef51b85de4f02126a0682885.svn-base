//
//  RegistViewController.m
//  FindStalls
//
//  Created by lingnet on 2017/10/19.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "RegistViewController.h"

#import "RegistModel.h"

#import "RegistTableViewCell.h"

#import "RegistTypeViewController.h"
@interface RegistViewController ()<UITableViewDataSource,UITableViewDelegate,RegistTableViewCellDelegate>{
    UITableView* _tableView;
}
@property(nonatomic,strong)NSMutableArray* dataSourceArr0;

@end

@implementation RegistViewController

- (void)sendBackTel:(NSString *)tel {
    
}

- (void)sendBackCode:(NSString *)code {
    
}

- (void)sendBackPwd:(NSString *)pwd {
    
}

- (void)sendBackRegist {
    RegistTypeViewController* vc = [[RegistTypeViewController alloc] init];
    vc.title = @"注册";
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
    
    self.title = @"注册";
    
    [self makeData];
    
    [self createTableView];
}

- (void)makeData {
    self.dataSourceArr0 = [[NSMutableArray alloc] init];
    
    RegistModel* model = [[RegistModel alloc] init];
    model._code = @"";
    model._pwd = @"";
    model._tel = @"";
    [self.dataSourceArr0 addObject:model];
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
    RegistTableViewCell *celll = [[RegistTableViewCell alloc] init];
    celll.selectionStyle = UITableViewCellSelectionStyleNone;
    celll.RegistTableViewCellDelegate = self;
    RegistModel* model = self.dataSourceArr0[indexPath.row];
    [celll configCellWithModel:model];
    return celll;
}

#pragma mark - tableView行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    RegistModel *model = nil;
    if (indexPath.row < self.dataSourceArr0.count) {
        model = [self.dataSourceArr0 objectAtIndex:indexPath.row];
    }
    
    return [RegistTableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
        RegistTableViewCell *cell = (RegistTableViewCell *)sourceCell;
        [cell configCellWithModel:model];
    }];
    
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
