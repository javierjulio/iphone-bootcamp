//
//  Manage_My_ViewsAppDelegate.m
//  Manage My Views
//
//  Created by Javier Julio on 6/18/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import "Manage_My_ViewsAppDelegate.h"
#import "Manage_My_ViewsViewController.h"

@implementation Manage_My_ViewsAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
