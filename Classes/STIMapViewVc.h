//
//  STIMapViewVc.h
//  iPadESRI
//
//  Created by LS on 2010-10-08.
//  Copyright 2010 SeeTechnologies Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ArcGIS.h"


@interface STIMapViewVc : UIViewController <AGSMapViewDelegate> 
{
	AGSMapView *mapView; 
}

@property (nonatomic, retain) IBOutlet AGSMapView *mapView;

@end
