//
//  FlipsideViewController.h
//  Custom
//
//  Created by Horace Ho on 04/03/2011.
//  Copyright 2011 Horace Ho. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FlipsideViewControllerDelegate;


@interface FlipsideViewController : UIViewController {
	id <FlipsideViewControllerDelegate> delegate;
	UILabel *digitLabel;
}

@property (nonatomic, retain) IBOutlet UILabel *digitLabel;

- (void)presentWithSuperview:(UIView *)superview;
- (void)removeFromSuperviewWithAnimation;

@property (nonatomic, assign) id <FlipsideViewControllerDelegate> delegate;

- (IBAction)click:(id)sender;
- (IBAction)done:(id)sender;

@end


@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

