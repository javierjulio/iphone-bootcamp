//
//  Manage_My_ViewsAppDelegate.h
//  Manage My Views
//
//  Created by Javier Julio on 6/18/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Manage_My_ViewsViewController;

@interface Manage_My_ViewsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Manage_My_ViewsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Manage_My_ViewsViewController *viewController;

@end

