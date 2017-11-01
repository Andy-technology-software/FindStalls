//
//  LianJieViewController.m
//  易凌通
//
//  Created by 徐仁强 on 16/3/21.
//  Copyright © 2016年 徐仁强. All rights reserved.
//

#import "LianJieViewController.h"

@interface LianJieViewController ()<UIWebViewDelegate>{
    //    UIWebView *webView;
    UIActivityIndicatorView *activityIndicatorView;
}

@end

@implementation LianJieViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [[self rdv_tabBarController] setTabBarHidden:YES animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    
    [super viewWillDisappear:animated];
}

- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    UIWebView*  webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, [MyController getScreenWidth], [MyController getScreenHeight] - [MyController isIOS7])];
    webView.delegate = self;
    webView.scalesPageToFit = YES;
    webView.autoresizesSubviews = YES; //自动调整大小
   
    [self.view addSubview:webView];
    activityIndicatorView = [[UIActivityIndicatorView alloc]
                             initWithFrame : CGRectMake(0.0f, 0.0f, 32.0f, 32.0f)] ;
    [activityIndicatorView setCenter: self.view.center] ;
    [activityIndicatorView setActivityIndicatorViewStyle: UIActivityIndicatorViewStyleGray];
    activityIndicatorView.color = [MyController colorWithHexString:@"438eb6"];
    [self.view addSubview : activityIndicatorView] ;
    if (![self.urlString hasPrefix:@"http"]) {
        self.urlString = [NSString stringWithFormat:@"http://%@",self.urlString];
    }
    
    NSURL *url =[NSURL URLWithString:[NSString stringWithFormat:@"%@",self.urlString]];
    NSLog(@"链接地址-----%@",url);
    NSURLRequest *request =[NSURLRequest requestWithURL:url];
    
    [webView loadRequest:request];
    
    [self createLeftNvc];
}

- (void)createLeftNvc{
    UIButton*rightButton = [[UIButton alloc]initWithFrame:CGRectMake(0,0,74/2,87/2)];
    [rightButton setImage:[UIImage imageNamed:@"返回"]forState:UIControlStateNormal];
    rightButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    rightButton.titleEdgeInsets = UIEdgeInsetsMake(0, 6, 0, 0);
    [rightButton addTarget:self action:@selector(backBtnClick)forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem*rightItem = [[UIBarButtonItem alloc]initWithCustomView:rightButton];
    rightItem.tintColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem= rightItem;
}

- (void)backBtnClick{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)webViewDidStartLoad:(UIWebView *)webView{
    [activityIndicatorView startAnimating] ;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    [activityIndicatorView stopAnimating];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"----错误----%@",[error localizedDescription]);
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
