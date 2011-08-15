//
//  DetailViewController.h
//  Countries
//
//  Created by Javier Julio on 10/15/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DetailViewController : UIViewController 
{
	IBOutlet UILabel *labelDisplay;
	
	NSString *selectedCountry;
}

@property (nonatomic, retain) IBOutlet UILabel *labelDisplay;
@property (nonatomic, retain) NSString *selectedCountry;

@end