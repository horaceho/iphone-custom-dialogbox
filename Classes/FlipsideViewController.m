//
//  FlipsideViewController.m
//  Custom
//
//  Created by Horace Ho on 04/03/2011.
//  Copyright 2011 Horace Ho. All rights reserved.
//

#import "FlipsideViewController.h"


@implementation FlipsideViewController

@synthesize delegate;
@synthesize digitLabel;

- (void)presentWithSuperview:(UIView *)superview 
{
    // Set initial location at bottom of superview
    CGRect frame = self.view.frame;
    frame.origin = CGPointMake(0.0, 0.0-superview.bounds.size.height);
    self.view.frame = frame;
    [superview addSubview:self.view];            
	
    // Animate to new location
    [UIView beginAnimations:@"presentWithSuperview" context:nil];
    frame.origin = CGPointZero;
    self.view.frame = frame;
    [UIView commitAnimations];
}

// Method called when removeFromSuperviewWithAnimation's animation completes
- (void)animationDidStop:(NSString *)animationID
                finished:(NSNumber *)finished
                 context:(void *)context 
{
    if ([animationID isEqualToString:@"removeFromSuperviewWithAnimation"]) {
        [self.view removeFromSuperview];
    }
}

// Slide this view to bottom of superview, then remove from superview
- (void)removeFromSuperviewWithAnimation 
{
    [UIView beginAnimations:@"removeFromSuperviewWithAnimation" context:nil];
	
    // Set delegate and selector to remove from superview when animation completes
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(animationDidStop:finished:context:)];
	
    // Move this view to bottom of superview
    CGRect frame = self.view.frame;
    frame.origin = CGPointMake(0.0, 0.0-self.view.superview.bounds.size.height);
    self.view.frame = frame;
	
    [UIView commitAnimations];    
}

- (void)viewDidLoad {
    [super viewDidLoad];   
}

- (IBAction)click:(id)sender 
{	
	digitLabel.text = [NSString stringWithFormat:@"%d", [sender tag]];
}

- (IBAction)done:(id)sender {
	[self.delegate flipsideViewControllerDidFinish:self];	
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


- (void)dealloc {
	[digitLabel release];
    [super dealloc];
}


@end
