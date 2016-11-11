//
//  ViewController.m
//  Class1107_ValueControl
//
//  Created by chaving on 2016. 11. 7..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"
#import "UserData.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *fullNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *hobbyLabel;

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.ageLabel.text = [[UserData sharedUserInfo] age];
    self.hobbyLabel.text = [[UserData sharedUserInfo] hobby];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[UserData sharedUserInfo] addObserver:self
                                forKeyPath:@"userId"
                                   options:NSKeyValueObservingOptionNew
                                   context:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
