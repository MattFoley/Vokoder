//
//  VIAppDelegate.m
//  CoreData
//
//  Created by Anthony Alesia on 7/26/12.
//  Copyright (c) 2012 Vokal. All rights reserved.
//

#import "VIAppDelegate.h"
#import "VOKCoreDataManager.h"
#import "VIPagingViewController.h"

@implementation VIAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[VOKCoreDataManager sharedInstance] setResource:@"VIPagingDataModel" database:@"VIPagingDataModel.sqlite"];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    VIPagingViewController *viewController = [[VIPagingViewController alloc] initWithStyle:UITableViewStylePlain];
    self.navController = [[UINavigationController alloc] initWithRootViewController:viewController];
    self.window.rootViewController = self.navController;
    [self.window makeKeyAndVisible];
    return YES;
}

+ (VIAppDelegate *)appDelegate
{
    return (VIAppDelegate *)[[UIApplication sharedApplication] delegate];
}

@end
