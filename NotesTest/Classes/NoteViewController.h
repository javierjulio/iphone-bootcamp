//
//  NoteViewController.h
//  NotesTest
//
//  Created by Javier Julio on 6/19/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface NoteViewController : UIViewController <UITextViewDelegate>
{
	UITextView *noteContent;
    NSObject *note;
}

@property (nonatomic, retain) IBOutlet UITextView *noteContent;
@property (nonatomic, retain) NSObject *note;

@end
