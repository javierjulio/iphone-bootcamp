//
//  CustomCell.h
//  CustomTable
//
//  Created by Javier Julio on 6/20/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CustomCell : UITableViewController 
{
	UILabel *mName;
}

@property (nonatomic, retain) IBOutlet UILabel *mName;

@end
