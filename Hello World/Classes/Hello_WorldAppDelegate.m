//
//  Hello_WorldAppDelegate.m
//  Hello World
//
//  Created by Javier Julio on 6/18/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import "Hello_WorldAppDelegate.h"
#import "Hello_WorldViewController.h"

@implementation Hello_WorldAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"My Alert" message:@"Danger!" 
												   delegate:self cancelButtonTitle:@"Cancel?" otherButtonTitles:nil];
	
	[alert show];
	[alert release];
	
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
