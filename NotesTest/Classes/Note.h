//
//  Note.h
//  NotesTest
//
//  Created by Javier Julio on 6/19/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Note : NSObject 
{
	NSString *text;
}

@property (nonatomic, retain) NSString *text;

- (id) initWithText:(NSString*)value;

@end
