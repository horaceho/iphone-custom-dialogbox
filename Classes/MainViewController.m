//
//  MainViewController.m
//  Custom
//
//  Created by Horace Ho on 04/03/2011.
//  Copyright 2011 Horace Ho. All rights reserved.
//

#import "MainViewController.h"


@implementation MainViewController

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[super viewDidLoad];
}

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller 
{
	if (dialogController) {
		[dialogController removeFromSuperviewWithAnimation];
	}
}

- (IBAction)showInfo:(id)sender 
{   
	if (dialogController == nil) {
		dialogController = [[FlipsideViewController alloc] initWithNibName:@"FlipsideView" bundle:nil];
	}
	if (dialogController) {
		dialogController.delegate = self;	
		[dialogController presentWithSuperview:self.view];
	}
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
	if (dialogController) {
		[dialogController release];
		dialogController = nil;
	}
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)dealloc {
	if (dialogController) {
		[dialogController release];
		dialogController = nil;
	}
    [super dealloc];
}


@end
