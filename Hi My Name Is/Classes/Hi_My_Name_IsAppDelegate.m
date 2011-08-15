//
//  Hi_My_Name_IsAppDelegate.m
//  Hi My Name Is
//
//  Created by Javier Julio on 6/18/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import "Hi_My_Name_IsAppDelegate.h"
#import "Hi_My_Name_IsViewController.h"
#import	"Register.h"

@implementation Hi_My_Name_IsAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
	Register *object1 = [[Register alloc] init];
	[object1 printName];
	[object1 release];
	
	Register *object2 = [[Register alloc] initWithName:@"YourName"];
	[object2 printName];
	[object2 release];
	
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
