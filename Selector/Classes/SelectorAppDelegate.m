//
//  SelectorAppDelegate.m
//  Selector
//
//  Created by sk on 5/5/10.
//  Copyright Ben Sgro aka Mr-sk 2010. All rights reserved.
//

#import "SelectorAppDelegate.h"
#import "SelectorViewController.h"

@implementation SelectorAppDelegate

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
