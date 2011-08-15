//
//  TouchyViewController.h
//  Navigator Touchy
//
//  Created by Javier Julio on 6/20/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TouchyViewController : UIViewController 
{
	UILabel *mMessageLabel;
	UILabel *mTapLabel;
	UILabel *mTouchLabel;
}

@property (nonatomic, retain) IBOutlet UILabel *mMessageLabel, *mTapLabel, *mTouchLabel;

- (void) updateLabelsFromTouch:(NSSet *)touches;

@end
