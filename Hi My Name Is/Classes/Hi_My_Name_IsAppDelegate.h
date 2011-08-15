//
//  Hi_My_Name_IsAppDelegate.h
//  Hi My Name Is
//
//  Created by Javier Julio on 6/18/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Hi_My_Name_IsViewController;

@interface Hi_My_Name_IsAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Hi_My_Name_IsViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Hi_My_Name_IsViewController *viewController;

@end

