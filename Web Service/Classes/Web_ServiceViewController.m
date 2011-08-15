//
//  Web_ServiceViewController.m
//  Web Service
//
//  Created by Javier Julio on 6/20/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import "Web_ServiceViewController.h"

@implementation Web_ServiceViewController

@synthesize mTextView;
@synthesize mReceivedData;

- (IBAction) getButton 
{
	NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"http://192.168.1.37/~sk/bootcamp/service/"]];
	NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
	
	if (!connection) 
	{
		self.mTextView.text = @"Unable to connent";
	}
	
	[request release];
}


- (void) connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response 
{
	self.mReceivedData = [[NSMutableData alloc] init];
}


- (void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data 
{
	[mReceivedData appendData:data];
}


- (void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error 
{
	[connection release];
	mReceivedData = nil;
	
	self.mTextView.text = @"Connection failed";
}


- (void) connectionDidFinishLoading:(NSURLConnection *)connection 
{
	NSString *requestBody = [[NSString alloc] initWithData:mReceivedData encoding:NSUTF8StringEncoding];
	
	ListParser *parser = [ListParser parser];
	[parser addAttributeName:@"name"];
	[parser parseData:[requestBody dataUsingEncoding:NSUTF8StringEncoding]];
	
	NSArray *list = [[NSArray alloc] initWithArray:[parser list]];
	
	mTextView.text = [NSString stringWithFormat:@"%@%@\n", mTextView.text, [list objectAtIndex:0]];
	mTextView.text = [NSString stringWithFormat:@"%@%@\n", mTextView.text, [list objectAtIndex:1]];
	mTextView.text = [NSString stringWithFormat:@"%@%@", mTextView.text, [list objectAtIndex:2]];
	
	[connection release];
	[list release];
	[requestBody release];
	mReceivedData = nil;
}

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
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	mTextView = nil;
}


- (void)dealloc {
	[mTextView release];
	[mReceivedData release];
    [super dealloc];
}

@end
