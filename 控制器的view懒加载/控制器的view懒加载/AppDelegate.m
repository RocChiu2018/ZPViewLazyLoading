//
//  AppDelegate.m
//  控制器的view懒加载
//
//  Created by apple on 16/6/22.
//  Copyright © 2016年 apple. All rights reserved.
//

/**
 这个Demo无storyboard文件，要在项目的TARGETS中的General中的Deployment Info中的Main Interface后面填空，代表不用storyboard文件。
 */
#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //1、创建程序的窗口：
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    /**
     下面的代码只是创建了视图控制器，但此时此刻系统并没有加载这个新创建的视图控制器的view。
     */
    ViewController *viewController = [[ViewController alloc] init];
    
    //2、设置窗口的根视图控制器：
    self.window.rootViewController = viewController;
    
    /**
     3、设置window为主窗口并可见：
     当第一次显示的时候才会去加载之前已经创建好的视图控制器的view，而不是创建视图控制器的时候就加载view（懒加载）。
     */
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
