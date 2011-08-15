//
//  SQLite_TestViewController.h
//  SQLite Test
//
//  Created by Javier Julio on 6/20/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SQLite_TestViewController : UIViewController <UITextFieldDelegate> 
{
	UITextField *nameField;
	UITextField *ageField;
	UIButton *saveControl;
}

@property (nonatomic, retain) IBOutlet UITextField *nameField, *ageField;
@property (nonatomic, retain) IBOutlet UIButton *saveControl;

- (IBAction) updateDatabase;

- (void) loadUserFromDatabase:(NSString *)sqlStmt;

- (void) updateUserInDatabase:(NSString *)sqlStmt;

@end

