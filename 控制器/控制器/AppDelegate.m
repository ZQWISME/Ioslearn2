//
//  AppDelegate.m
//  控制器
//
//  Created by stu1 on 2018/11/12.
//  Copyright © 2018年 abc. All rights reserved.
//

#import "AppDelegate.h"
#import "MyViewController.h"
#import "eeViewController.h"
#import "TwoViewController.h"
#import "ThreeController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    //创建window
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
//    //创建ViewControlle
    //纯代码
//    MyViewController *myVC = [[MyViewController alloc]init];
//    myVC.view.backgroundColor = [UIColor blueColor];
    //xib
//    eeViewController *myvc = [[eeViewController alloc]init];
    
    //Storyboard
   // UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
   // UIViewController *myvc = [sb instantiateViewControllerWithIdentifier:@"abc"];
    //TwoViewController * myvc = [[TwoViewController alloc]init];
    ThreeController *myvc = [[ThreeController alloc]init];
    //将xib初始化为一个View
    UIView *view = [[[NSBundle mainBundle] loadNibNamed:@"comment" owner:myvc options:nil]firstObject];
    myvc.view = view;
    myvc.view.backgroundColor = [UIColor cyanColor];
    //设置widow的根控制器
    
    self.window.rootViewController = myvc;
    //显示Widow
    [self.window makeKeyAndVisible];
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


@end
