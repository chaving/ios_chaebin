//
//  ViewController.m
//  Class1125_LastClassTT
//
//  Created by chaving on 2016. 11. 25..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
#ifdef DEBUG
    
    // 구조체 형식
    NSOperatingSystemVersion nowVersion = [[NSProcessInfo processInfo] operatingSystemVersion];
    
    [[NSProcessInfo processInfo] operatingSystemVersionString];
    
    [[UIDevice currentDevice] systemVersion];
    
    
    NSLog(@"%ld.%ld.%ld", nowVersion.majorVersion,nowVersion.minorVersion,nowVersion.patchVersion);
    
    NSLog(@"%@", [[NSProcessInfo processInfo] operatingSystemVersionString]);
    
    NSLog(@"%@", [[UIDevice currentDevice] systemVersion]);
    
#endif
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
