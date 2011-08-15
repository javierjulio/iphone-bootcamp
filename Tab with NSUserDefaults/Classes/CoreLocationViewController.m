//
//  CoreLocationViewController.m
//  Tab
//
//  Created by Javier Julio on 6/19/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import "CoreLocationViewController.h"


@implementation CoreLocationViewController

@synthesize mLat, mLong, mAlt, mVertAcc, mHorzAcc;
@synthesize mActivityIndicator;
@synthesize mStartDistance;
@synthesize mLocationManager;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	[mActivityIndicator setHidesWhenStopped:YES];
	[mActivityIndicator startAnimating];
	
	self.mLocationManager = [[CLLocationManager alloc] init];
	self.mLocationManager.delegate = self;
	self.mLocationManager.desiredAccuracy = kCLLocationAccuracyBest;
	
	[mLocationManager startUpdatingLocation];
}


- (void) locationManager:(CLLocationManager *)manager 
	 didUpdateToLocation:(CLLocation *)newLocation 
			fromLocation:(CLLocation *)oldLocation 
{
	[mActivityIndicator stopAnimating];
	
	mLat.text = [NSString stringWithFormat:@"%g", newLocation.coordinate.latitude];
	mLong.text = [NSString stringWithFormat:@"%g", newLocation.coordinate.longitude];
	mAlt.text = [NSString stringWithFormat:@"%g", newLocation.altitude];
	mVertAcc.text = [NSString stringWithFormat:@"%g", newLocation.verticalAccuracy];
	mHorzAcc.text = [NSString stringWithFormat:@"%g", newLocation.horizontalAccuracy];
	
	[self setMStartDistance:newLocation];
	
	CLLocationDistance dist = [newLocation getDistanceFrom:mStartDistance];
	NSLog(@"%gm", dist);
}


- (void) locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error 
{
	if ([error code] == kCLErrorLocationUnknown) 
		NSLog(@"unknown error");
	
	if ([error code] == kCLErrorDenied) 
		NSLog(@"user denied");
	
	[mLocationManager stopUpdatingLocation];
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	self.mActivityIndicator = nil;
	self.mLat = nil;
	self.mLong = nil;
	self.mAlt = nil;
	self.mVertAcc = nil;
	self.mHorzAcc = nil;
	
	[mLocationManager stopUpdatingLocation];
	
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[mActivityIndicator release];
	[mLat release];
	[mLong release];
	[mAlt release];
	[mVertAcc release];
	[mHorzAcc release];
	[mLocationManager release];
	[mStartDistance release];
	
    [super dealloc];
}


@end
