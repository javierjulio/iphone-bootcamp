//
//  RootViewController.m
//  NotesTest
//
//  Created by Javier Julio on 6/19/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import "RootViewController.h"
#import "NoteViewController.h"
#import "Note.h"


@implementation RootViewController

@synthesize addNoteControl;
@synthesize noteView;
@synthesize notes;

#pragma mark -
#pragma mark View lifecycle


- (void)viewDidLoad {
    [super viewDidLoad];
	
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
	self.title = @"Notes";
	
	Note *note1 = [[Note alloc] initWithText:@"Test Note 3\n\nThis is a long paragraph of text content."];
	Note *note2 = [[Note alloc] initWithText:@"Test Note 2\n\nThis is a long paragraph of text content."];
	Note *note3 = [[Note alloc] initWithText:@"Test Note 1\n\nThis is a long paragraph of text content."];
	
	// must pass nil as last argument in an NSMutableArray, otherwise will not work, why???
	self.notes = [[NSMutableArray alloc] initWithObjects:note1,note2,note3,nil];
	
	UIBarButtonItem *addBtn = [[UIBarButtonItem alloc] initWithTitle:@"Add" 
															   style:UIBarButtonSystemItemDone 
															  target:self 
															  action:@selector(addNoteControl_touchHandler:)];
	
	[self.navigationItem setRightBarButtonItem:addBtn];
	
	[addBtn release];
}


/*
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}
*/
/*
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
*/
/*
- (void)viewWillDisappear:(BOOL)animated {
	[super viewWillDisappear:animated];
}
*/
/*
- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
}
*/

/*
 // Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
 */


#pragma mark -
#pragma mark Table view data source

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
	return notes.count;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	// Configure the cell.
	
	Note *note = [self.notes objectAtIndex:indexPath.row];
	
	NSRange range = [note.text rangeOfString:@"\n"];
	
	cell.textLabel.text = [note.text substringToIndex:range.location];
	
    return cell;
}


- (void) addNoteControl_touchHandler:(id)sender 
{
	NSLog(@"Adding a new note so there are now %d notes.", notes.count);
	
	Note *note = [[Note alloc] init];
	note.text = [NSString stringWithFormat:@"Test Note %d\n\nThis is a long paragraph of text content.", notes.count+1];
	
	[self.notes insertObject:note atIndex:0];
	
	[self.tableView reloadData];
	
	[note release];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }   
}
*/


/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/


/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{
	Note *note = [notes objectAtIndex:indexPath.row];
	
	if (self.noteView == nil) 
	{
		NoteViewController *noteVC = [[NoteViewController alloc] initWithNibName:@"NoteViewController" 
                                                                    bundle:nil];
        
		self.noteView = noteVC;
        
		[noteVC release];
	}
	
    // Pass the selected object to the new view controller.
	[self.navigationController pushViewController:noteView animated:YES];
	
	NSRange range = [note.text rangeOfString:@"\n"];
	
	NSLog(@"Location: %d, Length: %d", range.location, range.length);
	
	self.noteView.title = [note.text substringToIndex:range.location];
	self.noteView.noteContent.text = note.text;
    self.noteView.note = note;
}


#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end

