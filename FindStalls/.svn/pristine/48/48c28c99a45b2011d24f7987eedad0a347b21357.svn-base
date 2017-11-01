//
//  OrderDetailViewController.m
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "OrderDetailViewController.h"

#import "OrderDetail0Model.h"

#import "OrderDetail1Model.h"

#import "OrderAllModel.h"

#import "OrderAll1Model.h"

#import "OrderDetail4Model.h"

#import "OrderDetail0TableViewCell.h"

#import "OrderDetail1TableViewCell.h"

#import "OrderAllTableViewCell.h"

#import "OrderAll1TableViewCell.h"

#import "OrderDetail4TableViewCell.h"
@interface OrderDetailViewController ()<UITableViewDataSource,UITableViewDelegate,OrderDetail4TableViewCellDelegate>{
    UITableView* _tableView;
}
@property(nonatomic,retain)NSMutableArray* dataSource;
@property(nonatomic,retain)NSMutableArray* dataSource1;
@property(nonatomic,retain)NSMutableArray* dataSource2;
@property(nonatomic,retain)NSMutableArray* dataSource3;
@property(nonatomic,retain)NSMutableArray* dataSource4;

@end

@implementation OrderDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self makeData];
    [self createTableView];
    
}

#pragma mark - 初始化tableView
- (void)createTableView{
    self.automaticallyAdjustsScrollViewInsets = NO;
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, [MyController isIOS7], self.view.frame.size.width, self.view.frame.size.height - [MyController isIOS7]) style:UITableViewStylePlain];
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
    if (3 == section) {
        return self.dataSource3.count;
    }
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 5;
}

#pragma mark - tableVie点击cell
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

#pragma mark - 自定义tableView
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (0 == indexPath.section) {
        OrderDetail0TableViewCell* cell0 = [[OrderDetail0TableViewCell alloc] init];
        OrderDetail0Model *model = self.dataSource[indexPath.row];
        cell0.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell0 configCellWithModel:model];
        return cell0;
    }else if (1 == indexPath.section){
        OrderDetail1TableViewCell* cell0 = [[OrderDetail1TableViewCell alloc] init];
        OrderDetail1Model *model = self.dataSource1[indexPath.row];
        cell0.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell0 configCellWithModel:model];
        return cell0;
    }else if (2 == indexPath.section) {
        OrderAllTableViewCell* cell0 = [[OrderAllTableViewCell alloc] init];
        cell0.OrderAllTableViewCellDelegate = self;
        cell0.sectionItem = indexPath.section;
        OrderAllModel *model = nil;
        model = self.dataSource2[indexPath.row];
        cell0.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell0 configCellWithModel:model];
        return cell0;
    }else if (3 == indexPath.section) {
        static NSString *cellIdentifier = @"OrderAll1TableViewCell";
        OrderAll1TableViewCell* cell0 = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (!cell0) {
            cell0 = [[OrderAll1TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        }
        OrderAll1Model *model = nil;
        model = self.dataSource3[indexPath.row];
        cell0.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell0 configCellWithModel:model];
        return cell0;
    }
    
    OrderDetail4TableViewCell* cell0 = [[OrderDetail4TableViewCell alloc] init];
    cell0.OrderDetail4TableViewCellDelegate = self;
    OrderDetail4Model *model = nil;
    model = self.dataSource4[indexPath.row];
    cell0.selectionStyle = UITableViewCellSelectionStyleNone;
    [cell0 configCellWithModel:model];
    return cell0;
    
}

#pragma mark - tableView行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (0 == indexPath.section) {
        OrderDetail0Model* model = self.dataSource[indexPath.row];
        return [OrderDetail0TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
            OrderDetail0TableViewCell *cell = (OrderDetail0TableViewCell *)sourceCell;
            // 配置数据
            [cell configCellWithModel:model];
        }];
    }else if (1 == indexPath.section){
        OrderDetail1Model* model = self.dataSource1[indexPath.row];
        return [OrderDetail1TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
            OrderDetail1TableViewCell *cell = (OrderDetail1TableViewCell *)sourceCell;
            // 配置数据
            [cell configCellWithModel:model];
        }];
    }else if (2 == indexPath.section) {
        OrderAllModel* model = self.dataSource2[indexPath.row];
        return [OrderAllTableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
            OrderAllTableViewCell *cell = (OrderAllTableViewCell *)sourceCell;
            // 配置数据
            [cell configCellWithModel:model];
        }];
    }else if (3 == indexPath.section) {
        OrderAll1Model* model = self.dataSource3[indexPath.row];
        return [OrderAll1TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
            OrderAll1TableViewCell *cell = (OrderAll1TableViewCell *)sourceCell;
            // 配置数据
            [cell configCellWithModel:model];
        }];
    }
    
    OrderDetail4Model* model = self.dataSource4[indexPath.row];
    return [OrderDetail4TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
        OrderDetail4TableViewCell *cell = (OrderDetail4TableViewCell *)sourceCell;
        // 配置数据
        [cell configCellWithModel:model];
    }];
}

- (void)makeData{
    self.dataSource = [[NSMutableArray alloc] init];
    self.dataSource1 = [[NSMutableArray alloc] init];
    self.dataSource2 = [[NSMutableArray alloc] init];
    self.dataSource3 = [[NSMutableArray alloc] init];
    self.dataSource4 = [[NSMutableArray alloc] init];
        
    OrderDetail0Model* model0 = [[OrderDetail0Model alloc] init];
    model0._img = @"";
    [self.dataSource addObject:model0];
    
    OrderDetail1Model* model1 = [[OrderDetail1Model alloc] init];
    model1._name = @"皮卡丘";
    model1._address = @"青岛市黄岛区青岛市黄岛区青岛市黄岛区青岛市黄岛区青岛市黄岛区青岛市黄岛区青岛市黄岛区";
    [self.dataSource1 addObject:model1];
    
    for (int i = 0; i < 2; i++) {
        OrderAll1Model* model = [[OrderAll1Model alloc] init];
        model._img = @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1508232993771&di=bd27b1d8d372ae3a660b3076c1b9e27e&imgtype=0&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fbaike%2Fpic%2Fitem%2F838ba61ea8d3fd1ffecb7d963a4e251f94ca5f58.jpg";
        model._title = @"纯天然圣女果";
        model._price = @"49.99";
        model._num = @"2";
        model._price1 = @"49.99";
        [self.dataSource3 addObject:model];
    }
    
    OrderAllModel* model2 = [[OrderAllModel alloc] init];
    model2._name = @"太行山路农贸市场";
    model2._sta = @"预定成功";
    [self.dataSource2 addObject:model2];
    
    OrderDetail4Model* model4 = [[OrderDetail4Model alloc] init];
    model4._pPrice = @"￥49.99";
    model4._yPrice = @"￥0.00";
    model4._oPrice = @"￥49.99";
    model4._cPrice = @"￥49.99";
    [self.dataSource4 addObject:model4];
    
    [_tableView reloadData];
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
