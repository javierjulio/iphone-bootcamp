//
//  TouchyViewController.m
//  Navigator Touchy
//
//  Created by Javier Julio on 6/20/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import "TouchyViewController.h"


@implementation TouchyViewController

@synthesize mMessageLabel, mTapLabel, mTouchLabel;

- (void)updateLabelsFromTouch:(NSSet *)touches 
{
	NSUInteger taps = [[touches anyObject] tapCount];
	NSString *tapsMessage = [[NSString alloc] initWithFormat:@"%d taps detected", taps];
	
	self.mTapLabel.text = tapsMessage;
	[tapsMessage release];
	
	NSUInteger tmpTouches = [touches count];
	NSString *touchMessage = [[NSString alloc] initWithFormat:@"%d touches detected", tmpTouches];
	
	self.mTouchLabel.text = touchMessage;
	[touchMessage release];
}


/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

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
	mTapLabel = nil;
	mTouchLabel = nil;
	mMessageLabel = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event 
{
	self.mMessageLabel.text = @"touchesBegan";
	[self updateLabelsFromTouch:touches];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event 
{
	self.mMessageLabel.text = @"touchesCancelled";
	[self updateLabelsFromTouch:touches];
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event 
{
	self.mMessageLabel.text = @"touchesEnded";
	[self updateLabelsFromTouch:touches];
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event 
{
	self.mMessageLabel.text = @"touchesMoved / drag";
	[self updateLabelsFromTouch:touches];
}


- (void)dealloc {
	[mMessageLabel release];
	[mTapLabel release];
	[mTouchLabel release];
    [super dealloc];
}


@end
