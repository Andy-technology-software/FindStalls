//
//  OrderAllViewController.m
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "OrderAllViewController.h"

#import "OrderDetailViewController.h"

#import "OrderAllModel.h"

#import "OrderAll1Model.h"

#import "OrderAll2Model.h"

#import "OrderAllTableViewCell.h"

#import "OrderAll1TableViewCell.h"

#import "OrderAll2TableViewCell.h"
@interface OrderAllViewController ()<UITableViewDataSource,UITableViewDelegate,OrderAllTableViewCellDelegate,OrderAll2TableViewCellDelegate>{
    UITableView* _tableView;
}
@property(nonatomic,retain)NSMutableArray* dataSource;
@property(nonatomic,retain)NSMutableArray* dataSource1;
@property(nonatomic,retain)NSMutableArray* dataSource2;

@end

@implementation OrderAllViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [MyController colorWithHexString:@"f4f6fa"];
    
    [self createTableView];
    
    [self makeData];
}

#pragma mark - 初始化tableView
- (void)createTableView{
    self.automaticallyAdjustsScrollViewInsets = NO;
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - [MyController isIOS7] - 45) style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    UIImageView *tableBg = [[UIImageView alloc] initWithImage:nil];
    tableBg.backgroundColor = [MyController colorWithHexString:@"f4f6fa"];
    [_tableView setBackgroundView:tableBg];
    //分割线类型
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.showsVerticalScrollIndicator = NO;
    //_tableView.backgroundColor = [UIColor colorWithRed:190 green:30 blue:96 alpha:1];
    [self.view addSubview:_tableView];
}

#pragma mark - tableView行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSArray* aa = self.dataSource1[section];
    return aa.count + 2;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.dataSource1.count;
}

#pragma mark - tableVie点击cell
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    OrderDetailViewController* vc = [[OrderDetailViewController alloc] init];
    vc.title = @"订单详情";
    [self.navigationController pushViewController:vc animated:YES];
    
}

#pragma mark - 自定义tableView
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSArray* aa = self.dataSource1[indexPath.section];
    
    if (0 == indexPath.row) {
        static NSString *cellIdentifier = @"OrderAllTableViewCell";
        OrderAllTableViewCell* cell0 = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (!cell0) {
            cell0 = [[OrderAllTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        }
        cell0.OrderAllTableViewCellDelegate = self;
        cell0.sectionItem = indexPath.section;
        OrderAllModel *model = nil;
        model = self.dataSource[indexPath.section];
        cell0.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell0 configCellWithModel:model];
        return cell0;
    }else if (indexPath.row > aa.count){
        static NSString *cellIdentifier = @"OrderAll2TableViewCell";
        OrderAll2TableViewCell* cell0 = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (!cell0) {
            cell0 = [[OrderAll2TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        }
        cell0.OrderAll2TableViewCellDelegate = self;
        cell0.sectionIndex = indexPath.section;
        OrderAll2Model *model = nil;
        model = self.dataSource2[indexPath.section];
        cell0.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell0 configCellWithModel:model];
        return cell0;
    }
    
    static NSString *cellIdentifier = @"OrderAll1TableViewCell";
    OrderAll1TableViewCell* cell0 = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell0) {
        cell0 = [[OrderAll1TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    OrderAll1Model *model = nil;
    model = self.dataSource1[indexPath.section][indexPath.row - 1];
    cell0.selectionStyle = UITableViewCellSelectionStyleNone;
    [cell0 configCellWithModel:model];
    return cell0;
    
}

#pragma mark - tableView行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSArray* aa = self.dataSource1[indexPath.section];
    
    if (0 == indexPath.row) {
        OrderAllModel* model = self.dataSource[indexPath.section];
        
        return [OrderAllTableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
            OrderAllTableViewCell *cell = (OrderAllTableViewCell *)sourceCell;
            // 配置数据
            [cell configCellWithModel:model];
        }];
    }else if (indexPath.row > aa.count){
        OrderAll2Model* model = self.dataSource2[indexPath.section];
        
        return [OrderAll2TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
            OrderAll2TableViewCell *cell = (OrderAll2TableViewCell *)sourceCell;
            // 配置数据
            [cell configCellWithModel:model];
        }];
    }
    
    OrderAll1Model* model = self.dataSource1[indexPath.section][indexPath.row - 1];
    return [OrderAll1TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
        OrderAll1TableViewCell *cell = (OrderAll1TableViewCell *)sourceCell;
        // 配置数据
        [cell configCellWithModel:model];
    }];
}

- (void)makeData{
    self.dataSource = [[NSMutableArray alloc] init];
    self.dataSource1 = [[NSMutableArray alloc] init];
    self.dataSource2 = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 10; i++) {
        NSMutableArray* temA = [[NSMutableArray alloc] init];
        for (int i = 0; i < 2; i++) {
            OrderAll1Model* model = [[OrderAll1Model alloc] init];
            model._img = @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1508232993771&di=bd27b1d8d372ae3a660b3076c1b9e27e&imgtype=0&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fbaike%2Fpic%2Fitem%2F838ba61ea8d3fd1ffecb7d963a4e251f94ca5f58.jpg";
            model._title = @"纯天然圣女果";
            model._price = @"49.99";
            model._num = @"2";
            model._price1 = @"49.99";
            [temA addObject:model];
        }
        [self.dataSource1 addObject:temA];
        
        OrderAll2Model* model1 = [[OrderAll2Model alloc] init];
        model1._countNum = @"2";
        model1._countPrice = @"998.0";
        [self.dataSource2 addObject:model1];
        
        
        OrderAllModel* model2 = [[OrderAllModel alloc] init];
        model2._name = @"太行山路农贸市场";
        model2._sta = @"预定成功";
        [self.dataSource addObject:model2];
    }
    [_tableView reloadData];
}

#pragma mark - 点击商铺代理
- (void)sendBackShop:(NSInteger)sectionItem{
    
}

#pragma mark - 点击支付代理
- (void)didselectPay:(NSInteger)sectionIndex{
    
}

#pragma mark - 点击取消代理
- (void)didselectCancel:(NSInteger)sectionIndex{
    
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
