//
//  Manage_My_ViewsViewController.m
//  Manage My Views
//
//  Created by Javier Julio on 6/18/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import "Manage_My_ViewsViewController.h"

@implementation Manage_My_ViewsViewController

@synthesize countLabel;
@synthesize mString;
@synthesize mMutableString;
@synthesize	mIvarStorage;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad 
{
    [super viewDidLoad];
	
	self.mMutableString = [[NSMutableString alloc] initWithString:@"a string"];
	
	self.mString = [[NSString alloc] initWithString:@"another string"];
	
	// creating NSMutableArray increments reference count to 1
	// by storing and setting it to mIvarStorage which has a property
	// to retain it automatically increments the reference count to 2
	self.mIvarStorage = [[NSMutableArray alloc] initWithCapacity:10];
	
	self.countLabel.text = [NSString stringWithFormat:@"%d", [mMutableString retainCount]];
}


- (IBAction) retainButtonPressed 
{
	[self.mIvarStorage addObject:mMutableString];
	[self updateLabel:[mMutableString retainCount]];
}


- (IBAction) releaseButtonPressed 
{
	if ([mIvarStorage count] > 0) 
	{
		// allowing this to happen on a count of zero would cause a crash
		[mIvarStorage removeLastObject];
	}
	else 
	{
		UIActionSheet *aSheet = [[UIActionSheet alloc] initWithTitle:@"Warning" 
															delegate:self 
												   cancelButtonTitle:@"Don't do it!" 
											  destructiveButtonTitle:@"Just do it!" 
												   otherButtonTitles:nil];
		
		[aSheet showInView:self.view];
		[aSheet release];
	}
	
	[self updateLabel:[mMutableString retainCount]];
}


- (void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex 
{
	if (buttonIndex == 0) 
		NSLog(@"On second thought, I'd better not!");
	
	if (buttonIndex == 1) 
		NSLog(@"Excellent choice!");
}


- (void) updateLabel:(NSUInteger)count 
{
	self.countLabel.text = [NSString stringWithFormat:@"%d", count];
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
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[mIvarStorage release];
	[mMutableString release];
	[mString release];
	
    [super dealloc];
}

@end
