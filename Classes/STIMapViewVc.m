    //
//  STIMapViewVc.m
//  iPadESRI
//
//  Created by LS on 2010-10-08.
//  Copyright 2010 SeeTechnologies Inc. All rights reserved.
//

#import "STIMapViewVc.h"


@implementation STIMapViewVc

@synthesize mapView;


-(id)init
{
	[super initWithNibName:nil bundle:nil];
	
	return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil 
{
    return [self init];
}


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView 
{
	mapView = [[MKMapView alloc] init];
	self.view = mapView;
}


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
    return YES;
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
