//
//  AccelerometerViewController.m
//  Tabs with NSUserDefaults
//
//  Created by Javier Julio on 6/20/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import "AccelerometerViewController.h"


@implementation AccelerometerViewController

@synthesize xLabel, yLabel, zLabel;

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
	
	[[UIAccelerometer sharedAccelerometer] setUpdateInterval:.1];
	[[UIAccelerometer sharedAccelerometer] setDelegate:self];
}


- (void) accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration 
{
	xLabel.text = [NSString stringWithFormat:@"%f", acceleration.x];
	yLabel.text = [NSString stringWithFormat:@"%f", acceleration.y];
	zLabel.text = [NSString	stringWithFormat:@"%f", acceleration.z];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	xLabel = nil;
	yLabel = nil;
	zLabel = nil;
	
    [super dealloc];
}


@end
