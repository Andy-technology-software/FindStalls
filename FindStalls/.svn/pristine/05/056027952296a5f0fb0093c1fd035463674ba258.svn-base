//
//  SendGoodsViewController.m
//  FindStalls
//
//  Created by lingnet on 2017/10/19.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "SendGoodsViewController.h"

#import "SendGoods0Model.h"

#import "SendGoods1Model.h"

#import "SendGoods0TableViewCell.h"

#import "SendGoods1TableViewCell.h"

#import "SendGoods2TableViewCell.h"

#import "MyCertification0TableViewCell.h"
@interface SendGoodsViewController ()<UITableViewDataSource,UITableViewDelegate,SendGoods2TableViewCellDelegate,AdvancedExpandableTableViewDelegate>{
    UITableView* _tableView;
    CGFloat textCellHeight;

}
@property(nonatomic,strong)NSMutableArray* dataSourceArr0;
@property(nonatomic,strong)NSMutableArray* dataSourceArr1;

@end

@implementation SendGoodsViewController

#pragma mark - 提交按钮代理
- (void)sendBackSendGoods {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self makeData];
    
    [self createTableView];
    
}

- (void)makeData {
    self.dataSourceArr0 = [[NSMutableArray alloc] init];
    self.dataSourceArr1 = [[NSMutableArray alloc] init];
    
    
    SendGoods0Model* model0 = [[SendGoods0Model alloc] init];
    model0._des = @"";
    [self.dataSourceArr0 addObject:model0];
    
    
    SendGoods1Model* model = [[SendGoods1Model alloc] init];
    [self.dataSourceArr1 addObject:model];
    
    
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
    return 1;

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
    
}

#pragma mark - 自定义tableView
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (0 == indexPath.section) {
        MyCertification0TableViewCell *celll = [[MyCertification0TableViewCell alloc] init];
        celll.selectionStyle = UITableViewCellSelectionStyleNone;
        [celll configCellWithModel];
        return celll;
    }else if (1 == indexPath.section) {
        SendGoods0TableViewCell *textCell = [tableView advancedExpandableTextCellWithId2:@"SendGoods0TableViewCell"];
        textCell.placeholder = @"上传我的商品...";
        textCell.selectionStyle = UITableViewCellSelectionStyleNone;
        textCell.maxCharacter = 1000;
        
        return textCell;
    }else if (2 == indexPath.section) {
        SendGoods1TableViewCell* cell0 = [[SendGoods1TableViewCell alloc] init];
        SendGoods1Model *model = self.dataSourceArr1[indexPath.row];
        cell0.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell0 configCellWithModel:model];
        return cell0;
    
    }
    
    SendGoods2TableViewCell* cell0 = [[SendGoods2TableViewCell alloc] init];
    cell0.selectionStyle = UITableViewCellSelectionStyleNone;
    cell0.SendGoods2TableViewCellDelegate = self;
    [cell0 configCellWithModel];
    return cell0;
}

#pragma mark - 这是事由cell代理
- (void)tableView:(UITableView *)tableView updatedHeight:(CGFloat)height atIndexPath:(NSIndexPath *)indexPath{
    textCellHeight = height;
}
- (void)tableView:(UITableView *)tableView updatedText:(NSString *)text atIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"debug : updatedText\n%@", text);
    SendGoods0Model* model = [self.dataSourceArr0 lastObject];
    model._des = text;
    
}


#pragma mark - tableView行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (0 == indexPath.section) {
        return [MyCertification0TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
            MyCertification0TableViewCell *cell = (MyCertification0TableViewCell *)sourceCell;
            [cell configCellWithModel];
        }];
    }else if (1 == indexPath.section) {
        return MAX(80, textCellHeight + 20);
    }else if (2 == indexPath.section) {
        SendGoods1Model *model = nil;
        if (indexPath.row < self.dataSourceArr1.count) {
            model = [self.dataSourceArr1 objectAtIndex:indexPath.row];
        }
        
        return [SendGoods1TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
            SendGoods1TableViewCell *cell = (SendGoods1TableViewCell *)sourceCell;
            [cell configCellWithModel:model];
        }];
    }
    
    return [SendGoods2TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
        SendGoods2TableViewCell *cell = (SendGoods2TableViewCell *)sourceCell;
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
