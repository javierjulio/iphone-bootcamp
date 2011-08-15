//
//  SoundViewController.h
//  Tab
//
//  Created by Javier Julio on 6/19/10.
//  Copyright 2010 9mmedia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>


@interface SoundViewController : UIViewController 
{
	SystemSoundID mShakeSoundId;
}

- (IBAction) playShake;
- (IBAction) stopShake;
- (IBAction) vibrate;

@end
