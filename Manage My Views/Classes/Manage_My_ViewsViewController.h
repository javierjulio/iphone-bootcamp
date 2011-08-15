//
//  Manage_My_ViewsViewController.h
//  Manage My Views
//
//  Created by Javier Julio on 6/18/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Manage_My_ViewsViewController : UIViewController <UIActionSheetDelegate> {
	IBOutlet UILabel *countLabel;
	NSString *mString;
	NSMutableString *mMutableString;
	NSMutableArray *mIvarStorage;
}

@property (nonatomic, retain) IBOutlet UILabel *countLabel;
@property (nonatomic, retain) NSString *mString;
@property (nonatomic, retain) NSMutableString *mMutableString;
@property (nonatomic, retain) NSMutableArray *mIvarStorage;

- (IBAction) retainButtonPressed;
- (IBAction) releaseButtonPressed;
- (void) updateLabel:(NSUInteger)count;


@end