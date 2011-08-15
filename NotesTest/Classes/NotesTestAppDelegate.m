//
//  NotesTestAppDelegate.m
//  NotesTest
//
//  Created by Javier Julio on 6/19/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import "NotesTestAppDelegate.h"
#import "RootViewController.h"


@implementation NotesTestAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions 
{
	[window addSubview:[navigationController view]];
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

