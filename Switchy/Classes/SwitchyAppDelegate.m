//
//  SwitchyAppDelegate.m
//  Switchy
//
//  Created by Javier Julio on 6/19/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import "SwitchyAppDelegate.h"
#import	"SwitchViewController.h"

@implementation SwitchyAppDelegate

@synthesize window;
@synthesize switchViewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	[window addSubview:switchViewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [window release];
	[switchViewController release];
    [super dealloc];
}


@end
