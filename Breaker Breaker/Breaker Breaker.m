#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	// create an array of 3 elements
	NSMutableArray *array1 = [[NSMutableArray alloc] initWithObjects:@"first", @"second", @"third", nil];
	
	// oh, forgot, gotta remove that last entry! won't remove nil
	// nil won't get added anyway because of initWithObjects
	//[array1 removeLastObject];
	
	// get the length of the array
	int numElements = [array1 count];
	
	NSLog(@"%d elements in array1", numElements);
	
	// iterate through the array, NSLog'ing the value of each element
	for (int c = 0; c < numElements; c++) 
	{
		NSLog(@"array1[%d] = %@", c, [array1 objectAtIndex:c]);
	}
	
	// display the object at index 1
	NSLog(@"About to display array1 index 1 element");
	NSLog(@"array1[1] = %@", [array1 objectAtIndex:1]);
	
	// we're done, let em go
	[array1 release];
	
    [pool drain];
    return 0;
}
