//
//  ViewController.m
//  Class1121_MapKit
//
//  Created by chaving on 2016. 11. 21..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet MKMapView *map;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(37.264082, 126.958668);
    
    MKCoordinateSpan span = MKCoordinateSpanMake(0.1, 0.1);
    
    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate, span);
    
    [self.map setRegion:region];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
