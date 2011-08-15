//
//  FirstLevelViewController.m
//  Navigator
//
//  Created by Javier Julio on 6/20/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import "FirstLevelViewController.h"
#import "SecondLevelViewController.h"
#import	"MoveItController.h"
#import "TouchyViewController.h"


@implementation FirstLevelViewController 

@synthesize mControllers;

- (void)viewDidLoad 
{
	[super viewDidLoad];
	
	self.title = @"First Level";
	self.mControllers = [[NSMutableArray alloc] init];
	
	// Move it
	MoveItController *moveController = [[MoveItController alloc] initWithStyle:UITableViewStylePlain];
	moveController.title = @"Move It!";
	[mControllers addObject:moveController];
	[moveController release];
	
	// Touchy
	TouchyViewController *touchController = [[TouchyViewController alloc] init];
	touchController.title = @"Touch It!";
	[mControllers addObject:touchController];
	[touchController release];
}

- (void) viewDidUnload 
{
	mControllers = nil;
	[super viewDidUnload];
}

- (void) dealloc 
{
	[mControllers release];
	[super dealloc];
}


// Table datasource methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
	return [mControllers count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
	static NSString *firstLevelCellId = @"firstLevelCellId";
	
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:firstLevelCellId];
	
	if (cell == nil) 
	{
		cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:firstLevelCellId] autorelease];
	}
	
	SecondLevelViewController *controller = [mControllers objectAtIndex:[indexPath row]];
	cell.textLabel.text = controller.title;
	
	return cell;
}


// Table view delegate methods

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
	SecondLevelViewController *nextController = [mControllers objectAtIndex:[indexPath row]];
	[self.navigationController pushViewController:nextController animated:YES];
}


@end
