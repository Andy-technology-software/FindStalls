//
//  MyAccountViewController.m
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "MyAccountViewController.h"

#import "MyAccountModel.h"

#import "MyAccountTableViewCell.h"

#import "WithdrawViewController.h"

#import "AccountRecordViewController.h"
@interface MyAccountViewController ()<UITableViewDataSource,UITableViewDelegate,MyAccountTableViewCellDelegate>{
    UITableView* _tableView;
}
@property(nonatomic,strong)NSMutableArray* dataSourceArr;

@end

@implementation MyAccountViewController

#pragma mark - 提现代理方法
- (void)sendBackWithDraw {
    NSLog(@"提现");
    WithdrawViewController* vc = [[WithdrawViewController alloc] init];
    vc.title = @"账户提现";
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
    
    [self createTableView];
    
    [self makeData];
    
    [self makeNavBtn];
    
}

- (void)makeNavBtn {
    UIButton*rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,60,60)];
    [rightButton setTitle:@"账户记录" forState:UIControlStateNormal];
    [rightButton setTitleColor:[MyController colorWithHexString:@"aaaaaa"] forState:UIControlStateNormal];
    rightButton.titleLabel.font = [UIFont systemFontOfSize:14];
    
    
    [rightButton addTarget:self action:@selector(sendGoodsBtnClick)forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem*rightItem = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
    rightItem.tintColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem= rightItem;
}

- (void)sendGoodsBtnClick {
    AccountRecordViewController* vc = [[AccountRecordViewController alloc] init];
    vc.title = @"账户记录";
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (void)makeData {
    self.dataSourceArr = [[NSMutableArray alloc] init];
    
    MyAccountModel* model1 = [[MyAccountModel alloc] init];
    model1._money = @"100.0";
    [self.dataSourceArr addObject:model1];
    
    [_tableView reloadData];
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
    return self.dataSourceArr.count;
}

#pragma mark - 自定义tableView
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MyAccountTableViewCell* cell0 = [[MyAccountTableViewCell alloc] init];
    MyAccountModel *model = nil;
    cell0.MyAccountTableViewCellDelegate = self;
    model = self.dataSourceArr[indexPath.section];
    cell0.selectionStyle = UITableViewCellSelectionStyleNone;
    [cell0 configCellWithModel:model];
    return cell0;
}

#pragma mark - tableView行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    MyAccountModel *model = nil;
    if (indexPath.row < self.dataSourceArr.count) {
        model = [self.dataSourceArr objectAtIndex:indexPath.row];
    }
    
    return [MyAccountTableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
        MyAccountTableViewCell *cell = (MyAccountTableViewCell *)sourceCell;
        [cell configCellWithModel:model];
    }];
}

#pragma mark - 点cell
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
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
