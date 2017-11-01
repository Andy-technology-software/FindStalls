//
//  MyOrderViewController.m
//  FindStalls
//
//  Created by lingnet on 2017/10/18.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "MyOrderViewController.h"

#import "OrderAllViewController.h"

#import "OrderDaiFuViewController.h"

#import "OrderDaiPeiViewController.h"

#import "OrderDaiPingViewController.h"

#import "OrderFinishedViewController.h"
@interface MyOrderViewController ()<UIScrollViewDelegate>{
    OrderAllViewController* orderAllViewController;
    OrderDaiFuViewController* orderDaiFuViewController;
    OrderDaiPeiViewController* orderDaiPeiViewController;
    OrderDaiPingViewController* orderDaiPingViewController;
    OrderFinishedViewController* orderFinishedViewController;
}
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) HMSegmentedControl *segmentedControl;

@end

@implementation MyOrderViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    [[self rdv_tabBarController] setTabBarHidden:YES animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"我的订单";
    
    [self MakeHMSView];
    
    [self makeScrollView];
}

#pragma mark - 创建滑动切换效果
- (void)MakeHMSView{
    UIView* linV0 = [MyController viewWithFrame:CGRectMake(0, [MyController isIOS7], [MyController getScreenWidth], 10)];
    linV0.backgroundColor = [MyController colorWithHexString:@"f6f6f6"];
    [self.view addSubview:linV0];
    
    UIView* linV2 = [MyController viewWithFrame:CGRectMake(0, [MyController isIOS7] + 10 - 0.5, [MyController getScreenWidth], 0.5)];
    linV2.backgroundColor = [MyController colorWithHexString:@"ebebeb"];
    [self.view addSubview:linV2];
    
    // 创建四个按钮的地方  现在让他可以滑动
    self.segmentedControl = [[HMSegmentedControl alloc] initWithFrame:CGRectMake(0, [MyController isIOS7] + 10, [MyController getScreenWidth], 35)];
    self.segmentedControl.sectionTitles = @[@"全部", @"待付款", @"待配送", @"待评价", @"已完成"];
    self.segmentedControl.selectedSegmentIndex = 0;
    self.segmentedControl.backgroundColor = [UIColor whiteColor];
    self.segmentedControl.titleTextAttributes = @{NSForegroundColorAttributeName : [MyController colorWithHexString:@"3a3a3a"],NSFontAttributeName:[UIFont systemFontOfSize:14]};
    self.segmentedControl.selectedTitleTextAttributes = @{NSForegroundColorAttributeName : [MyController colorWithHexString:@"606fee"]};
    self.segmentedControl.selectionIndicatorColor = [MyController colorWithHexString:@"606fee"];
    self.segmentedControl.selectionStyle = HMSegmentedControlSelectionStyleFullWidthStripe;
    self.segmentedControl.selectionIndicatorHeight = 3;
    self.segmentedControl.selectionIndicatorLocation = HMSegmentedControlSelectionIndicatorLocationDown;
    
    __weak typeof(self) weakSelf = self;
    [self.segmentedControl setIndexChangeBlock:^(NSInteger index) {
        [weakSelf.scrollView scrollRectToVisible:CGRectMake([MyController getScreenWidth] * index, 0, [MyController getScreenWidth], [MyController getScreenHeight] - 40 - [MyController isIOS7]) animated:YES];
    }];
    [self.view addSubview:self.segmentedControl];
    
    UIView* linV1 = [MyController viewWithFrame:CGRectMake(0, [MyController isIOS7] + 45 - 0.5, [MyController getScreenWidth], 0.5)];
    linV1.backgroundColor = [MyController colorWithHexString:@"ebebeb"];
    [self.view addSubview:linV1];
    
}

#pragma mark - 创建第二个section上的UI
- (void)makeScrollView{
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, [MyController isIOS7] + 45 , [MyController getScreenWidth],  [MyController getScreenHeight] - [MyController isIOS7] - 45)];
    self.scrollView.backgroundColor = [UIColor clearColor];
    self.scrollView.pagingEnabled = YES;
    self.scrollView.showsHorizontalScrollIndicator = NO;
    self.scrollView.contentSize = CGSizeMake([MyController getScreenWidth] * 5,  [MyController getScreenHeight] - [MyController isIOS7] - 45);
    
    self.scrollView.delegate = self;
    [self.scrollView scrollRectToVisible:CGRectMake(0, 0, [MyController getScreenWidth],  [MyController getScreenHeight] - [MyController isIOS7] - 45) animated:NO];
    [self.view addSubview:self.scrollView];
    
    [self createSliderView];
}

#pragma mark - 创建滑动跟下拉菜单
- (void)createSliderView{
    orderAllViewController = [[OrderAllViewController alloc] init];
    orderAllViewController.view.frame = CGRectMake([MyController getScreenWidth] * 0, 0, [MyController getScreenWidth], [MyController getScreenHeight] - [MyController isIOS7] - 45);
    [self addChildViewController:orderAllViewController];
    [self.scrollView addSubview:orderAllViewController.view];
    
    orderDaiFuViewController = [[OrderDaiFuViewController alloc] init];
    orderDaiFuViewController.view.frame = CGRectMake([MyController getScreenWidth] * 1, 0, [MyController getScreenWidth], [MyController getScreenHeight] - [MyController isIOS7] - 45);
    [self addChildViewController:orderDaiFuViewController];
    [self.scrollView addSubview:orderDaiFuViewController.view];
    
    orderDaiPeiViewController = [[OrderDaiPeiViewController alloc] init];
    orderDaiPeiViewController.view.frame = CGRectMake([MyController getScreenWidth] * 2, 0, [MyController getScreenWidth], [MyController getScreenHeight] - [MyController isIOS7] - 45);
    [self addChildViewController:orderDaiPeiViewController];
    [self.scrollView addSubview:orderDaiPeiViewController.view];
    
    orderDaiPingViewController = [[OrderDaiPingViewController alloc] init];
    orderDaiPingViewController.view.frame = CGRectMake([MyController getScreenWidth] * 3, 0, [MyController getScreenWidth], [MyController getScreenHeight] - [MyController isIOS7] - 45);
    [self addChildViewController:orderDaiPingViewController];
    [self.scrollView addSubview:orderDaiPingViewController.view];
    
    orderFinishedViewController = [[OrderFinishedViewController alloc] init];
    orderFinishedViewController.view.frame = CGRectMake([MyController getScreenWidth] * 4, 0, [MyController getScreenWidth], [MyController getScreenHeight] - [MyController isIOS7] - 45);
    [self addChildViewController:orderFinishedViewController];
    [self.scrollView addSubview:orderFinishedViewController.view];
}

#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    if (![scrollView isKindOfClass:[UITableView class]]) {
        CGFloat pageWidth = scrollView.frame.size.width;
        NSInteger page = scrollView.contentOffset.x / pageWidth;
        [self.segmentedControl setSelectedSegmentIndex:page animated:YES];
        NSLog(@"-----%ld",page);
    }
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
