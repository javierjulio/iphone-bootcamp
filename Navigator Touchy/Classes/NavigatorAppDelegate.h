//
//  NavigatorAppDelegate.h
//  Navigator
//
//  Created by Javier Julio on 6/20/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NavigatorAppDelegate : NSObject <UIApplicationDelegate> 
{
    UIWindow *window;
	UINavigationController *mNavigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *mNavigationController;

@end

