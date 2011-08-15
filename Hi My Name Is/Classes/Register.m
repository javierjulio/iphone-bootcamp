//
//  Register.m
//  Hi My Name Is
//
//  Created by Javier Julio on 6/18/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import "Register.h"


@implementation Register

- (id) initWithName:(NSString *)name 
{
	if (self == [super init]) 
	{
		mName = name;
	}
	
	return self;
}

- (NSUInteger) getCharacterCount:(NSString *)name 
{
	return [name length];
}

- (void) printName
{
	NSLog(@"Name = %@", mName);
}

- (void) dealloc
{
	[mName release];
	[super dealloc];
}

@end
