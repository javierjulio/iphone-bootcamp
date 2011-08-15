//
//  SelectorAppDelegate.h
//  Selector
//
//  Created by sk on 5/5/10.
//  Copyright Ben Sgro aka Mr-sk 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SelectorViewController;

@interface SelectorAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SelectorViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SelectorViewController *viewController;

@end

