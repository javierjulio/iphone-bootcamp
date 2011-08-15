//
//  CoreLocationViewController.h
//  Tab
//
//  Created by Javier Julio on 6/19/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>


@interface CoreLocationViewController : UIViewController <CLLocationManagerDelegate>
{
	CLLocationManager *mLocationManager;
	CLLocation *mStartDistance;
	
	IBOutlet UILabel *mLat, *mLong, *mAlt, *mVertAcc, *mHorzAcc;
	IBOutlet UIActivityIndicatorView *mActivityIndicator;
}

@property (nonatomic, retain) IBOutlet UILabel *mLat, *mLong, *mAlt, *mVertAcc, *mHorzAcc;
@property (nonatomic, retain) IBOutlet UIActivityIndicatorView *mActivityIndicator;
@property (nonatomic, retain) CLLocation *mStartDistance;
@property (nonatomic, retain) CLLocationManager *mLocationManager;

@end
