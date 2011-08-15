//
//  UserDefaultsController.h
//  Tab
//
//  Created by Javier Julio on 6/19/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UserDefaultsController : UIViewController <UITextFieldDelegate> 
{
	UITextField *mDataInput;
	UIButton *mSaveControl;
}

@property (nonatomic, retain) IBOutlet UITextField *mDataInput;
@property (nonatomic, retain) IBOutlet UIButton *mSaveControl;

- (IBAction) save;

@end
