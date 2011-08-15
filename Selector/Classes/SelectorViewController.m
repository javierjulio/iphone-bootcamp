//
//  SelectorViewController.m
//  Selector
//
//  Created by sk on 5/5/10.
//  Copyright Ben Sgro aka Mr-sk 2010. All rights reserved.
//

#import "SelectorViewController.h"

@implementation SelectorViewController

- (void) doSomething
{
    mCount++;
}


/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    mCount = 0;
    
    [self doSomething];
    NSLog(@"value = %d", mCount);

    [self performSelector:@selector(doSomething)];
    NSLog(@"value = %d", mCount);
    
    SEL selectorString = @selector(doSomething);
    [self performSelector:selectorString];
    NSLog(@"value = %d", mCount);
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
