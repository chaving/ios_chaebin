//
//  ViewController.m
//  Class1025_Navigation
//
//  Created by chaving on 2016. 10. 25..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"
#import "ViewController02.h"
#import "ViewController03.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    [self.navigationController setNavigationBarHidden:YES];
    
//    UIButton *itemButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    itemButton.frame = CGRectMake(0, 0, 50, 44);
//    [itemButton addTarget:self action:@selector(onSelectedItem02:) forControlEvents:UIControlEventTouchUpInside];
//    [itemButton setTitle:@"Custom" forState:UIControlStateNormal];
//    [itemButton setTintColor:[UIColor whiteColor]];
//    [itemButton setBackgroundColor:[UIColor redColor]];
//    
//    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithCustomView:itemButton];
//    
//    
//    
//    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"Hello"
//                                                             style:UIBarButtonItemStylePlain
//                                                            target:self
//                                                            action:@selector(onSelectedItem:)];
//    
//    self.navigationItem.rightBarButtonItem = item;
//    self.navigationItem.leftBarButtonItem = leftButton;
  
    
//    self.navigationController.view.backgroundColor = [UIColor redColor];
    
    
    
    UIView *navigationView = [[UIView alloc] init];
    
    navigationView.frame = CGRectMake(0, 0, self.view.frame.size.width, 64);
    navigationView.backgroundColor = [UIColor colorWithRed:46.f/255.f green:150.f/255.f blue:223.f/255.f alpha:1.0];
    
    [self.navigationController.view addSubview:navigationView];
    
    
    
    UIView *navigationContentView = [[UIView alloc] init];
    
    navigationContentView.frame = CGRectMake(15, 20, self.view.frame.size.width-30, 44);
    
    [navigationView addSubview:navigationContentView];
    
    
    
    UIButton *nextButton = [[UIButton alloc] init];
    
    nextButton.frame = CGRectMake(navigationContentView.frame.size.width-100, 0, 100, 44);
    nextButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    [nextButton setTitle:@"Next >" forState:UIControlStateNormal];
    [nextButton addTarget:self action:@selector(onTouchUpToNextPage:) forControlEvents:UIControlEventTouchUpInside];
    
    [navigationContentView addSubview:nextButton];
    
    
}

- (void)onSelectedItem:(UIBarButtonItem *)sender{

    NSLog(@"Hello World!");
}

- (void)onTouchUpToNextPage:(UIButton *)sender{

    ViewController03 *vc3 = [[ViewController03 alloc] init];
    
    [self.navigationController pushViewController:vc3 animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
