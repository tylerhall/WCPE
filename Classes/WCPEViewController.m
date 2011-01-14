//
//  WCPEViewController.m
//  WCPE
//
//  Created by Tyler Hall on 1/14/11.
//  Copyright 2011 Click On Tyler, LLC. All rights reserved.
//

#import "WCPEViewController.h"

@implementation WCPEViewController

@synthesize player;

- (void)viewDidLoad {
    [super viewDidLoad];
	
	[[UIApplication sharedApplication] beginReceivingRemoteControlEvents];
	
	AVAudioSession *audioSession = [AVAudioSession sharedInstance];
	
	NSError *setCategoryError = nil;
	[audioSession setCategory:AVAudioSessionCategoryPlayback error:&setCategoryError];
	if (setCategoryError) { /* handle the error condition */ }
	
	NSError *activationError = nil;
	[audioSession setActive:YES error:&activationError];
	if (activationError) { /* handle the error condition */ }
	
	NSURL *myURL = [NSURL URLWithString:@"http://www.ibiblio.org/wcpe/wcpe.pls"];
	self.player = [[MPMoviePlayerController alloc] initWithContentURL:myURL];
	[self.player.view setFrame:[self.view bounds]];
	[self.view addSubview:self.player.view];
	[self.player play];	
}

- (void)dealloc {
	[player release];
    [super dealloc];
}

@end
