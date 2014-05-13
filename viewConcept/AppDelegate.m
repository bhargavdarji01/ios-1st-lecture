//
//  AppDelegate.m
//  viewConcept
//
//  Created by User1 on 2014-05-12.
//  Copyright (c) 2014 GMolton. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
   
     self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
     // Override point for customization after application launch.
    
    self.window.rootViewController=[UIViewController new];
    
    

    UIView* mainview = self.window.rootViewController.view;
    
    
    UIView* v = [[UIView alloc] initWithFrame:CGRectMake(1, 100, 100, 115)];
    
    UIView* v2 = [[UIView alloc] initWithFrame:CGRectMake(v.bounds.size.width+20,100, 100, 115)];
    
    
    UIView* v3  = [[UIView alloc] initWithFrame:CGRectMake(v2.bounds.size.width+20, 100, 100,115)];
    CGRectInset(v2.bounds, 15, 15);
    
    v.backgroundColor=[UIColor orangeColor];
    v2.backgroundColor=[UIColor whiteColor];
    v3.backgroundColor=[UIColor greenColor];
    v2.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    v3.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin ;
    
    
    mainview.backgroundColor=[UIColor blueColor];
    [mainview addSubview:v];
   [v  addSubview:v2];
    [v2  addSubview:v3];
    
    CGRect r= v2.bounds;
    r.size.height += 40;
    r.size.width -= 50;
    v.bounds = r;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
