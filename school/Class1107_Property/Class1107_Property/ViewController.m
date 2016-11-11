//
//  ViewController.m
//  Class1107_Property
//
//  Created by chaving on 2016. 11. 7..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Person *yagom = [[Person alloc] init];
    
    [yagom setPersonName:@"야곰"];
    [yagom setPersonAge:28];
    
    [yagom printPersonInfo];
    
    NSLog(@"이름 : %@", [yagom personName]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
