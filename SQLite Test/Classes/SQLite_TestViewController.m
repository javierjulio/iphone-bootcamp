//
//  SQLite_TestViewController.m
//  SQLite Test
//
//  Created by Javier Julio on 6/20/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import "SQLite_TestViewController.h"
#import "sqlite3.h"

#define DATABASE_NAME_EXT @"users"
#define DATABASE_NAME @"users"
#define DATABASE_EXT @""

@implementation SQLite_TestViewController

@synthesize nameField, ageField;
@synthesize saveControl;

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
	
	NSArray *searchPaths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
	NSString *documentFolderPath = [searchPaths	objectAtIndex:0];
	
	NSString *dbFilePath = [documentFolderPath stringByAppendingPathComponent:DATABASE_NAME_EXT];
	
	if (![[NSFileManager defaultManager] fileExistsAtPath:dbFilePath]) 
	{
		NSString *backupDbPath = [[NSBundle mainBundle] pathForResource:DATABASE_NAME ofType:DATABASE_EXT];
		
		NSLog(@"Backup path: %@", backupDbPath);
		
		if (backupDbPath == nil) 
		{
			NSLog(@"Database path is nil");
		} 
		else 
		{
			BOOL copiedBackupDb = [[NSFileManager defaultManager] copyItemAtPath:backupDbPath 
																		  toPath:dbFilePath 
																		   error:nil];
			
			if (!copiedBackupDb) 
			{
				NSLog(@"Copying database failed");
			}
		}
	}
	
	[self loadUserFromDatabase:@"SELECT * FROM users"];
}


- (IBAction) updateDatabase 
{
	NSLog(@"Save control clicked. Updating database.");
	
	[self updateUserInDatabase:[NSString stringWithFormat:@"UPDATE users SET userName = \"%@\", userAge = %@", nameField.text, ageField.text]];
}


- (void) loadUserFromDatabase:(NSString *)sqlStmt 
{
	NSArray *searchPaths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
	NSString *documentFolderPath = [searchPaths objectAtIndex:0];
	NSString *dbFilePath = [documentFolderPath stringByAppendingPathComponent:DATABASE_NAME_EXT];
	
	if (dbFilePath == NULL) 
	{
		NSLog(@"dbFilePath is null");
	}
	
	sqlite3 *dbHandle;
	int dbrc;
	dbrc = sqlite3_open([dbFilePath UTF8String], &dbHandle);
	
	if (dbrc) 
	{
		NSLog(@"sqlite3_open failed");
	}
	
	sqlite3_stmt *preparedStatement;
	const char* queryStatement = [sqlStmt UTF8String];
	dbrc = sqlite3_prepare_v2(dbHandle, queryStatement, -1, &preparedStatement, NULL);
	
	NSString *userNameFromSql;
	NSNumber *userAgeFromSql;
	
	while ((dbrc = sqlite3_step(preparedStatement)) == SQLITE_ROW) 
	{
		userNameFromSql = [NSString stringWithUTF8String:(char *) sqlite3_column_text(preparedStatement, 0)];
		userAgeFromSql = [NSNumber numberWithInt:sqlite3_column_int(preparedStatement, 1)];
	}
	NSLog(@"name: %@ -- age: %@", userNameFromSql, userAgeFromSql);
	self.nameField.text = userNameFromSql;
	self.ageField.text = [userAgeFromSql stringValue];
	
	sqlite3_finalize(preparedStatement);
	sqlite3_close(dbHandle);
}


- (void) updateUserInDatabase:(NSString *)sqlStmt 
{
	// when you alloc and init you have to release
	// when working with convenience method you DO NOT have to release, set to autorelease
	NSArray *searchPaths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
	NSString *documentFolderPath = [searchPaths objectAtIndex:0];
	NSString *dbFilePath = [documentFolderPath stringByAppendingPathComponent:DATABASE_NAME_EXT];
	
	if (dbFilePath == NULL) 
	{
		NSLog(@"dbFilePath is null");
	}
	
	sqlite3 *dbHandle;
	int dbrc;
	dbrc = sqlite3_open([dbFilePath UTF8String], &dbHandle);
	
	if (dbrc) 
	{
		NSLog(@"sqlite3_open failed");
	}
	
	sqlite3_stmt *preparedStatement;
	const char* queryStatement = [sqlStmt UTF8String];
	dbrc = sqlite3_prepare_v2(dbHandle, queryStatement, -1, &preparedStatement, NULL);
	dbrc = sqlite3_step(preparedStatement);
	
	sqlite3_finalize(preparedStatement);
	sqlite3_close(dbHandle);
}


- (BOOL) textFieldShouldReturn:(UITextField *)textField 
{
	BOOL result; // don't memory managed simple data types
	
	if (textField == nameField)
	{
		[nameField resignFirstResponder];
		result = YES;
	} 
	else if (textField == ageField) 
	{
		[ageField resignFirstResponder];
		result = YES;
	}
	
	return result;
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
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
