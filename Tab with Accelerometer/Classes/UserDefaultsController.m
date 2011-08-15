//
//  UserDefaultsController.m
//  Tab
//
//  Created by Javier Julio on 6/19/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import "UserDefaultsController.h"


@implementation UserDefaultsController

@synthesize mDataInput;
@synthesize mSaveControl;

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
	
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	
	NSLog(@"Stored data value: %@", [defaults stringForKey:@"dataEntry"]);
	
	NSString *storedData = [defaults stringForKey:@"dataEntry"];
	
	if (storedData != NULL)
	{
		mDataInput.text = storedData;
	}
}


- (IBAction) save 
{
	NSLog(@"Saving data entry to NSUserDefaults");
	
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	
	NSLog(@"Text changed to: %@", mDataInput.text);
	
	[defaults setObject:mDataInput.text forKey:@"dataEntry"];
	[defaults synchronize];
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


- (BOOL) textFieldShouldReturn:(UITextField *)textField 
{
	BOOL result; // don't memory managed simple data types
	
	if (textField == mDataInput)
	{
		[mDataInput resignFirstResponder];
		result = YES;
	}
	
	return result;
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
