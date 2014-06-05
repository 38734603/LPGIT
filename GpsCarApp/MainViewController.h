//
//  ViewController.h
//  BaiduMapDemo_LP
//
//  Created by 林鹏 on 12/16/13.
//  Copyright (c) 2013 林鹏. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BMapKit.h"

@interface ViewController : UIViewController <BMKMapViewDelegate>{
   IBOutlet BMKMapView* _mapView;
   IBOutlet UISegmentedControl* segment;
   IBOutlet UIButton* btn_locate;
}

@property (nonatomic, retain) IBOutlet UISegmentedControl* segment;

-(IBAction)changeMapType:(id)sender;

-(IBAction)getLocation:(id)sender;

@end
