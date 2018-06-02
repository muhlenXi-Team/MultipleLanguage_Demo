//
//  AppDelegate.m
//  SuperBaseXib
//
//  Created by muhlenXi on 2016/12/7.
//  Copyright © 2016年 XiYinjun. All rights reserved.
//

#import "AppDelegate.h"
#import "XYJFirstViewController.h"
#import "XYJSecondViewController.h"
#import "XYJThirdViewController.h"
#import "XYJFourthViewController.h"

#import "XYJLanguageTool.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.window.rootViewController = [self GetWindowRootViewController];
    
    [self.window makeKeyAndVisible];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(UpDateLanguageUI) name:@"UpDateLanguageUI" object:nil];
    
    return YES;
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


#pragma mark - Set UIViewControllers

- (UITabBarController *) GetWindowRootViewController
{
    
    XYJFirstViewController * alarmVC = [[XYJFirstViewController alloc] initWithNibName:@"XYJFirstViewController" bundle:nil];
    UINavigationController * alarmNav = [[UINavigationController alloc] initWithRootViewController:alarmVC];
    alarmNav.navigationBar.translucent = NO;
    
    XYJSecondViewController * medicineVC = [[XYJSecondViewController alloc] initWithNibName:@"XYJSecondViewController" bundle:nil];
    UINavigationController * medicineNav = [[UINavigationController alloc] initWithRootViewController:medicineVC];
    medicineNav.navigationBar.translucent = NO;
    
    XYJThirdViewController * setingsVC = [[XYJThirdViewController alloc] initWithNibName:@"XYJThirdViewController" bundle:nil];
    UINavigationController * setingsNav = [[UINavigationController alloc] initWithRootViewController:setingsVC];
    setingsNav.navigationBar.translucent = NO;
    
    XYJFourthViewController * findVC = [[XYJFourthViewController alloc] initWithNibName:@"XYJFourthViewController" bundle:nil];
    UINavigationController * findNav = [[UINavigationController alloc] initWithRootViewController:findVC];
    findNav.navigationBar.translucent = NO;
    
    UITabBarController * tabbarController = [[UITabBarController alloc] init];
    //tabbarController.tabBar.translucent = NO;
    tabbarController.viewControllers = @[alarmNav,medicineNav,setingsNav,findNav];
    NSArray * items = tabbarController.tabBar.items;
    UITabBarItem * alarmItem = [items firstObject];
    alarmItem.title = XYJGetStringWithKey(@"Alarm clock");
    
    UITabBarItem * medicineItem = items[1];
    medicineItem.title = XYJGetStringWithKey(@"Medicine");
    
    UITabBarItem * setingsItem = items[2];
    setingsItem.title = XYJGetStringWithKey(@"Setings");
    
    UITabBarItem * findItem = items[3];
    findItem.title = XYJGetStringWithKey(@"Find Band");
    
    return tabbarController;
}

- (void) UpDateLanguageUI
{
    self.window.rootViewController = [self GetWindowRootViewController];
}
@end
