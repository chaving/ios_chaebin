//
//  ViewController.m
//  Study1026_homeworkTest
//
//  Created by chaving on 2016. 10. 26..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIViewControllerRestoration>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setRestorationClass:[UIViewController class]];
    // Do any additional setup after loading the view, typically from a nib.
}

+ (nullable UIViewController *) viewControllerWithRestorationIdentifierPath:(NSArray *)identifierComponents coder:(NSCoder *)coder {
    
    return [self new];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
