//
//  AccelerometerViewController.h
//  Tabs with NSUserDefaults
//
//  Created by Javier Julio on 6/20/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AccelerometerViewController : UIViewController <UIAccelerometerDelegate>
{
	UILabel *xLabel, *yLabel, *zLabel;
}

@property (nonatomic, retain) IBOutlet UILabel *xLabel, *yLabel, *zLabel;

@end
