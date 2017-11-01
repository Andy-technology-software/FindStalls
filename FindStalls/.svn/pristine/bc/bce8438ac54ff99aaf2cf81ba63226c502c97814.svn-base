//
//  BaseInfoViewController.m
//  FindStalls
//
//  Created by lingnet on 2017/10/17.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "BaseInfoViewController.h"

#import "BaseInfo0Model.h"

#import "BaseInfo1Model.h"

#import "BaseInfo2Model.h"

#import "BaseInfo0TableViewCell.h"

#import "BaseInfo1TableViewCell.h"

#import "BaseInfo2TableViewCell.h"
@interface BaseInfoViewController ()<UITableViewDataSource,UITableViewDelegate,BaseInfo1TableViewCellDelegate,BaseInfo2TableViewCellDelegate>{
    UITableView* _tableView;
}
@property(nonatomic,strong)NSMutableArray* dataSourceArr0;
@property(nonatomic,strong)NSMutableArray* dataSourceArr1;
@property(nonatomic,strong)NSMutableArray* dataSourceArr2;

@end

@implementation BaseInfoViewController

#pragma mark - 返回字段代理
- (void)sendBackRightText:(NSString *)text AndSection:(NSInteger)section {
    
}

#pragma mark - 点击男女代理
- (void)sendBackIsMan:(BOOL)isMan {
    BaseInfo2Model* model = [self.dataSourceArr2 lastObject];
    model.isMan = isMan;
    NSIndexSet *indexSet=[[NSIndexSet alloc]initWithIndex:2];
    [_tableView reloadSections:indexSet withRowAnimation:UITableViewRowAnimationAutomatic];
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
    self.title = @"基本信息";
    self.view.backgroundColor = [MyController colorWithHexString:@"f3f3f3"];
    [self createTableView];
    [self makeNavBtn];
    
}

- (void)makeNavBtn {
    UIButton*rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,60,60)];
    [rightButton setTitle:@"保存" forState:UIControlStateNormal];
    [rightButton setTitleColor:[MyController colorWithHexString:@"aaaaaa"] forState:UIControlStateNormal];
    rightButton.titleLabel.font = [UIFont systemFontOfSize:14];
    
    
    [rightButton addTarget:self action:@selector(sendGoodsBtnClick)forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem*rightItem = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
    rightItem.tintColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem= rightItem;
}

#pragma mark - 保存按钮响应
- (void)sendGoodsBtnClick {
    
}

- (void)makeData {
    self.dataSourceArr0 = [[NSMutableArray alloc] init];
    
    BaseInfo0Model* model0 = [[BaseInfo0Model alloc] init];
    model0._headImage = @"";
    [self.dataSourceArr0 addObject:model0];
    
    self.dataSourceArr1 = [[NSMutableArray alloc] init];
    
    NSArray* leftA = [NSArray arrayWithObjects:@"",@"姓名",@"性别",@"籍贯",@"常住地址",@"所属社区", nil];
    NSArray* leftR = [NSArray arrayWithObjects:@"",@"皮卡丘",@"男",@"山东省黄岛区",@"江山南路",@"城发大厦", nil];
    
    for (int i = 0; i < leftA.count; i++) {
        BaseInfo1Model* model1 = [[BaseInfo1Model alloc] init];
        model1._leftText = leftA[i];
        model1._rightText = leftR[i];
        [self.dataSourceArr1 addObject:model1];
    }
    
    self.dataSourceArr2 = [[NSMutableArray alloc] init];
    BaseInfo2Model* model2 = [[BaseInfo2Model alloc] init];
    model2.isMan = YES;
    [self.dataSourceArr2 addObject:model2];
    
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataSourceArr1.count;
}

#pragma mark - 自定义tableView
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (0 == indexPath.section) {
        BaseInfo0TableViewCell *celll = [[BaseInfo0TableViewCell alloc] init];
        celll.selectionStyle = UITableViewCellSelectionStyleNone;
        BaseInfo0Model* model = self.dataSourceArr0[indexPath.row];
        [celll configCellWithModel:model];
        return celll;
    }else if (2 == indexPath.section) {
        BaseInfo2TableViewCell *celll = [[BaseInfo2TableViewCell alloc] init];
        celll.selectionStyle = UITableViewCellSelectionStyleNone;
        celll.BaseInfo2TableViewCellDelegate = self;
        BaseInfo2Model* model = [self.dataSourceArr2 lastObject];
        [celll configCellWithModel:model];
        return celll;
    }
    
    BaseInfo1TableViewCell *celll = [[BaseInfo1TableViewCell alloc] init];
    celll.selectionStyle = UITableViewCellSelectionStyleNone;
    BaseInfo1Model* model = self.dataSourceArr1[indexPath.section];
    celll.BaseInfo1TableViewCellDelegate = self;
    celll.row = indexPath.row;
    [celll configCellWithModel:model];
    return celll;
}

#pragma mark - tableView行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (0 == indexPath.section) {
        BaseInfo0Model *model = nil;
        if (indexPath.row < self.dataSourceArr0.count) {
            model = [self.dataSourceArr0 objectAtIndex:indexPath.row];
        }
        
        return [BaseInfo0TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
            BaseInfo0TableViewCell *cell = (BaseInfo0TableViewCell *)sourceCell;
            [cell configCellWithModel:model];
        }];
    }else if (2 == indexPath.section) {
        BaseInfo2Model *model = nil;
        if (indexPath.row < self.dataSourceArr2.count) {
            model = [self.dataSourceArr2 lastObject];
        }
        
        return [BaseInfo2TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
            BaseInfo2TableViewCell *cell = (BaseInfo2TableViewCell *)sourceCell;
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

#pragma mark - 点cell
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (0 == indexPath.section) {
        NSLog(@"换头像");
    }
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
