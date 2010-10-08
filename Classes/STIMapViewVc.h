//
//  STIMapViewVc.h
//  iPadESRI
//
//  Created by LS on 2010-10-08.
//  Copyright 2010 SeeTechnologies Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface STIMapViewVc : UIViewController 
{
	MKMapView *mapView;
}

@property (nonatomic, retain) MKMapView *mapView;

@end
