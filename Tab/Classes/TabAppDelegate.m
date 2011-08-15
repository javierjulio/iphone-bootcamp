//
//  TabAppDelegate.m
//  Tab
//
//  Created by Javier Julio on 6/19/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import "TabAppDelegate.h"

@implementation TabAppDelegate

@synthesize window;
@synthesize rootController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	[window addSubview:rootController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
	[rootController release];
    [window release];
    [super dealloc];
}


@end
