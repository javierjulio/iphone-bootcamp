//
//  Web_ServiceAppDelegate.h
//  Web Service
//
//  Created by Javier Julio on 6/20/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Web_ServiceViewController;

@interface Web_ServiceAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Web_ServiceViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Web_ServiceViewController *viewController;

@end

