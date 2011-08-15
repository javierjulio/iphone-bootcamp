//
//  SQLite_TestAppDelegate.h
//  SQLite Test
//
//  Created by Javier Julio on 6/20/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SQLite_TestViewController;

@interface SQLite_TestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SQLite_TestViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SQLite_TestViewController *viewController;

@end

