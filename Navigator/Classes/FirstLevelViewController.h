//
//  FirstLevelViewController.h
//  Navigator
//
//  Created by Javier Julio on 6/20/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface FirstLevelViewController : UITableViewController 
{
	NSMutableArray *mControllers; //should be plural
}

@property (nonatomic, retain) NSMutableArray *mControllers;

@end
