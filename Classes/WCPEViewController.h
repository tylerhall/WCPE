//
//  WCPEViewController.h
//  WCPE
//
//  Created by Tyler Hall on 1/14/11.
//  Copyright 2011 Click On Tyler, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface WCPEViewController : UIViewController {
	MPMoviePlayerController *player;
}

@property (nonatomic, retain) MPMoviePlayerController *player;

@end

