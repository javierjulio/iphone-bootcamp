//
//  Parser.h
//  ttrack
//
//  Created by Edward Patel on 2009-10-11.
//  Copyright 2009 Memention AB. All rights reserved.
//
//  Jan-20-2010: Ben Sgro: Added the NSXMLParserDelegate Protocol
//                         to this class.

#import <Foundation/Foundation.h>


@interface ListParser : NSObject {
	NSMutableString *activeText;
	NSMutableArray *list;
	NSMutableArray *fieldNames;
    NSMutableArray *attributeNames;
}

+ (ListParser*)parser;
- (id)init;
- (void)parseData:(NSData*)data;
- (void)parseString:(NSString*)string;
- (NSArray*)list;
- (int)numEntries;

- (void)addFieldName:(NSString*)name;
- (void)addAttributeName:(NSString *)name; // Ben Sgro - Added for attributes

@end
