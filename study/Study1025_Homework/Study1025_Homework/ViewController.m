//
//  ViewController.m
//  Study1025_Homework
//
//  Created by chaving on 2016. 10. 25..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (UIViewController*) viewControllerWithRestorationIdentifierPath:(NSArray *)identifierComponents
                                                            coder:(NSCoder *)coder {
    ViewController* vc;
    UIStoryboard* sb = [coder decodeObjectForKey:UIStateRestorationViewControllerStoryboardKey];
    if (sb) {
        vc = (ViewController*)[sb instantiateViewControllerWithIdentifier:@"ViewController"];
        vc.restorationIdentifier = [identifierComponents lastObject];
        vc.restorationClass = [ViewController class];
    }
    return vc;
}


@end
