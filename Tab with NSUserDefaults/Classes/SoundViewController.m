//
//  SoundViewController.m
//  Tab
//
//  Created by Javier Julio on 6/19/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import "SoundViewController.h"


@implementation SoundViewController

/*
 // The designated initializer.  Override if you create the controller programmatically and 
 // want to perform customization that is not appropriate for viewDidLoad.
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
	
	NSString *path = [[NSBundle mainBundle] pathForResource:@"shaker" ofType:@"wav"];
	AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:path], &mShakeSoundId);
}


- (IBAction) playShake 
{
	if (mShakeSoundId == 0) 
	{
		NSLog(@"recreating sound variable");
		
		NSString *path = [[NSBundle mainBundle] pathForResource:@"shaker" ofType:@"wav"];
		AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:path], &mShakeSoundId);
	}
	
	AudioServicesPlaySystemSound(mShakeSoundId);
}


- (IBAction) stopShake 
{
	AudioServicesDisposeSystemSoundID(mShakeSoundId);
	mShakeSoundId = 0;
}


- (IBAction) vibrate 
{
	AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
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
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	AudioServicesDisposeSystemSoundID(mShakeSoundId);
    [super dealloc];
}


@end
