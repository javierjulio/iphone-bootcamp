//
//  Register.h
//  Hi My Name Is
//
//  Created by Javier Julio on 6/18/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Register : NSObject {
	NSString *mName;
}

// excepting a pointer variable of type NSString
- (id) initWithName:(NSString *) name;
- (NSUInteger) getCharacterCount:(NSString *) name;
- (void) printName;

@end
