//
//  WithdrawViewController.m
//  FindStalls
//
//  Created by lingnet on 2017/10/19.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "WithdrawViewController.h"

#import "WithdrawModel.h"

#import "WithdrawTableViewCell.h"

#import "WithdrawalsRecordViewController.h"
@interface WithdrawViewController ()<UITableViewDataSource,UITableViewDelegate,WithdrawTableViewCellDelegate>{
    UITableView* _tableView;
}
@property(nonatomic,strong)NSMutableArray* dataSourceArr;

@end

@implementation WithdrawViewController

- (void)sendBackPushZFB {
    
}

- (void)sendBackMCount:(NSString*)mCount {
    
}

- (void)sendBackALLDraw {
    
}

- (void)sendBackSure {
    
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
    [rightButton setTitle:@"提现记录" forState:UIControlStateNormal];
    [rightButton setTitleColor:[MyController colorWithHexString:@"aaaaaa"] forState:UIControlStateNormal];
    rightButton.titleLabel.font = [UIFont systemFontOfSize:14];
    
    
    [rightButton addTarget:self action:@selector(sendGoodsBtnClick)forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem*rightItem = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
    rightItem.tintColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem= rightItem;
}

- (void)sendGoodsBtnClick {
    WithdrawalsRecordViewController* vc = [[WithdrawalsRecordViewController alloc] init];
    vc.title = @"提现记录";
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (void)makeData {
    self.dataSourceArr = [[NSMutableArray alloc] init];
    
    WithdrawModel* model1 = [[WithdrawModel alloc] init];
    model1._jine = @"";
    model1._yue = @"100.00";
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
    WithdrawTableViewCell* cell0 = [[WithdrawTableViewCell alloc] init];
    cell0.WithdrawTableViewCellDelegate = self;
    WithdrawModel *model = self.dataSourceArr[indexPath.row];
    cell0.selectionStyle = UITableViewCellSelectionStyleNone;
    [cell0 configCellWithModel:model];
    return cell0;
}

#pragma mark - tableView行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    WithdrawModel *model = nil;
    if (indexPath.row < self.dataSourceArr.count) {
        model = [self.dataSourceArr objectAtIndex:indexPath.row];
    }
    
    return [WithdrawTableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
        WithdrawTableViewCell *cell = (WithdrawTableViewCell *)sourceCell;
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
