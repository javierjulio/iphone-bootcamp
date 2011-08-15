//
//  NavigatorAppDelegate.m
//  Navigator
//
//  Created by Javier Julio on 6/20/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import "NavigatorAppDelegate.h"

@implementation NavigatorAppDelegate

@synthesize window;
@synthesize mNavigationController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	[window addSubview:mNavigationController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [window release];
	[mNavigationController release];
    [super dealloc];
}


@end
