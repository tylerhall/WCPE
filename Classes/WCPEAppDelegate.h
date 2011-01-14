//
//  WCPEAppDelegate.h
//  WCPE
//
//  Created by Tyler Hall on 1/14/11.
//  Copyright 2011 Click On Tyler, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WCPEViewController;

@interface WCPEAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    WCPEViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet WCPEViewController *viewController;

@end

