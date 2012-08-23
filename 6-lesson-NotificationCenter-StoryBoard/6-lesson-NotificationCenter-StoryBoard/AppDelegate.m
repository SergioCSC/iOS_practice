//
//  AppDelegate.m
//  lesson_6_notification_center
//
//  Created by Administrator on 22.08.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"%s", __PRETTY_FUNCTION__);    
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    [[NSNotificationCenter defaultCenter] postNotificationName:@"saveAll" object:nil];
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */

}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    [[NSNotificationCenter defaultCenter] postNotificationName:@"loadAll" object:nil];
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
    
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
    [[NSNotificationCenter defaultCenter] postNotificationName:@"saveAll" object:nil];
     /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
