//
//  ViewController.m
//  Study1025
//
//  Created by chaving on 2016. 10. 25..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"
#import "WingNaviBar.h"
#import "ViewController02.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIView *navigationView = [[UIView alloc] init];
//    
//    navigationView.frame = CGRectMake(0, 0, self.view.frame.size.width, 64);
//    navigationView.backgroundColor = [UIColor colorWithRed:46.f/255.f green:150.f/255.f blue:223.f/255.f alpha:1.0];
//    
//    [self.navigationController.view addSubview:navigationView];
//    
//    
//    
//    UIView *navigationContentView = [[UIView alloc] init];
//    
//    navigationContentView.frame = CGRectMake(15, 20, self.view.frame.size.width-30, 44);
//    
//    [navigationView addSubview:navigationContentView];
//    
//    
//    
//    UIButton *nextButton = [[UIButton alloc] init];
//    
//    nextButton.frame = CGRectMake(navigationContentView.frame.size.width-100, 0, 100, 44);
//    nextButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
//    [nextButton setTitle:@"Next >" forState:UIControlStateNormal];
//    [nextButton addTarget:self action:@selector(onTouchUpToNextPage:) forControlEvents:UIControlEventTouchUpInside];
//    
//    [navigationContentView addSubview:nextButton];
    
    
    [self.navigationController setNavigationBarHidden:YES];
    
    WingNaviBar *viewNavi = [[WingNaviBar alloc] initWithType:WingNaviBarTypeAdd ViewController:self target:self action:@selector(onTouchUpToNextPage:)];
    

    
}


- (void)onTouchUpToNextPage:(UIButton *)sender{
    
    ViewController02 *vc2 = [[ViewController02 alloc] init];
    
    [self.navigationController pushViewController:vc2 animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
