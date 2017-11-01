//
//  WithdrawalsRecordViewController.m
//  FindStalls
//
//  Created by lingnet on 2017/10/19.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "WithdrawalsRecordViewController.h"

#import "WithdrawalsRecordModel.h"

#import "WithdrawalsRecordTableViewCell.h"

#import "MyCertification0TableViewCell.h"
@interface WithdrawalsRecordViewController ()<UITableViewDataSource,UITableViewDelegate>{
    UITableView* _tableView;
}
@property(nonatomic,strong)NSMutableArray* dataSourceArr;

@end

@implementation WithdrawalsRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createTableView];
    
    [self makeData];
    
}

- (void)makeData {
    self.dataSourceArr = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 10; i++) {
        WithdrawalsRecordModel* model = [[WithdrawalsRecordModel alloc] init];
        model._title = @"提现金额";
        model._count = @"+100.00";
        model._yue = @"1000.00";
        model._time = @"2017-11-19 12:00";
        [self.dataSourceArr addObject:model];
    }
    
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
    
    static NSString *cellIdentifier = @"WithdrawalsRecordTableViewCell";
    WithdrawalsRecordTableViewCell* cell0 = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell0) {
        cell0 = [[WithdrawalsRecordTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    WithdrawalsRecordModel *model = nil;
    model = self.dataSourceArr[indexPath.row];
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
    
    WithdrawalsRecordModel *model = nil;
    if (indexPath.row < self.dataSourceArr.count) {
        model = [self.dataSourceArr objectAtIndex:indexPath.row];
    }
    
    return [WithdrawalsRecordTableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
        WithdrawalsRecordTableViewCell *cell = (WithdrawalsRecordTableViewCell *)sourceCell;
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
