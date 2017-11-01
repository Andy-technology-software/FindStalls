//
//  MemberIndexPageViewController.m
//  FindStalls
//
//  Created by lingnet on 2017/10/16.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "MemberIndexPageViewController.h"

#import "LoginViewController.h"

#import "BaseInfoViewController.h"

#import "MyOrderViewController.h"

#import "MyGoodsViewController.h"

#import "MyBookedViewController.h"

#import "MyAccountViewController.h"

#import "MyCertificationViewController.h"

#import "MyRedEnvelopesViewController.h"

#import "MyIntegralViewController.h"

#import "RegistViewController.h"

#import "SeetingViewController.h"

#import "MemberIndex0Model.h"

#import "MemberIndex1Model.h"

#import "MemberIndex2Model.h"

#import "MemberIndex3Model.h"

#import "MemberIndex0TableViewCell.h"

#import "MemberIndex1TableViewCell.h"

#import "MemberIndex2TableViewCell.h"

#import "MemberIndex3TableViewCell.h"
@interface MemberIndexPageViewController ()<UITableViewDataSource,UITableViewDelegate,MemberIndex0TableViewCellDelegate,MemberIndex1TableViewCellDelegate,MemberIndex2TableViewCellDelegate,MemberIndex3TableViewCellDelegate>{
    UITableView* _tableView;
}
@property(nonatomic,strong)NSMutableArray* dataSourceArr0;
@property(nonatomic,strong)NSMutableArray* dataSourceArr1;
@property(nonatomic,strong)NSMutableArray* dataSourceArr3;
@property(nonatomic,strong)NSMutableArray* dataSourceArr4;

@end

@implementation MemberIndexPageViewController

#pragma mark - 换头像代理
- (void)sendBackChangeHeadimage {
    BaseInfoViewController* vc = [[BaseInfoViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];

}

#pragma mark - 设置代理
- (void)sendBackSeeting {
    SeetingViewController* vc = [[SeetingViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - 会员代理
- (void)sendBackMember {
    
}

#pragma mark - section1点击代理
- (void)sendBackSelectIndex1:(NSInteger)selectIndex {
    if (0 == selectIndex) {
        //我的账户
        MyAccountViewController* vc = [[MyAccountViewController alloc] init];
        vc.title = @"我的账户";
        [self.navigationController pushViewController:vc animated:YES];
    }else if (1 == selectIndex) {
        //我的认证
        MyCertificationViewController* vc = [[MyCertificationViewController alloc] init];
        vc.title = @"我的认证";
        [self.navigationController pushViewController:vc animated:YES];
    }else if (2 == selectIndex) {
        //我的红包
        MyRedEnvelopesViewController* vc = [[MyRedEnvelopesViewController alloc] init];
        vc.title = @"我的红包";
        [self.navigationController pushViewController:vc animated:YES];
    }else if (3 == selectIndex) {
        //我的积分
        MyIntegralViewController* vc = [[MyIntegralViewController alloc] init];
        vc.title = @"我的积分";
        [self.navigationController pushViewController:vc animated:YES];
    }
}

#pragma mark - section2点击代理
- (void)sendBackSelectIndex2:(NSInteger)selectIndex {
    
}

#pragma mark - section3/4点击代理
- (void)sendBackSelectIndex3:(NSInteger)selectIndex AndSection:(NSInteger)section{
    if (3 == section) {
        NSLog(@"我的商品");
    }else if (4 == section) {
        NSLog(@"我的预定");
    }
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    [[self rdv_tabBarController] setTabBarHidden:NO animated:YES];
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
    self.dataSourceArr3 = [[NSMutableArray alloc] init];
    
    MemberIndex0Model* model0 = [[MemberIndex0Model alloc] init];
    model0._headImage = @"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=3118170206,1575252988&fm=173&s=321AE023FA625284A79F98570300D0E9&w=500&h=304&img.JPEG";
    model0._name = @"皮卡丘";
    [self.dataSourceArr0 addObject:model0];
    
    MemberIndex1Model* model1 = [[MemberIndex1Model alloc] init];
    model1._money = @"100.00元";
    model1._renzheng = @"商贩认证";
    model1._redPCount = @"5个";
    model1._jfCount = @"100分";
    [self.dataSourceArr1 addObject:model1];
    
    MemberIndex3Model* model3 = [[MemberIndex3Model alloc] init];
    model3._goodsNameArr = [[NSMutableArray alloc] initWithObjects:@"圣女果",@"苹果", nil];
    model3._goodsPicArr = [[NSMutableArray alloc] initWithObjects:@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1508232993771&di=bd27b1d8d372ae3a660b3076c1b9e27e&imgtype=0&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fbaike%2Fpic%2Fitem%2F838ba61ea8d3fd1ffecb7d963a4e251f94ca5f58.jpg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1508233033875&di=19e505e5bba44693ac22e9f1675e8ce4&imgtype=0&src=http%3A%2F%2Fe.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F203fb80e7bec54e77afb0633b2389b504fc26a83.jpg", nil];
    [self.dataSourceArr3 addObject:model3];
    [self.dataSourceArr4 addObject:model3];
    
    [_tableView reloadData];
}


#pragma mark - 初始化tableView
- (void)createTableView{
    self.automaticallyAdjustsScrollViewInsets = NO;
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [MyController getScreenWidth], [MyController getScreenHeight] - 49) style:UITableViewStylePlain];
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
    return 5;
}

#pragma mark - 自定义tableView
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (0 == indexPath.section) {
        MemberIndex0TableViewCell *celll = [[MemberIndex0TableViewCell alloc] init];
        celll.selectionStyle = UITableViewCellSelectionStyleNone;
        celll.MemberIndex0TableViewCellDelegate = self;
        MemberIndex0Model* model = self.dataSourceArr0[indexPath.row];
        [celll configCellWithModel:model];
        return celll;

    }else if (1 == indexPath.section) {
        MemberIndex1TableViewCell *celll = [[MemberIndex1TableViewCell alloc] init];
        celll.selectionStyle = UITableViewCellSelectionStyleNone;
        celll.MemberIndex1TableViewCellDelegate = self;
        MemberIndex1Model* model = self.dataSourceArr1[indexPath.row];
        [celll configCellWithModel:model];
        return celll;

    }else if (2 == indexPath.section) {
        MemberIndex2TableViewCell *celll = [[MemberIndex2TableViewCell alloc] init];
        celll.selectionStyle = UITableViewCellSelectionStyleNone;
        celll.MemberIndex2TableViewCellDelegate = self;
        [celll configCellWithModel];
        return celll;

    }
    
    MemberIndex3TableViewCell *celll = [[MemberIndex3TableViewCell alloc] init];
    celll.selectionStyle = UITableViewCellSelectionStyleNone;
    celll.MemberIndex3TableViewCellDelegate = self;
    celll.section = indexPath.section;
    MemberIndex3Model* model = self.dataSourceArr3[indexPath.row];
    [celll configCellWithModel:model];
    return celll;
}

#pragma mark - tableView行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (0 == indexPath.section) {
        MemberIndex0Model *model = nil;
        if (indexPath.row < self.dataSourceArr0.count) {
            model = [self.dataSourceArr0 objectAtIndex:indexPath.row];
        }
        
        return [MemberIndex0TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
            MemberIndex0TableViewCell *cell = (MemberIndex0TableViewCell *)sourceCell;
            [cell configCellWithModel:model];
        }];
    }else if (1 == indexPath.section) {
        MemberIndex1Model *model = nil;
        if (indexPath.row < self.dataSourceArr1.count) {
            model = [self.dataSourceArr1 objectAtIndex:indexPath.row];
        }
        
        return [MemberIndex1TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
            MemberIndex1TableViewCell *cell = (MemberIndex1TableViewCell *)sourceCell;
            [cell configCellWithModel:model];
        }];
    }else if (2 == indexPath.section) {
        return [MemberIndex2TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
            MemberIndex2TableViewCell *cell = (MemberIndex2TableViewCell *)sourceCell;
            [cell configCellWithModel];
        }];
    }
    MemberIndex3Model *model = nil;
    if (indexPath.row < self.dataSourceArr3.count) {
        model = [self.dataSourceArr3 objectAtIndex:indexPath.row];
    }
    
    return [MemberIndex3TableViewCell hyb_heightForIndexPath:indexPath config:^(UITableViewCell *sourceCell) {
        MemberIndex3TableViewCell *cell = (MemberIndex3TableViewCell *)sourceCell;
        [cell configCellWithModel:model];
    }];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (1 < section) {
        return 46;
    }
    return 0;
}

- (UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    NSArray* titA = [[NSArray alloc] initWithObjects:@"",@"",@"我的订单",@"我的商品",@"我的预定", nil];
    UIView* bgV = [MyController viewWithFrame:CGRectMake(0, 0, [MyController getScreenWidth], 46)];
    if (1 < section) {
        UILabel* titL = [MyController createLabelWithFrame:bgV.frame Font:16 Text:titA[section]];
        [bgV addSubview:titL];
        
        [titL mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(0);
            make.left.mas_equalTo(10);
            make.height.mas_offset(45);
        }];
        
        UIImageView* tIV = [MyController createImageViewWithFrame:bgV.frame ImageName:@"更多"];
        [bgV addSubview:tIV];
        
        [tIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.mas_equalTo(bgV.mas_centerY);
            make.right.mas_equalTo(-10);
            make.height.mas_offset(20);
            make.width.mas_offset(20);
        }];
        
        UIView* linV = [MyController viewWithFrame:bgV.frame];
        linV.backgroundColor = [MyController colorWithHexString:@"f3f3f3"];
        [bgV addSubview:linV];
        
        [linV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(0);
            make.right.mas_equalTo(0);
            make.height.mas_offset(0.5);
            make.top.mas_equalTo(bgV.mas_bottom).mas_offset(-0.5);
        }];
        
        
        UIButton* btn = [MyController createButtonWithFrame:bgV.frame ImageName:nil Target:self Action:@selector(btnClick:) Title:nil];
        btn.tag = 100 + section;
        [bgV addSubview:btn];
        
        return bgV;
    }
    return nil;
}

#pragma mark - 点击头标题
- (void)btnClick:(UIButton*)btn {
    if (102 == btn.tag) {
        NSLog(@"我的订单");
        MyOrderViewController* vc = [[MyOrderViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }else if (103 == btn.tag) {
        NSLog(@"我的商品");
        MyGoodsViewController* vc = [[MyGoodsViewController alloc] init];
        vc.title = @"我的商品";
        [self.navigationController pushViewController:vc animated:YES];
    }else if (104 == btn.tag) {
        NSLog(@"我的预定");
        MyBookedViewController* vc = [[MyBookedViewController alloc] init];
        vc.title = @"我的预定";
        [self.navigationController pushViewController:vc animated:YES];
    }
}

- (void)loginBClick{
    LoginViewController* vc = [[LoginViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    
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
