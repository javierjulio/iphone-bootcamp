//
//  Web_ServiceAppDelegate.m
//  Web Service
//
//  Created by Javier Julio on 6/20/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import "Web_ServiceAppDelegate.h"
#import "Web_ServiceViewController.h"

@implementation Web_ServiceAppDelegate

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
