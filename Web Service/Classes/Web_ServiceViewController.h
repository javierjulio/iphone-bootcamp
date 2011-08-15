//
//  Web_ServiceViewController.h
//  Web Service
//
//  Created by Javier Julio on 6/20/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListParser.h"

@interface Web_ServiceViewController : UIViewController 
{
	UITextView *mTextView;
	NSMutableData *mReceivedData;
}

@property (nonatomic, retain) IBOutlet UITextView *mTextView;
@property (nonatomic, retain) NSMutableData *mReceivedData;

- (IBAction) getButton;

@end

