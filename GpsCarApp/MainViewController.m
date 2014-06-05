//
//  ViewController.m
//  BaiduMapDemo_LP
//
//  Created by 林鹏 on 12/16/13.
//  Copyright (c) 2013 林鹏. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@end
@implementation ViewController
@synthesize segment;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 页面加载逻辑

    // 用于测试成功从Storyboard 加载
    NSLog(@"BaiduMap From Storyborad");
//    _mapView.mapType=BMKMapTypeSatellite;
//    _mapView.rotation=90;
//    _mapView.overlooking=-45;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated {
    [_mapView viewWillAppear];
    _mapView.delegate = self;
}

-(void)viewWillDisappear:(BOOL)animated {
    [_mapView viewWillDisappear];
    _mapView.delegate = nil;
}

-(IBAction)changeMapType:(id)sender
{
    int index = segment.selectedSegmentIndex;
    switch (index) {
        case 0:
            _mapView.mapType = BMKMapTypeStandard;
            break;
        case 1:
            _mapView.mapType = BMKMapTypeSatellite;
            break;
//        case 2:
//            _mapView.mapType = BMKMapTypeTrafficOn;
//            break;
//        case 3:
//            _mapView.mapType = BMKMapTypeTrafficAndSatellite;
//            break;
        default:
            break;
    }
}


   
-(IBAction)getLocation:(id)sender {
    _mapView.showsUserLocation=NO;
    _mapView.userTrackingMode=BMKUserTrackingModeFollow;
    _mapView.showsUserLocation=YES;
}

@end
