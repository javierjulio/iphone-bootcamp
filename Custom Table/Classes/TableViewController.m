//
//  TableViewController.m
//  Table
//
//  Created by Javier Julio on 6/20/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import "TableViewController.h"
#import "CustomCell.h"

@implementation TableViewController

@synthesize mList;

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
- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.mList = [[NSArray alloc] initWithObjects:@"Windows 3.11", @"Windows 95", @"Windows 98", 
				  @"Windows ME", @"Windows NT", @"Windows 2000", 
				  @"Windows XP", @"Windows Vista", @"Windows 7", nil];
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


#pragma mark -
#pragma mark Table View Data Source Methods


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
	return [mList count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
	CustomCell *cell = [[[CustomCell alloc] init] autorelease];
	
	NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
	
	cell = [nib objectAtIndex:0];
	cell.mName.text = [mList objectAtIndex:[indexPath row]];
	
	/*
	static NSString *tableId = @"tableId";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableId];
	
	if (cell == nil)
	{
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableId] autorelease];
	}
	
	NSUInteger row = [indexPath row];
	
	cell.textLabel.text = [mList objectAtIndex:row];
	*/
	return cell;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath 
{
	return 80;
}


#pragma mark 


- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	
	mList = nil;
	[super viewDidUnload];
}


- (void)dealloc {
	[mList release];
    [super dealloc];
}

@end
