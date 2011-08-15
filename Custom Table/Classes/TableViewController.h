//
//  TableViewController.h
//  Table
//
//  Created by Javier Julio on 6/20/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> 
{
	NSArray *mList;
}

@property (nonatomic, retain) NSArray *mList;

@end

