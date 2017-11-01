//
//  MyGoodsViewController.m
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "MyGoodsViewController.h"

#import "MyGoodsModel.h"

#import "MyGoodsTableViewCell.h"

#import "SendGoodsViewController.h"
@interface MyGoodsViewController ()<UITableViewDataSource,UITableViewDelegate>{
    UITableView* _tableView;
}
@property(nonatomic,strong)NSMutableArray* dataSourceArr;

@end

@implementation MyGoodsViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    [[self rdv_tabBarController] setTabBarHidden:YES animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createTableView];
    
    [self makeNavBtn];
    
    [self makeData];
}

- (void)makeNavBtn {
    UIButton*rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,30,30)];
    [rightButton setTitle:@"上传" forState:UIControlStateNormal];
    [rightButton setTitleColor:[MyController colorWithHexString:@"aaaaaa"] forState:UIControlStateNormal];
    rightButton.titleLabel.font = [UIFont systemFontOfSize:14];
    
    
    [rightButton addTarget:self action:@selector(sendGoodsBtnClick)forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem*rightItem = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
    rightItem.tintColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem= rightItem;
}

- (void)sendGoodsBtnClick {
    SendGoodsViewController* vc = [[SendGoodsViewController alloc] init];
    vc.title = @"上传商品";
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (void)makeData {
    self.dataSourceArr = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 10; i++) {
        MyGoodsModel* model1 = [[MyGoodsModel alloc] init];
        model1._pic = @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1508232993771&di=bd27b1d8d372ae3a660b3076c1b9e27e&imgtype=0&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fbaike%2Fpic%2Fitem%2F838ba61ea8d3fd1ffecb7d963a4e251f94ca5f58.jpg";
        model1._name = @"圣女果";
        model1._des = @"纯天然，无公害，产自海南的新鲜圣女果";
        model1._guige = @"包装：袋装";
        model1._cNum = @"累计评价：100";
        model1._zl = @"9.0/KG";
        [self.dataSourceArr addObject:model1];
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
    return self.dataSourceArr.count;
}

#pragma mark - 自定义tableView
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"MyGoodsTableViewCell";
    MyGoodsTableViewCell* cell0 = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell0) {
        cell0 = [[MyGoodsTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    MyGoodsModel *model = nil;
    model = self.dataSourceArr[indexPath.section];
    cell0.selectionStyle = UITableViewCellSelectionStyleNone;
    [cell0 configCellWithModel:model];
    return cell0;
}

#pragma mark - tableView行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    MyGoodsModel *model = nil;
    if (indexPath.row < self.dataSourceArr.count) {
        model = [self.dataSourceArr objectAtIndex:indexPath.row];
    }
    
    return [MyGoodsTableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
        MyGoodsTableViewCell *cell = (MyGoodsTableViewCell *)sourceCell;
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
