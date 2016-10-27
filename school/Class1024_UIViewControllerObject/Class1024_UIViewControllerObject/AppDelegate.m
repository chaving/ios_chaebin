//
//  AppDelegate.m
//  Class1024_UIViewControllerObject
//
//  Created by chaving on 2016. 10. 24..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "ViewController02.h"
#import "ViewController03.h"
#import "ViewControllerWidthXib.h"
#import "ViewControllerWidthXib02.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
//    UINavigationController *vc = [storyBoard instantiateInitialViewController];
    
    
    
//    ViewController02 *vc2 = [storyBoard instantiateViewControllerWithIdentifier:@"ViewController02"];
//    ViewController02 *vc3 = [storyBoard instantiateViewControllerWithIdentifier:@"ViewController03"];
//    
    ViewControllerWidthXib *vcXib = [[ViewControllerWidthXib alloc] init];
//    ViewControllerWidthXib02 *vcXib02 = [[ViewControllerWidthXib02 alloc] init];
    
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:vcXib];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = navi;
    [self.window makeKeyAndVisible];
    
    
    NSLog(@"Did Finish Launching");
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    
    NSLog(@"Will Resing Active");
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    NSLog(@"Did Enter BG");
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    
    NSLog(@"Will Enter Foreground");
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
    NSLog(@"Did Become Active");
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    
    NSLog(@"Will Terminate");
}


@end
