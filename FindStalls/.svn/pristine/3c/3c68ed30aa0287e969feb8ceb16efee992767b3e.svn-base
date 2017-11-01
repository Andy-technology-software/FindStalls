//
//  AppDelegate.m
//  FindStalls
//
//  Created by lingnet on 2017/10/16.
//  Copyright © 2017年 徐仁强. All rights reserved.
//

#import "AppDelegate.h"

#import "MemberIndexPageViewController.h"

#import "ShoppingIndexPageViewController.h"

#import "OutOfBusinessIndexPageViewController.h"

#import "IndexPageViewController.h"

#import "LoginViewController.h"
@interface AppDelegate (){
    RDVTabBarController *tabBarController;
}

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    [self setupViewControllers];
    [self.window setRootViewController:self.viewController];
    return YES;
}

- (void)setupViewControllers{
    
    IndexPageViewController *indexPageViewController = [[IndexPageViewController alloc] init];
    UINavigationController *firstNavigationController = [[UINavigationController alloc]
                                                        initWithRootViewController:indexPageViewController];
    
    OutOfBusinessIndexPageViewController *outOfBusinessIndexPageViewController = [[OutOfBusinessIndexPageViewController alloc] init];
    UINavigationController *outOfBusinessIndexPageNavigationController = [[UINavigationController alloc]
                                                         initWithRootViewController:outOfBusinessIndexPageViewController];
    
    ShoppingIndexPageViewController *shoppingIndexPageViewController = [[ShoppingIndexPageViewController alloc] init];
    UINavigationController *shoppingIndexPageNavigationController = [[UINavigationController alloc]
                                                         initWithRootViewController:shoppingIndexPageViewController];
    
    MemberIndexPageViewController *memberIndexPageViewController = [[MemberIndexPageViewController alloc] init];
    UINavigationController *memberIndexPageNavigationController = [[UINavigationController alloc]
                                                         initWithRootViewController:memberIndexPageViewController];
    
    tabBarController = [[RDVTabBarController alloc] init];
    [tabBarController.tabBar setHeight:[MyController tabBarHeight]];
    [tabBarController setViewControllers:@[firstNavigationController, outOfBusinessIndexPageNavigationController,
                                           shoppingIndexPageNavigationController,memberIndexPageNavigationController]];
    self.viewController = tabBarController;
    
    [self customizeTabBarForController:tabBarController];
}

- (void)customizeTabBarForController:(RDVTabBarController *)tabBarControllers {
    UIImage *backgroundImage = [UIImage imageNamed:@"矩形-23"];
    UIImage *finishedImage = [UIImage imageNamed:@"tabbar_selected_background"];
    UIImage *unfinishedImage = [UIImage imageNamed:@"tabbar_normal_background"];
    NSArray *tabBarItemImages = @[@"首页",@"首页",@"首页",@"首页"];
    NSArray *titleArr = @[@"首页",@"出摊",@"逛街",@"会员"];
    NSInteger index = 0;
    for (RDVTabBarItem *item in [[tabBarControllers tabBar] items]) {
        [item setBackgroundSelectedImage:finishedImage withUnselectedImage:unfinishedImage];
        UIImage *selectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@b",
                                                      [tabBarItemImages objectAtIndex:index]]];
        UIImage *unselectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@",
                                                        [tabBarItemImages objectAtIndex:index]]];
        [item setFinishedSelectedImage:selectedimage withFinishedUnselectedImage:unselectedimage];
        item.title = titleArr[index];
        index++;
        [item setBackgroundSelectedImage:backgroundImage withUnselectedImage:backgroundImage];
        
        item.selectedTitleAttributes=@{NSForegroundColorAttributeName:[MyController colorWithHexString:ThemeColor]};
        item.unselectedTitleAttributes=@{NSForegroundColorAttributeName:[MyController colorWithHexString:@"848a96"]};
        item.titlePositionAdjustment=UIOffsetMake(0, 5);
        [item setBackgroundColor:[MyController colorWithHexString:@"FFFFFF"]];
        
    }
}

- (void)setRootVC{
    self.window.rootViewController = nil;
    self.viewController = nil;
    [self setupViewControllers];
    [self.window setRootViewController:self.viewController];
    [self.window makeKeyAndVisible];
}

- (void)setLoginRoot{
    LoginViewController* vc = [[LoginViewController alloc] init];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:vc];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
