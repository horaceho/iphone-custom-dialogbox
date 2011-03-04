//
//  MainViewController.h
//  Custom
//
//  Created by Horace Ho on 04/03/2011.
//  Copyright 2011 Horace Ho. All rights reserved.
//

#import "FlipsideViewController.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate> {
	FlipsideViewController *dialogController;
}

- (IBAction)showInfo:(id)sender;

@end
