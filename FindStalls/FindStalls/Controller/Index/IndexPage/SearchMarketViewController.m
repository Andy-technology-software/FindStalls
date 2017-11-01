//
//  SearchMarketViewController.m
//  FindStalls
//
//  Created by Gem on 2017/10/19.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "SearchMarketViewController.h"
#import "IndexPageModel.h"
#import "IndexCellModel.h"
#import "IndexTraderTableViewCell.h"
#import "IndexGoodsTableViewCell.h"
#import "IndexMarketTableViewCell.h"
#import "TraderDetailViewController.h"
@interface SearchMarketViewController ()<UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate,WJMenuDelegate>{
    NSInteger kind;
}
@property (nonatomic,weak)WJDropdownMenu *menu;
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *dataSource;
@property (nonatomic,strong) NSMutableArray *indexButtonSource;
@property (nonatomic,strong) NSMutableArray *sectionTitleSource;

@end

@implementation SearchMarketViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [MyController colorWithHexString:BGColor];
    self.dataSource = [NSMutableArray array];

    if ([self.titleStr isEqualToString:@"找市场"]) {
        kind = 1;
        IndexCellModel *model0 = [[IndexCellModel alloc] init];
        model0.name = @"太行山路农贸市场";
        model0.imageName = @"推荐市场-1";
        model0.content = @"开发区   太行山路北468号";
        model0.container = @"农副产品";
        model0.workTime = @"9:00-18:00 (周一至周五)";
        model0.distance = @"550m";
        [self.dataSource addObject:model0];
        
        IndexCellModel *model1 = [[IndexCellModel alloc] init];
        model1.name = @"武夷山市场";
        model1.imageName = @"推荐市场-2";
        model1.content = @"开发区   九华山路119号附近";
        model1.container = @"农副产品";
        model1.workTime = @"9:00-18:00 (周一至周五)";
        model1.distance = @"10km";
        [self.dataSource addObject:model1];
        
        IndexCellModel *model2 = [[IndexCellModel alloc] init];
        model2.name = @"薛家岛爱心农贸市场";
        model2.imageName = @"推荐市场-3";
        model2.content = @"开发区   青云山路路北468号";
        model2.container = @"农副产品";
        model2.workTime = @"9:00-18:00 (周一至周五)";
        model2.distance = @"1.5km";
        [self.dataSource addObject:model2];
    }else if ([self.titleStr isEqualToString:@"找摊位"]){
        kind = 1;
        IndexCellModel *model0 = [[IndexCellModel alloc] init];
        model0.name = @"太行山路农贸市场";
        model0.imageName = @"推荐市场-1";
        model0.content = @"开发区   太行山路北468号";
        model0.container = @"农副产品";
        model0.workTime = @"9:00-18:00 (周一至周五)";
        model0.distance = @"550m";
        [self.dataSource addObject:model0];
        
        IndexCellModel *model1 = [[IndexCellModel alloc] init];
        model1.name = @"武夷山市场";
        model1.imageName = @"推荐市场-2";
        model1.content = @"开发区   九华山路119号附近";
        model1.container = @"农副产品";
        model1.workTime = @"9:00-18:00 (周一至周五)";
        model1.distance = @"10km";
        [self.dataSource addObject:model1];
        
        IndexCellModel *model2 = [[IndexCellModel alloc] init];
        model2.name = @"薛家岛爱心农贸市场";
        model2.imageName = @"推荐市场-3";
        model2.content = @"开发区   青云山路路北468号";
        model2.container = @"农副产品";
        model2.workTime = @"9:00-18:00 (周一至周五)";
        model2.distance = @"1.5km";
        [self.dataSource addObject:model2];
    }else if ([self.titleStr isEqualToString:@"找商贩"]){
        kind = 2;
        IndexCellModel *model20 = [[IndexCellModel alloc] init];
        model20.name = @"鼎泰丰小笼包";
        model20.content = @"开发区   太行山路路北468号";
        model20.imageName = @"推荐商贩-1";
        model20.workTime = @"9:00-18:00 (周一至周五)";
        model20.num = @"00001";
        model20.container = @"农副产品";
        model20.rank = @"9.0";
        [self.dataSource addObject:model20];
        
        IndexCellModel *model21 = [[IndexCellModel alloc] init];
        model21.name = @"双汇冷鲜肉";
        model21.content = @"开发区   太行山路路北468号";
        model21.imageName = @"推荐商贩-2";
        model21.workTime = @"9:00-18:00 (周一至周五)";
        model21.num = @"00002";
        model21.container = @"农副产品";
        model21.rank = @"9.4";
        [self.dataSource addObject:model21];
        
        IndexCellModel *model22 = [[IndexCellModel alloc] init];
        model22.name = @"静海棠干活货";
        model22.content = @"开发区   太行山路路北468号";
        model22.imageName = @"推荐商贩-3";
        model22.workTime = @"9:00-18:00 (周一至周五)";
        model22.num = @"00003";
        model22.container = @"农副产品";
        model22.rank = @"5.0";
        [self.dataSource addObject:model22];
    }else if ([self.titleStr isEqualToString:@"找商品"]){
        kind = 3;
        IndexCellModel *model30 = [[IndexCellModel alloc] init];
        model30.name = @"纯天然圣女果";
        model30.imageName = @"推荐商品-1";
        model30.content = @"纯天然无公害，产自海南的新鲜圣女果";
        model30.container = @"袋装";
        model30.advice = @"100";
        model30.price = @"6.0";
        [self.dataSource addObject:model30];
        
        IndexCellModel *model31 = [[IndexCellModel alloc] init];
        model31.name = @"无盐自然晒制鱿鱼";
        model31.imageName = @"推荐商品-2";
        model31.content = @"无盐自然晒制，青岛本地大鱿鱼";
        model31.container = @"盒装";
        model31.advice = @"015";
        model31.price = @"35.0";
        [self.dataSource addObject:model31];
        
        IndexCellModel *model32 = [[IndexCellModel alloc] init];
        model32.name = @"七彩山鸡单";
        model32.imageName = @"推荐商品-3";
        model32.content = @"纯天然无公害，产自七彩山的地道山鸡蛋";
        model32.container = @"盒装";
        model32.advice = @"030";
        model32.price = @"8.2.0";
        [self.dataSource addObject:model32];
    }
    [self createHeadView];
    [self createTableView];
}
#pragma mark - 创建createHeadView
-(void)createHeadView{
    //背景图片
    UIImageView *bgImage = [MyController createImageViewWithFrame:CGRectMake(0, 0, Screen_Width, Screen_Width * 21 / 32) ImageName:[NSString stringWithFormat:@"%@-背景",self.titleStr]];
    [self.view addSubview:bgImage];
    
    UIButton*leftButton = [[UIButton alloc]initWithFrame:CGRectMake(SPACE,30,20,20)];
    [leftButton setImage:[UIImage imageNamed:@"返回-白"]forState:UIControlStateNormal];
    [leftButton addTarget:self action:@selector(backBtnClick)forControlEvents:UIControlEventTouchUpInside];
    [bgImage addSubview:leftButton];
    
    UIButton*rightButton = [[UIButton alloc]initWithFrame:CGRectMake(Screen_Width - SPACE - 20,30,20,20)];
    [rightButton setImage:[UIImage imageNamed:@"顶部-更多"]forState:UIControlStateNormal];
    [rightButton addTarget:self action:@selector(moreClick)forControlEvents:UIControlEventTouchUpInside];
    [bgImage addSubview:rightButton];

    UILabel *shopping = [MyController createLabelWithFrame:CGRectMake(SPACE, Screen_Width * 21 / 64 - 15, 110, 50) Font:32 Text:self.titleStr];
    shopping.textColor = [UIColor whiteColor];
    [bgImage addSubview:shopping];
    //背景
    UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(SPACE, Screen_Width * 21 / 32 - 55, Screen_Width - 2 * SPACE, 30)];
    bgView.backgroundColor = [UIColor whiteColor];
    ViewBorderRadius(bgView, 5, 0, [UIColor clearColor]);
    [self.view addSubview:bgView];
    
    UIImageView *searchView = [MyController createImageViewWithFrame:CGRectMake(10, 15 / 2, 15, 15) ImageName:@"搜索"];
    [bgView addSubview:searchView];

    UITextField *tf = [MyController createTextFieldWithFrame:CGRectMake(CGRectGetMaxX(searchView.frame) + 10, 0, Screen_Width - 120, 30) placeholder:[NSString stringWithFormat:@"搜索你想找的%@",[self.titleStr substringFromIndex:1]] passWord:NO leftImageView:nil rightImageView:nil Font:14];
    tf.delegate = self;
    [bgView addSubview:tf];
}
#pragma mark - 返回响应
- (void)backBtnClick{
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark - 更多响应
- (void)moreClick{
}
#pragma mark - 创建UITableView
-(void)createTableView
{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, Screen_Width * 21 / 32 + 10, SCREEN_WIDTH, SCREEN_HEIGHT- TabBarHeight + 20) style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.backgroundColor = [MyController colorWithHexString:BGColor];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.showsVerticalScrollIndicator = NO;
    _tableView.showsHorizontalScrollIndicator = NO;

    [self.view addSubview:_tableView];
}
#pragma mark - 刷新
- (void)headerRefresh{
    NSLog(@"下拉");
}
#pragma mark - row数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;

}
#pragma mark - section数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
#pragma mark - 行高
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (kind == 1){
        id model = self.dataSource[indexPath.row];
        float heigh = [_tableView cellHeightForIndexPath:indexPath model:model keyPath:@"model" cellClass:[IndexMarketTableViewCell class] contentViewWidth:SCREEN_WIDTH];
        NSLog(@"heigh = %f",heigh);
        return heigh;
    }else if (kind == 2){
        id model = self.dataSource[indexPath.row];
        float heigh = [_tableView cellHeightForIndexPath:indexPath model:model keyPath:@"model" cellClass:[IndexTraderTableViewCell class] contentViewWidth:SCREEN_WIDTH];
        NSLog(@"heigh = %f",heigh);
        return heigh;
    }else if (kind == 3){
        id model = self.dataSource[indexPath.row];
        float heigh = [_tableView cellHeightForIndexPath:indexPath model:model keyPath:@"model" cellClass:[IndexGoodsTableViewCell class] contentViewWidth:SCREEN_WIDTH];
        NSLog(@"heigh = %f",heigh);
        return heigh;
    }else{
        return 0;
    }
}
#pragma mark - cell创建
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (kind == 1){
        IndexMarketTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"ID1"];
        if (!cell) {
            cell = [[IndexMarketTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ID1"];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        IndexCellModel* model = self.dataSource[indexPath.row];
        [cell useCellFrameCacheWithIndexPath:indexPath tableView:tableView];
        [cell setModel:model];
        return cell;
    }else if (kind == 2){
        IndexTraderTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"ID2"];
        if (!cell) {
            cell = [[IndexTraderTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ID2"];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        IndexCellModel* model = self.dataSource[indexPath.row];
        [cell useCellFrameCacheWithIndexPath:indexPath tableView:tableView];
        [cell setModel:model];
        return cell;
    }else if (kind == 3){
        IndexGoodsTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"ID3"];
        if (!cell) {
            cell = [[IndexGoodsTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ID3"];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        IndexCellModel* model = self.dataSource[indexPath.row];
        [cell useCellFrameCacheWithIndexPath:indexPath tableView:tableView];
        [cell setModel:model];
        return cell;
    }else{
        return nil;
    }
    
}

- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 40)];
    bgView.backgroundColor = [UIColor whiteColor];
    WJDropdownMenu *menu = [[WJDropdownMenu alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 40)];
    menu.delegate = self;         //  设置代理
    self.menu = menu;
    menu.menuArrowStyle = menuArrowStyleSolid; //  旋转箭头的样式(空心箭头 or 实心箭头)
    menu.tableViewMaxHeight = 200;             //  tableView的最大高度(超过此高度就可以滑动显示)
    menu.menuButtonTag = 100;                  //  menu定义了一个tag值如果与本页面的其他button的值有冲突重合可以自定义设置
    menu.CarverViewColor = [UIColor whiteColor];//设置遮罩层颜色
    menu.selectedColor = [MyController colorWithHexString:ThemeColor];   //  选中的字体颜色
    menu.unSelectedColor = [MyController colorWithHexString:BlackColor];//  未选中的字体颜色
    menu.backgroundColor = [UIColor clearColor];
    [self createAllMenuData];
    [bgView addSubview:menu];
    
    UIButton *btn = [MyController createButtonWithFrame:CGRectMake(self.view.frame.size.width * 2 / 3, 0, self.view.frame.size.width / 3, 40) ImageName:nil Target:self Action:@selector(popMenue:) Title:@"筛选"];
    [btn setTitleColor:[MyController colorWithHexString:BlackColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:12];
    btn.backgroundColor = [UIColor whiteColor];
    [bgView addSubview:btn];
    UIImageView *image = [MyController createImageViewWithFrame:CGRectMake(Screen_Width - SPACE - 20, 10, 20, 20) ImageName:@"筛选"];
    [bgView addSubview:image];
    return bgView;
}
-(void)createAllMenuData{
    NSArray *threeMenuTitleArray =  @[@"位置",@"排序",@""];
    //  创建第一个菜单的first数据second数据
    NSArray *firstArrOne = [NSArray arrayWithObjects:@"", nil];
    NSArray *firstMenu = [NSArray arrayWithObject:firstArrOne];
    
    //  创建第二个菜单的first数据second数据
    NSArray *firstArrTwo = [NSArray arrayWithObjects:@"", nil];
    NSArray *secondMenu = [NSArray arrayWithObject:firstArrTwo];
    
    //  创建第三个菜单的first数据second数据
    NSArray *firstArrThree = [NSArray arrayWithObjects:@"", nil];
    NSArray *threeMenu = [NSArray arrayWithObject:firstArrThree];

    [self.menu createThreeMenuTitleArray:threeMenuTitleArray FirstArr:firstMenu SecondArr:secondMenu threeArr:threeMenu];
}

- (void)hideMenu{
    [self.menu drawBackMenu];
}
- (void)popMenue:(UIButton *)btn{
    [self hideMenu];
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 40;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (kind == 1) {
        
    }else if (kind == 2){
        TraderDetailViewController *vc = [[TraderDetailViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

@end
