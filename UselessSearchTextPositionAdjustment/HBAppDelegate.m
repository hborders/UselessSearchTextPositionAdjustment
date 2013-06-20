//
//  HBAppDelegate.m
//  UselessSearchTextPositionAdjustment
//
//  Created by Heath Borders on 6/20/13.
//  Copyright (c) 2013 Heath Borders. All rights reserved.
//

#import "HBAppDelegate.h"

@implementation HBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    UIViewController *viewController = [UIViewController new];
    
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(50, 50, 200, 100)];
    searchBar.searchTextPositionAdjustment = UIOffsetMake(100,
                                                          0);
    [viewController.view addSubview:searchBar];
    
    UILabel *directionsLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 200, 250, 200)];
    directionsLabel.lineBreakMode = NSLineBreakByWordWrapping;
    directionsLabel.numberOfLines = 0;
    directionsLabel.text = @"Start typing in the above UISearchBar. Notice how the text overflows the clear button and then clips before horizontally scrolling";
    [viewController.view addSubview:directionsLabel];
    
    self.window.rootViewController = viewController;
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
