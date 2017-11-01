//
//  TraderDetailViewController.m
//  FindStalls
//
//  Created by Gem on 2017/10/19.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "TraderDetailViewController.h"
#import "BaseContenModel.h"
#import "BaseContentTableViewCell.h"
@interface TraderDetailViewController ()<UITableViewDataSource,UITableViewDelegate>{
    
}
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *dataSource;

@end

@implementation TraderDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"商贩详情";
    self.dataSource = [NSMutableArray array];
    NSArray *name = @[@"商贩名称",@"籍贯",@"经营范围",@"所在市场",@"摊位编号",@"相关描述",@""];
    NSArray *content = @[@"王小二水果",@"山东-青岛",@"瓜果蔬菜、禽蛋肉类",@"武夷山市场",@"000001",@"从业已有5年多，有众多固定老顾客，进货渠道安全放心，证件齐全",@""];
    for (int i = 0; i < name.count; i ++) {
        BaseContenModel *model = [[BaseContenModel alloc] init];
        model.name = name[i];
        model.conent = content[i];
        if (i == 0) {
            model.imageName = @"已认证";
        }
        [self.dataSource addObject:model];
    }
    [self createRightNvc];
    [self createTableView];
}
#pragma mark - 更多
- (void)createRightNvc{
    UIButton*rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,30,22)];
    [rightButton setImage:[UIImage imageNamed:@"头部-更多-蓝"]forState:UIControlStateNormal];
//    rightButton.imageEdgeInsets = UIEdgeInsetsMake(0, -50, 0, 0);
    [rightButton addTarget:self action:@selector(moreClick)forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem*rightItem = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
    self.navigationItem.rightBarButtonItem= rightItem;
}
#pragma mark - 更多响应
- (void)moreClick{
}

#pragma mark - 创建UITableView
-(void)createTableView
{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 10, SCREEN_WIDTH, SCREEN_HEIGHT - 10) style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.backgroundColor = [MyController colorWithHexString:BGColor];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.showsVerticalScrollIndicator = NO;
    _tableView.showsHorizontalScrollIndicator = NO;
    [self.view addSubview:_tableView];
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
    if (indexPath.row != self.dataSource.count - 1) {
        id model = self.dataSource[indexPath.row];
        float heigh = [_tableView cellHeightForIndexPath:indexPath model:model keyPath:@"model" cellClass:[BaseContentTableViewCell class] contentViewWidth:SCREEN_WIDTH];
        NSLog(@"heigh = %f",heigh);
        return heigh;
    }else{
        return  Screen_Width * 386 / 638;
    }
}
//mi77n4@163.com
//LiZiquan168
#pragma mark - cell创建
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row != self.dataSource.count - 1) {
        BaseContentTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"ID2"];
        if (!cell) {
            cell = [[BaseContentTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ID2"];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        BaseContenModel* model = self.dataSource[indexPath.row];
        [cell useCellFrameCacheWithIndexPath:indexPath tableView:tableView];
        [cell setModel:model];
        return cell;
    }else{
        UITableViewCell *cell = [[UITableViewCell alloc]init];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.backgroundColor = [UIColor clearColor];
        //背景图片
        UIImageView *bgImage = [MyController createImageViewWithFrame:CGRectMake(0, 0, Screen_Width, Screen_Width * 386 / 638) ImageName:@"chart"];
//        bgImage.backgroundColor = [UIColor redColor];
        [cell addSubview:bgImage];
        return cell;
    }
    
}


@end
