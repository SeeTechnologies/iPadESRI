    //
//  STIMapViewVc.m
//  iPadESRI
//
//  Created by LS on 2010-10-08.
//  Copyright 2010 SeeTechnologies Inc. All rights reserved.
//

#import "STIMapViewVc.h"

//constants for title, search bar placeholder text and data layer
#define kViewTitle @"US State/City/River"
#define kSearchBarPlaceholder @"Find State/City/River"
#define kDynamicMapServiceURL @"http://sampleserver1.arcgisonline.com/ArcGIS/rest/services/Specialty/ESRI_StatesCitiesRivers_USA/MapServer"
#define kTiledMapServiceURL @"http://services.arcgisonline.com/ArcGIS/rest/services/ESRI_StreetMap_World_2D/MapServer"

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

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView 
{
	mapView = [[AGSMapView alloc] init];
	self.view = mapView;

	//set map view delegate
	self.mapView.mapViewDelegate = self;
	
	//create and add a base layer to map
    AGSTiledMapServiceLayer *tiledMapServiceLayer = [AGSTiledMapServiceLayer tiledMapServiceLayerWithURL:[NSURL URLWithString:kTiledMapServiceURL]];
    [self.mapView addMapLayer:tiledMapServiceLayer withName:@"World Street Map"];
	
//	//create and add dynamic layer to map
//	self.dynamicLayer = [[[AGSDynamicMapServiceLayer alloc] initWithURL:[NSURL URLWithString:kDynamicMapServiceURL]] autorelease];
//	self.dynamicLayerView = [self.mapView addMapLayer:self.dynamicLayer withName:@"Dynamic Layer"];
//	
//	//create and add graphics layer to map
//	self.graphicsLayer = [AGSGraphicsLayer graphicsLayer];
//	[self.mapView addMapLayer:self.graphicsLayer withName:@"Graphics Layer"];
//	
//	//create find task and set the delegate
//	self.findTask = [[[AGSFindTask alloc] initWithURL:[NSURL URLWithString:kDynamicMapServiceURL]] autorelease];
//	self.findTask.delegate = self;
//	
//	//create find task parameters
//	self.findParams = [[[AGSFindParameters alloc]init] autorelease];
}
*/

- (void)viewDidLoad 
{
    [super viewDidLoad];
	AGSTiledMapServiceLayer *tiledLayer = [[AGSTiledMapServiceLayer alloc] initWithURL:[NSURL URLWithString:kTiledMapServiceURL]];
	NSLog(@"%@",tiledLayer.spatialReference.wkt);
	//	NSUInteger gcsNa83wkid = 4269;
	//	NSString *gcsNa83wkt = @"";
	
	self.mapView.mapViewDelegate = self;
	[self.mapView addMapLayer:tiledLayer withName:@"Tiled Layer"];
	
	[tiledLayer release];
}

#pragma mark -
#pragma mark AGSMapViewDelegate

- (void)mapViewDidLoad:(AGSMapView *)mapView {
	
//	//zoom to dynamic layer
//	AGSEnvelope *envelope = [AGSEnvelope envelopeWithXmin:-178.217598362366 ymin:18.9247817993164 xmax:-66.9692710360024 ymax:71.4062353532712 spatialReference:self.mapView.spatialReference];
//	[self.mapView zoomToEnvelope:envelope animated:YES];

	// SITEKL: use this for initial config of mapView instead of 
	//   standard viewDidLoad or viewDidAppear
	[self.mapView.gps start];
	
//	if (!self.mapView.gps.enabled) 
//	{
//		NSLog(@"GPS not enabled");
//	}
//	else 
//	{
//		NSLog(@"GPS enabled");
//	}
//	
//	ArcGisDemo1AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
//	[self.mapView.gps addObserver:appDelegate forKeyPath:@"currentPoint" options:0 context:NULL];	
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
