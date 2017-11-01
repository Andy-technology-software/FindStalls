//
//  ShoppingIndexPageViewController.m
//  FindStalls
//
//  Created by lingnet on 2017/10/16.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "ShoppingIndexPageViewController.h"
#import "IndexPageModel.h"
#import "IndexCellModel.h"
#import "IndexTraderTableViewCell.h"
@interface ShoppingIndexPageViewController ()<UITableViewDataSource,UITableViewDelegate>{
    UIButton *reward;
    UIButton *illegal;
    UIView *boldLine;
}
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *dataSource;
@property (nonatomic,strong) NSMutableArray *indexButtonSource;
@property (nonatomic,strong) NSMutableArray *sectionTitleSource;

@end

@implementation ShoppingIndexPageViewController

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
    self.sectionTitleSource = [NSMutableArray arrayWithObjects:@"",@"",@"商贩信息", nil];

    NSMutableArray *temp = [NSMutableArray array];
    IndexCellModel *model0 = [[IndexCellModel alloc] init];
    model0.name = @"鼎泰丰小笼包";
    model0.rank = @"9.5";
    [temp addObject:model0];
    
    IndexCellModel *model1 = [[IndexCellModel alloc] init];
    model1.name = @"百味郭豆腐（香江路店）";
    model1.rank = @"9.4";
    [temp addObject:model1];
    
    IndexCellModel *model2 = [[IndexCellModel alloc] init];
    model2.name = @"鼎泰丰小笼包";
    model2.rank = @"9.4";
    [temp addObject:model2];
    
    IndexCellModel *model3 = [[IndexCellModel alloc] init];
    model3.name = @"杨明宇黄焖鸡米饭（黄埔江路店）";
    model3.rank = @"9.3";
    [temp addObject:model3];
    
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
    
  
    [self.dataSource addObject:@""];
    [self.dataSource addObject:temp];
    [self.dataSource addObject:temp2];
    
    [self createTableView];
   
    
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
    }else if (section == 1){
        return 4;
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
        return Screen_Width * 21 / 32 + 10;
    }else if (indexPath.section == 1){
        return 40;
    }else{
        id model = self.dataSource[indexPath.section][indexPath.row];
        float heigh = [_tableView cellHeightForIndexPath:indexPath model:model keyPath:@"model" cellClass:[IndexTraderTableViewCell class] contentViewWidth:SCREEN_WIDTH];
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
        UIImageView *bgImage = [MyController createImageViewWithFrame:CGRectMake(0, 0, Screen_Width, Screen_Width * 21 / 32 + 10) ImageName:@"逛街-背景"];
        [cell addSubview:bgImage];
        
        UILabel *shopping = [MyController createLabelWithFrame:CGRectMake(SPACE, Screen_Width * 21 / 64 - 15, 110, 50) Font:32 Text:@"逛街"];
        shopping.textColor = [UIColor whiteColor];
        [bgImage addSubview:shopping];
        //背景
        UIView *bgView = [[UIView alloc] initWithFrame:CGRectMake(SPACE, Screen_Width * 21 / 32 - 55, Screen_Width - 2 * SPACE, 30)];
        bgView.backgroundColor = [UIColor whiteColor];
        ViewBorderRadius(bgView, 5, 0, [UIColor clearColor]);
        [cell addSubview:bgView];
        
        UIImageView *searchView = [MyController createImageViewWithFrame:CGRectMake(10, 15 / 2, 15, 15) ImageName:@"搜索"];
        [bgView addSubview:searchView];
        UILabel *textlabel = [MyController createLabelWithFrame:CGRectMake(CGRectGetMaxX(searchView.frame) + 10, 0, Screen_Width - 120, 30) Font:14 Text:@"搜索你想找的商贩/商品"];
        textlabel.textColor = [MyController colorWithHexString:TextColor];
        [bgView addSubview:textlabel];
        UIButton *search = [MyController createButtonWithFrame:CGRectMake(SPACE, Screen_Width * 21 / 32 - 55, Screen_Width - 2 * SPACE, 30) ImageName:nil Target:self Action:@selector(searchAction) Title:nil];
        [cell addSubview:search];
        return cell;
        
    }else if (indexPath.section == 1){
        UITableViewCell *cell = [[UITableViewCell alloc]init];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.backgroundColor = [UIColor whiteColor];
        IndexCellModel* model = self.dataSource[indexPath.section][indexPath.row];
        UILabel *textlabel = [MyController createLabelWithFrame:CGRectMake(SPACE, 0, Screen_Width - 125, 40) Font:14 Text:model.name];
        textlabel.textColor = [MyController colorWithHexString:TextColor];
        [cell addSubview:textlabel];
        
        UILabel *rank = [MyController createLabelWithFrame:CGRectMake(Screen_Width - SPACE - 95, 0, 95, 40) Font:14 Text:[NSString stringWithFormat:@"信用等级：%@",model.rank]];
        rank.textColor = [MyController colorWithHexString:TextColor];
        rank.textAlignment = NSTextAlignmentRight;
        [cell addSubview:rank];
        textlabel.textColor = [MyController colorWithHexString:BlackColor];
        rank.textColor = [MyController colorWithHexString:BlackColor];
        
        UIView *line = [[UIView alloc] initWithFrame:CGRectMake(SPACE, 40 - 0.5, Screen_Width - 2 * SPACE, 0.5)];
        line.backgroundColor = [MyController colorWithHexString:LINECOLOR];
        [cell addSubview:line];
        
        return cell;
    }else{
        IndexTraderTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"ID2"];
        if (!cell) {
            cell = [[IndexTraderTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ID2"];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        IndexCellModel* model = self.dataSource[indexPath.section][indexPath.row];
        [cell useCellFrameCacheWithIndexPath:indexPath tableView:tableView];
        [cell setModel:model];
        return cell;
    }
    
}
#pragma mark -搜索
- (void)searchAction{
    
}
#pragma mark -设置header的高度
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return 0;
    }else if (section == 1){
        return 44 + 5;
    }
    return 44 + 10;
}
#pragma mark -奖励公示
- (void)rewardAction{
    [illegal setTitleColor:[MyController colorWithHexString:TextColor] forState:UIControlStateNormal];
    [reward setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [UIView animateWithDuration:0.3 animations:^{
        boldLine.frame = CGRectMake(SPACE, 49 - 4, 80, 4);
    }];

}
#pragma mark -违法公示
- (void)illegalAction{
    [reward setTitleColor:[MyController colorWithHexString:TextColor] forState:UIControlStateNormal];
    [illegal setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [UIView animateWithDuration:0.3 animations:^{
        boldLine.frame = CGRectMake(2 * SPACE + 80, 49 - 4, 80, 4);
    }];
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
            bgView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 44 + 5);
            hView.frame = CGRectMake(0, 5, SCREEN_WIDTH, 44);
            
            reward = [MyController createButtonWithFrame:CGRectMake(SPACE, 0, 80, 44) ImageName:nil Target:self Action:@selector(rewardAction) Title:@"奖励公示"];
            reward.titleLabel.font = [UIFont boldSystemFontOfSize:14];
            [reward setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            [hView addSubview:reward];
            
            illegal = [MyController createButtonWithFrame:CGRectMake(CGRectGetMaxX(reward.frame) + SPACE, 0, 80, 44) ImageName:nil Target:self Action:@selector(illegalAction) Title:@"违法公示"];
            illegal.titleLabel.font = [UIFont boldSystemFontOfSize:14];
            [illegal setTitleColor:[MyController colorWithHexString:TextColor] forState:UIControlStateNormal];
            [hView addSubview:illegal];
            
            UIView *line = [[UIView alloc] initWithFrame:CGRectMake( 0, 49 - 0.5, Screen_Width, 0.5)];
            line.backgroundColor = [MyController colorWithHexString:LINECOLOR];
            [bgView addSubview:line];
            
            boldLine = [[UIView alloc] initWithFrame:CGRectMake(SPACE, 49 - 4, 80, 4)];
            boldLine.backgroundColor = [MyController colorWithHexString:ThemeColor];
            ViewBorderRadius(boldLine, 2, 0, [UIColor clearColor]);
            [bgView addSubview:boldLine];
            
            UIButton *moreBtn = [MyController createButtonWithFrame:CGRectMake(Screen_Width - 60 - SPACE, 0, 60, 44) ImageName:nil Target:self Action:@selector(moreAcction:) Title:@"更多"];
            moreBtn.titleLabel.font = [UIFont systemFontOfSize:13];
            [moreBtn setTitleColor:[MyController colorWithHexString:ThemeColor] forState:UIControlStateNormal];
            moreBtn.tag = section;
            [hView addSubview:moreBtn];
            UIImageView *arrow = [MyController createImageViewWithFrame:CGRectMake(SCREEN_WIDTH - SPACE - 15, 29 / 2, 15, 15) ImageName:@"更多"];
            [hView addSubview:arrow];
            
        }else{
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
        }
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
