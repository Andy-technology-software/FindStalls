//
//  MyIntegralViewController.m
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "MyIntegralViewController.h"

#import "MyIntegralModel.h"

#import "MyIntegralTableViewCell.h"

#import "MyCertification0TableViewCell.h"
@interface MyIntegralViewController ()<UITableViewDataSource,UITableViewDelegate>{
    UITableView* _tableView;
}
@property(nonatomic,strong)NSMutableArray* dataSourceArr;

@end

@implementation MyIntegralViewController

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
    
}

- (void)makeData {
    self.dataSourceArr = [[NSMutableArray alloc] init];
    
    MyIntegralModel* model = [[MyIntegralModel alloc] init];
    model._count = @"1000";
    model._text = @"积分使用规则：";
    [self.dataSourceArr addObject:model];
    
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
    if (0 == section) {
        return 1;
    }
    return self.dataSourceArr.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

#pragma mark - 自定义tableView
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (0 == indexPath.section) {
        MyCertification0TableViewCell* cell0 = [[MyCertification0TableViewCell alloc] init];
        cell0.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell0 configCellWithModel];
        return cell0;
    }
    
    MyIntegralTableViewCell* cell0 = [[MyIntegralTableViewCell alloc] init];
    MyIntegralModel *model = self.dataSourceArr[indexPath.row];
    cell0.selectionStyle = UITableViewCellSelectionStyleNone;
    [cell0 configCellWithModel:model];
    return cell0;
}

#pragma mark - tableView行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (0 == indexPath.section) {
        return [MyCertification0TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
            MyCertification0TableViewCell *cell = (MyCertification0TableViewCell *)sourceCell;
            [cell configCellWithModel];
        }];
    }
    
    MyIntegralModel *model = nil;
    if (indexPath.row < self.dataSourceArr.count) {
        model = [self.dataSourceArr objectAtIndex:indexPath.row];
    }
    
    return [MyIntegralTableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
        MyIntegralTableViewCell *cell = (MyIntegralTableViewCell *)sourceCell;
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
