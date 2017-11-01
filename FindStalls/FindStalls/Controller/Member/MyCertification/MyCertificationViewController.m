//
//  MyCertificationViewController.m
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "MyCertificationViewController.h"

#import "BaseInfo1Model.h"

#import "MyCertification2Model.h"

#import "MyCertification0TableViewCell.h"

#import "BaseInfo1TableViewCell.h"

#import "MyCertification2TableViewCell.h"
@interface MyCertificationViewController ()<UITableViewDataSource,UITableViewDelegate,MyCertification2TableViewCellDelegate,BaseInfo1TableViewCellDelegate>{
    UITableView* _tableView;
}
@property(nonatomic,strong)NSMutableArray* dataSourceArr1;
@property(nonatomic,strong)NSMutableArray* dataSourceArr2;

@end

@implementation MyCertificationViewController

#pragma mark - 返回字段代理
- (void)sendBackRightText:(NSString *)text AndRow:(NSInteger)row {
    
}

#pragma mark - 点击提交认证信息
- (void)sendBackSendInfo {
    
}

#pragma mark - 点击提交图片
- (void)sendBackSendImg {
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    [[self rdv_tabBarController] setTabBarHidden:YES animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self makeData];
    self.view.backgroundColor = [MyController colorWithHexString:@"f6f6f6"];
    [self createTableView];
}

- (void)makeData {
    self.dataSourceArr1 = [[NSMutableArray alloc] init];
    
    NSArray* leftA = [NSArray arrayWithObjects:@"姓名",@"身份证号",@"联系电话",@"家庭地址", nil];
    NSArray* leftR = [NSArray arrayWithObjects:@"姓名",@"身份证号",@"联系电话",@"家庭地址", nil];
    
    for (int i = 0; i < leftA.count; i++) {
        BaseInfo1Model* model1 = [[BaseInfo1Model alloc] init];
        model1._leftText = leftA[i];
        model1._rightText = leftR[i];
        [self.dataSourceArr1 addObject:model1];
    }
    
    self.dataSourceArr2 = [[NSMutableArray alloc] init];
    MyCertification2Model* model2 = [[MyCertification2Model alloc] init];
    model2._img = @"https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1508311973&di=98371d284466c3708fe1389b4f20101f&src=http://img4.duitang.com/uploads/item/201509/02/20150902104405_PRM4E.jpeg";
    [self.dataSourceArr2 addObject:model2];
    
}

#pragma mark - 初始化tableView
- (void)createTableView{
    self.automaticallyAdjustsScrollViewInsets = NO;
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, [MyController isIOS7], [MyController getScreenWidth], [MyController getScreenHeight] - [MyController isIOS7]) style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.backgroundColor = [MyController colorWithHexString:@"f6f6f6"];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.showsVerticalScrollIndicator = NO;
    [self.view addSubview:_tableView];
}

#pragma mark - tableView行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (1 == section) {
        return self.dataSourceArr1.count;
    }
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

#pragma mark - 自定义tableView
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (0 == indexPath.section) {
        MyCertification0TableViewCell *celll = [[MyCertification0TableViewCell alloc] init];
        celll.selectionStyle = UITableViewCellSelectionStyleNone;
        [celll configCellWithModel];
        return celll;
    }else if (2 == indexPath.section) {
        MyCertification2TableViewCell *celll = [[MyCertification2TableViewCell alloc] init];
        celll.selectionStyle = UITableViewCellSelectionStyleNone;
        celll.MyCertification2TableViewCellDelegate = self;
        MyCertification2Model* model = [self.dataSourceArr2 lastObject];
        [celll configCellWithModel:model];
        return celll;
    }
    
    BaseInfo1TableViewCell *celll = [[BaseInfo1TableViewCell alloc] init];
    celll.selectionStyle = UITableViewCellSelectionStyleNone;
    BaseInfo1Model* model = self.dataSourceArr1[indexPath.row];
    celll.BaseInfo1TableViewCellDelegate = self;
    celll.row = indexPath.row;
    [celll configCellWithModel:model];
    return celll;
}

#pragma mark - tableView行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (0 == indexPath.section) {
        return [MyCertification0TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
            MyCertification0TableViewCell *cell = (MyCertification0TableViewCell *)sourceCell;
            [cell configCellWithModel];
        }];
    }else if (2 == indexPath.section) {
        MyCertification2Model *model = nil;
        if (indexPath.row < self.dataSourceArr2.count) {
            model = [self.dataSourceArr2 lastObject];
        }
        
        return [MyCertification2TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
            MyCertification2TableViewCell *cell = (MyCertification2TableViewCell *)sourceCell;
            [cell configCellWithModel:model];
        }];
    }
    
    BaseInfo1Model *model = nil;
    if (indexPath.row < self.dataSourceArr1.count) {
        model = [self.dataSourceArr1 objectAtIndex:indexPath.section];
    }
    
    return [BaseInfo1TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
        BaseInfo1TableViewCell *cell = (BaseInfo1TableViewCell *)sourceCell;
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
