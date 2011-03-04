//
//  CustomAppDelegate.h
//  Custom
//
//  Created by Horace Ho on 04/03/2011.
//  Copyright 2011 Horace Ho. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainViewController;

@interface CustomAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MainViewController *mainViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MainViewController *mainViewController;

@end

