//
//  IndexPageViewController.m
//  FindStalls
//
//  Created by lingnet on 2017/10/16.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "IndexPageViewController.h"
#import "IndexPageModel.h"
#import "IndexCellModel.h"
#import "IndexGoodsTableViewCell.h"
#import "IndexMarketTableViewCell.h"
#import "IndexTraderTableViewCell.h"
#import "SearchMarketViewController.h"
@interface IndexPageViewController ()<UITableViewDataSource,UITableViewDelegate>{
    
}
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *dataSource;
@property (nonatomic,strong) NSMutableArray *indexButtonSource;
@property (nonatomic,strong) NSMutableArray *sectionTitleSource;

@end

@implementation IndexPageViewController

    
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
//    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    [[self rdv_tabBarController] setTabBarHidden:NO animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
//    [[UIApplication sharedApplication] setStatusBarHidden:NO];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [MyController colorWithHexString:BGColor];
    self.dataSource = [NSMutableArray array];
    self.sectionTitleSource = [NSMutableArray arrayWithObjects:@"",@"推荐市场",@"推荐商贩",@"推荐商品", nil];
    NSArray *cont = @[@"15",@"1720",@"905",@"4310"];
    NSArray *name = @[@"找市场",@"找摊位",@"找商贩",@"找商品",@"",@"",@"",@"",@"",@"",@"",@""];
    NSArray *imageName = @[@"",@"",@"",@"",@"瓜果",@"禽蛋",@"水产品",@"小餐饮",@"日用品",@"小食品",@"粮油",@"维修"];

    self.indexButtonSource = [NSMutableArray array];
    for (int i = 0; i < name.count; i ++) {
        IndexPageModel *model = [[IndexPageModel alloc] init];
        model.name = name[i];
        if (i < cont.count) {
            model.count = cont[i];
            model.imageName = @"";
        }else{
            model.count = @"";
            model.imageName = imageName[i];
        }
        [self.indexButtonSource addObject:model];
    }
    NSMutableArray *temp = [NSMutableArray array];
    IndexCellModel *model0 = [[IndexCellModel alloc] init];
    model0.name = @"太行山路农贸市场";
    model0.imageName = @"推荐市场-1";
    model0.content = @"开发区   太行山路北468号";
    model0.container = @"农副产品";
    model0.workTime = @"9:00-18:00 (周一至周五)";
    model0.distance = @"550m";
    [temp addObject:model0];
    
    IndexCellModel *model1 = [[IndexCellModel alloc] init];
    model1.name = @"武夷山市场";
    model1.imageName = @"推荐市场-2";
    model1.content = @"开发区   九华山路119号附近";
    model1.container = @"农副产品";
    model1.workTime = @"9:00-18:00 (周一至周五)";
    model1.distance = @"10km";
    [temp addObject:model1];
    
    IndexCellModel *model2 = [[IndexCellModel alloc] init];
    model2.name = @"薛家岛爱心农贸市场";
    model2.imageName = @"推荐市场-3";
    model2.content = @"开发区   青云山路路北468号";
    model2.container = @"农副产品";
    model2.workTime = @"9:00-18:00 (周一至周五)";
    model2.distance = @"1.5km";
    [temp addObject:model2];
    
    NSMutableArray *temp2 = [NSMutableArray array];
    IndexCellModel *model20 = [[IndexCellModel alloc] init];
    model20.name = @"鼎泰丰小笼包";
    model20.content = @"开发区   太行山路路北468号";
    model20.imageName = @"推荐商贩-1";
    model20.workTime = @"9:00-18:00 (周一至周五)";
    model20.num = @"00001";
    model20.container = @"农副产品";
    model20.rank = @"9.0";
    [temp2 addObject:model20];
    
    IndexCellModel *model21 = [[IndexCellModel alloc] init];
    model21.name = @"双汇冷鲜肉";
    model21.content = @"开发区   太行山路路北468号";
    model21.imageName = @"推荐商贩-2";
    model21.workTime = @"9:00-18:00 (周一至周五)";
    model21.num = @"00002";
    model21.container = @"农副产品";
    model21.rank = @"9.4";
    [temp2 addObject:model21];
    
    IndexCellModel *model22 = [[IndexCellModel alloc] init];
    model22.name = @"静海棠干活货";
    model22.content = @"开发区   太行山路路北468号";
    model22.imageName = @"推荐商贩-3";
    model22.workTime = @"9:00-18:00 (周一至周五)";
    model22.num = @"00003";
    model22.container = @"农副产品";
    model22.rank = @"5.0";
    [temp2 addObject:model22];
    
    
    
    NSMutableArray *temp3 = [NSMutableArray array];
    IndexCellModel *model30 = [[IndexCellModel alloc] init];
    model30.name = @"纯天然圣女果";
    model30.imageName = @"推荐商品-1";
    model30.content = @"纯天然无公害，产自海南的新鲜圣女果";
    model30.container = @"袋装";
    model30.advice = @"100";
    model30.price = @"6.0";
    [temp3 addObject:model30];
    
    IndexCellModel *model31 = [[IndexCellModel alloc] init];
    model31.name = @"无盐自然晒制鱿鱼";
    model31.imageName = @"推荐商品-2";
    model31.content = @"无盐自然晒制，青岛本地大鱿鱼";
    model31.container = @"盒装";
    model31.advice = @"015";
    model31.price = @"35.0";
    [temp3 addObject:model31];
    
    IndexCellModel *model32 = [[IndexCellModel alloc] init];
    model32.name = @"七彩山鸡单";
    model32.imageName = @"推荐商品-3";
    model32.content = @"纯天然无公害，产自七彩山的地道山鸡蛋";
    model32.container = @"盒装";
    model32.advice = @"030";
    model32.price = @"8.2.0";
    [temp3 addObject:model32];
    
    [self.dataSource addObject:self.indexButtonSource];
    [self.dataSource addObject:temp];
    [self.dataSource addObject:temp2];
    [self.dataSource addObject:temp3];

    [self createTableView];
    [self createJuBao];
}
#pragma mark - 创建举报
-(void)createJuBao{
    
    UIButton *juBbao = [MyController createButtonWithFrame:CGRectMake(Screen_Width - SPACE - 80, Screen_Width * 21 / 32 + Screen_Width / 2 - 22, 82, 32) ImageName:@"纠纷举报" Target:self Action:@selector(JuBaoAction) Title:@""];
    juBbao.backgroundColor = [UIColor clearColor];
    [self.view addSubview:juBbao];
}
#pragma mark - 二维码
- (void)scanAction{
    
}
#pragma mark - 举报
- (void)JuBaoAction{
    
}
#pragma mark - 创建UITableView
-(void)createTableView
{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, -20, SCREEN_WIDTH, SCREEN_HEIGHT- TabBarHeight + 20) style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.backgroundColor = [MyController colorWithHexString:BGColor];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.showsVerticalScrollIndicator = NO;
    _tableView.showsHorizontalScrollIndicator = NO;
//    _tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
//        [self headerRefresh];
//    }];
    [self.view addSubview:_tableView];
}
#pragma mark - 刷新
- (void)headerRefresh{
    NSLog(@"下拉");
}
#pragma mark - row数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 1;
    }
    return 3;
}
#pragma mark - section数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.dataSource.count;
}
#pragma mark - 行高
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return Screen_Width * 21 / 32 + Screen_Width / 2;
    }else if (indexPath.section == 1){
        id model = self.dataSource[indexPath.section][indexPath.row];
        float heigh = [_tableView cellHeightForIndexPath:indexPath model:model keyPath:@"model" cellClass:[IndexMarketTableViewCell class] contentViewWidth:SCREEN_WIDTH];
        NSLog(@"heigh = %f",heigh);
        return heigh;
    }else if (indexPath.section == 2){
        id model = self.dataSource[indexPath.section][indexPath.row];
        float heigh = [_tableView cellHeightForIndexPath:indexPath model:model keyPath:@"model" cellClass:[IndexTraderTableViewCell class] contentViewWidth:SCREEN_WIDTH];
        NSLog(@"heigh = %f",heigh);
        return heigh;
    }else{
        id model = self.dataSource[indexPath.section][indexPath.row];
        float heigh = [_tableView cellHeightForIndexPath:indexPath model:model keyPath:@"model" cellClass:[IndexGoodsTableViewCell class] contentViewWidth:SCREEN_WIDTH];
        NSLog(@"heigh = %f",heigh);
        return heigh;
    }
}
#pragma mark - cell创建
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    if (indexPath.section == 0) {
        UITableViewCell *cell = [[UITableViewCell alloc]init];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.backgroundColor = [UIColor clearColor];
        //背景图片
        UIImageView *bgImage = [MyController createImageViewWithFrame:CGRectMake(0, 0, Screen_Width, Screen_Width * 21 / 32 + 10) ImageName:@"banner"];
        [cell addSubview:bgImage];
        UIButton *scan = [MyController createButtonWithFrame:CGRectMake(Screen_Width - SPACE - 20, 30, 20, 20) ImageName:@"二维码" Target:self Action:@selector(scanAction) Title:@""];
        scan.backgroundColor = [UIColor clearColor];
        [bgImage addSubview:scan];
        
        //背景
        UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(SPACE, Screen_Width * 21 / 32 - 60, Screen_Width - 2 * SPACE, Screen_Width / 2 + 45)];
        bgView.backgroundColor = [UIColor whiteColor];
        [cell addSubview:bgView];
        [self subViewWith:bgView];
        
        UIView *line = [[UIView alloc] initWithFrame:CGRectMake( SPACE + 5, CGRectGetMaxY(bgImage.frame), Screen_Width - 2 * SPACE - 10, 0.5)];
        line.backgroundColor = [MyController colorWithHexString:LINECOLOR];
        [cell addSubview:line];
        return cell;

    }else if (indexPath.section == 1){
        IndexMarketTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"ID1"];
        if (!cell) {
            cell = [[IndexMarketTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ID1"];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        IndexCellModel* model = self.dataSource[indexPath.section][indexPath.row];
        [cell useCellFrameCacheWithIndexPath:indexPath tableView:tableView];
        [cell setModel:model];
        return cell;
    }else if (indexPath.section == 2){
        IndexTraderTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"ID2"];
        if (!cell) {
            cell = [[IndexTraderTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ID2"];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        IndexCellModel* model = self.dataSource[indexPath.section][indexPath.row];
        [cell useCellFrameCacheWithIndexPath:indexPath tableView:tableView];
        [cell setModel:model];
        return cell;
    }else{
        IndexGoodsTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"ID3"];
        if (!cell) {
            cell = [[IndexGoodsTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ID3"];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        IndexCellModel* model = self.dataSource[indexPath.section][indexPath.row];
        [cell useCellFrameCacheWithIndexPath:indexPath tableView:tableView];
        [cell setModel:model];
        return cell;
    }
    
}
#pragma mark - 创建头视图View
- (void)subViewWith:(UIView *)bgview{
    
    UIView * _autoWidthViewsContainer = [UIView new];
    [bgview addSubview:_autoWidthViewsContainer];
    NSMutableArray *temp = [NSMutableArray new];
    for (int i = 0; i < self.indexButtonSource.count; i++) {
        IndexPageModel *model = self.indexButtonSource[i];
        UIButton *bigBtn = [UIButton new];
        [bigBtn addTarget:self action:@selector(SelectionAction:) forControlEvents:UIControlEventTouchUpInside];
        bigBtn.tag  = 100 + i;
        bigBtn.imageView.contentMode = UIViewContentModeScaleAspectFit;
        [bigBtn setBackgroundImage:[UIImage imageNamed:model.imageName] forState:UIControlStateNormal];
        [_autoWidthViewsContainer addSubview:bigBtn];
        
        UILabel *strlabel=[[UILabel alloc] init];
        strlabel.textAlignment = NSTextAlignmentCenter;
        strlabel.lineBreakMode = NSLineBreakByTruncatingTail;
        strlabel.text= model.count;
        strlabel.font=[UIFont boldSystemFontOfSize:16];
        strlabel.textColor = [MyController colorWithHexString:ThemeColor];
        [bigBtn addSubview:strlabel];
        
        UILabel *subStrlabel=[[UILabel alloc] init];
        subStrlabel.textAlignment = NSTextAlignmentCenter;
        subStrlabel.lineBreakMode = NSLineBreakByTruncatingTail;
        subStrlabel.text= model.name;
        subStrlabel.font=[UIFont systemFontOfSize:12];
        subStrlabel.textColor = [MyController colorWithHexString:TextColor];
        [bigBtn addSubview:subStrlabel];
        
        strlabel.sd_layout
        .topSpaceToView(bigBtn, 0)
        .leftSpaceToView(bigBtn,0)
        .rightSpaceToView(bigBtn,0)
        .heightIs(25);
        
        subStrlabel.sd_layout
        .topSpaceToView(strlabel, 0)
        .leftSpaceToView(bigBtn,0)
        .rightSpaceToView(bigBtn,0)
        .heightIs(25);
        
        bigBtn.sd_layout.heightIs(53); // 设置高度约束
        [temp addObject:bigBtn];
    }
    _autoWidthViewsContainer.sd_layout
    .leftSpaceToView(bgview, 0)
    .rightSpaceToView(bgview, 0)
    .topSpaceToView(bgview, 0)
    .bottomSpaceToView(bgview,0);
    
    // 此步设置之后_autoWidthViewsContainer的高度可以根据子view自适应
    
    [_autoWidthViewsContainer setupAutoMarginFlowItems:[temp copy] withPerRowItemsCount:4 itemWidth:53 verticalMargin:20 verticalEdgeInset:15 horizontalEdgeInset:20];
}
#pragma mark 按钮选择
- (void)SelectionAction:(UIButton *)btn{
    NSInteger index = btn.tag - 100;
    IndexPageModel *model = self.indexButtonSource[index];

    if ( index < 4) {
        SearchMarketViewController *vc = [[SearchMarketViewController alloc] init];
        vc.titleStr = model.name;
        [self.navigationController pushViewController:vc animated:YES];
    }
}
#pragma mark -设置header的高度
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return 0;
    }else if (section == 1){
        return 44;
    }
    return 44 + 10;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *hView;
    if (section != 0) {
       
        UIView *bgView= [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 54)];
        bgView.backgroundColor = [MyController colorWithHexString:BGColor];
        hView = [[UIView alloc]initWithFrame:CGRectMake(0, 10, SCREEN_WIDTH, 44)];
        hView.backgroundColor = [UIColor whiteColor];
        [bgView addSubview:hView];
        if (section == 1) {
            bgView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 44);
            hView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 44);

        }
        UIView *flag = [[UIView alloc] initWithFrame:CGRectMake(SPACE, 12, 4, 20)];
        ViewBorderRadius(flag, 2, 0, [UIColor clearColor]);
        flag.backgroundColor = [MyController colorWithHexString:ThemeColor];
        [hView addSubview:flag];

        UILabel *title = [MyController createLabelWithFrame:CGRectMake(CGRectGetMaxX(flag.frame) + 10 , 0 , 150, 44) Font:14 Text:self.sectionTitleSource[section]];
        title.font = [UIFont boldSystemFontOfSize:14];
        [hView addSubview:title];
        
        UIButton *moreBtn = [MyController createButtonWithFrame:CGRectMake(Screen_Width - 60 - SPACE, 0, 60, 44) ImageName:nil Target:self Action:@selector(moreAcction:) Title:@"更多"];
        moreBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        [moreBtn setTitleColor:[MyController colorWithHexString:ThemeColor] forState:UIControlStateNormal];
        moreBtn.tag = section;
        [hView addSubview:moreBtn];
        UIImageView *arrow = [MyController createImageViewWithFrame:CGRectMake(SCREEN_WIDTH - SPACE - 15, 29 / 2, 15, 15) ImageName:@"更多"];
        [hView addSubview:arrow];
        UIView *line =[[UIView alloc] initWithFrame:CGRectMake(0, 44 - 0.5, SCREEN_WIDTH, 0.5)];
        line.backgroundColor = [MyController colorWithHexString:LINECOLOR];
        [hView addSubview:line];
        return bgView;
    }else{
        hView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 0)];
        return hView;
    }
}
#pragma mark - 更多按钮跳转
- (void)moreAcction:(UIButton *)btn{
    
}
@end
