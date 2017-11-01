//
//  SeetingViewController.m
//  FindStalls
//
//  Created by lingnet on 2017/10/20.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "SeetingViewController.h"

#import "SeetingModel.h"

#import "Seeting0TableViewCell.h"

#import "Seeting1TableViewCell.h"

#import "Seeting2TableViewCell.h"

#import "AppDelegate.h"
@interface SeetingViewController ()<UITableViewDataSource,UITableViewDelegate,Seeting2TableViewCellDelegate>{
    UITableView* _tableView;
}
@property(nonatomic,strong)NSMutableArray* dataSourceArr0;
@property(nonatomic,strong)NSMutableArray* dataSourceArr1;
@end

@implementation SeetingViewController

- (void)sendBackLogout {
    [(AppDelegate *)[UIApplication sharedApplication].delegate setLoginRoot];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    [[self rdv_tabBarController] setTabBarHidden:YES animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"设置";
    
    [self makeData];
    
    [self createTableView];
}

- (void)makeData {
    self.dataSourceArr0 = [[NSMutableArray alloc] init];
    self.dataSourceArr1 = [[NSMutableArray alloc] init];
    
    SeetingModel* model0 = [[SeetingModel alloc] init];
    model0._leftText = @"消息通知";
    [self.dataSourceArr0 addObject:model0];
    
    NSArray* leA = [[NSArray alloc] initWithObjects:@"收货地址",@"修改密码",@"清理缓存",@"关于我们",@"用户协议",@"当前版本", nil];
    NSArray* riA = [[NSArray alloc] initWithObjects:@"",@"",@"当前缓存：0Mb",@"",@"",@"当前版本1.0.0", nil];
    for (int i = 0; i < leA.count; i++) {
        SeetingModel* model = [[SeetingModel alloc] init];
        model._leftText = leA[i];
        model._rightText = riA[i];
        [self.dataSourceArr1 addObject:model];
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
        return self.dataSourceArr0.count;
    }else if (1 == section) {
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
        Seeting0TableViewCell *celll = [[Seeting0TableViewCell alloc] init];
        celll.selectionStyle = UITableViewCellSelectionStyleNone;
//        celll.LoginTableViewCellDelegate = self;
        SeetingModel* model = self.dataSourceArr0[indexPath.row];
        [celll configCellWithModel:model];
        return celll;
    }else if (1 == indexPath.section) {
        Seeting1TableViewCell *celll = [[Seeting1TableViewCell alloc] init];
        celll.selectionStyle = UITableViewCellSelectionStyleNone;
        SeetingModel* model = self.dataSourceArr1[indexPath.row];
        [celll configCellWithModel:model];
        return celll;
    }
    
    Seeting2TableViewCell *celll = [[Seeting2TableViewCell alloc] init];
    celll.Seeting2TableViewCellDelegate = self;
    celll.selectionStyle = UITableViewCellSelectionStyleNone;
    [celll configCellWithModel];
    return celll;
}

#pragma mark - tableView行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (0 == indexPath.section) {
        SeetingModel *model = nil;
        if (indexPath.row < self.dataSourceArr0.count) {
            model = [self.dataSourceArr0 objectAtIndex:indexPath.row];
        }
        
        return [Seeting0TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
            Seeting0TableViewCell *cell = (Seeting0TableViewCell *)sourceCell;
            [cell configCellWithModel:model];
        }];
    }else if (1 == indexPath.section) {
        SeetingModel *model = nil;
        if (indexPath.row < self.dataSourceArr1.count) {
            model = [self.dataSourceArr1 objectAtIndex:indexPath.row];
        }
        
        return [Seeting1TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
            Seeting1TableViewCell *cell = (Seeting1TableViewCell *)sourceCell;
            [cell configCellWithModel:model];
        }];
    }

    return [Seeting2TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
        Seeting2TableViewCell *cell = (Seeting2TableViewCell *)sourceCell;
        [cell configCellWithModel];
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
