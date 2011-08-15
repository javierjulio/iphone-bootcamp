//
//  Note.m
//  NotesTest
//
//  Created by Javier Julio on 6/19/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import "Note.h"


@implementation Note

@synthesize text;

- (id) initWithText:(NSString *)value 
{
	self.text = value;
	
	return self;
}

@end
