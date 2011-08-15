//
//  MoveItController.h
//  Navigator
//
//  Created by Javier Julio on 6/20/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondLevelViewController.h"


@interface MoveItController : SecondLevelViewController 
{
	NSMutableArray *mList;
}

@property (nonatomic, retain) NSMutableArray *mList;

- (IBAction) moveButton;

@end
