//
//  AppDelegate.m
//  Notifications
//
//  Created by Michael Ghattas on 2014-07-14. Test
//  Copyright (c) 2014 Ghattas. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate;

int badgeNumber = 0;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
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
    //RESET BADGE NUMBER TO ZERO
    application.applicationIconBadgeNumber = 0;
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    NSNumber *badgeCounter = [NSNumber numberWithInt:0];
    [prefs setObject:badgeCounter forKey:@"badgeCounter"];
    [prefs synchronize];
    
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification{
    //SET AN ALERT
    
}

@end
