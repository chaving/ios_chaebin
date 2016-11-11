//
//  ViewController.m
//  CategoryTest
//
//  Created by chaving on 2016. 11. 9..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSString *dec = @"FF";
//    NSString *hex = [NSString stringWithFormat:@"%lX", (unsigned long)[dec floatValue]];
    
    NSScanner *hex = [[NSScanner scannerWithString:dec] scanHexInt:dec];
    NSLog(@"%@", hex);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
