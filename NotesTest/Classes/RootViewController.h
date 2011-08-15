//
//  RootViewController.h
//  NotesTest
//
//  Created by Javier Julio on 6/19/10.
//  Copyright 9mmedia 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NoteViewController.h"

@interface RootViewController : UITableViewController 
{
	UIButton *addNoteControl;
	NoteViewController *noteView;
	NSMutableArray *notes;
}

@property (nonatomic, retain) IBOutlet UIButton *addNoteControl;
@property (nonatomic, retain) NoteViewController *noteView;
@property (nonatomic, retain) NSMutableArray *notes;

- (IBAction) addNoteControl_touchHandler:(id)sender;

@end
