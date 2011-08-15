//
//  SwitchViewController.h
//  Switchy
//
//  Created by Javier Julio on 6/19/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BadNewsViewController;
@class GoodNewsViewController;

@interface SwitchViewController : UIViewController 
{
	BadNewsViewController *mBadNewsViewController;
	GoodNewsViewController *mGoodNewsViewController;
}

@property (nonatomic, retain) BadNewsViewController *mBadNewsViewController;
@property (nonatomic, retain) GoodNewsViewController *mGoodNewsViewController;

- (IBAction) switchView:(id)sender;

@end
