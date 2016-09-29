//
//  ViewController.m
//  class0929_UITest
//
//  Created by chaving on 2016. 9. 29..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIView *myView = [[UIView alloc]initWithFrame:CGRectMake(0, 15, 150, 100)];
//    
//    myView.backgroundColor = [[UIColor alloc] initWithRed:100.f/255.f green:0.f blue:200.f/255.f alpha:1];
//    
////    myView.alpha = 0.5;
//    
//    [self.view addSubview:myView];
//    
//    
//    UIView *secondView = [[UIView alloc] initWithFrame:CGRectMake(25, 25, 100, 50)];
//    
//    secondView.backgroundColor = [[UIColor alloc] initWithRed:0 green:0 blue:100.f/255.f alpha:1];
//    
//    [myView addSubview:secondView];

    
//    UIView *topView = [[UIView alloc] initWithFrame:CGRectMake(15, 15, 345, 100)];
//    
//    topView.backgroundColor = [UIColor redColor];
//    
//    [self.view addSubview:topView];
//
//    
//    UIView *bottomView = [[UIView alloc] initWithFrame:CGRectMake(15, 552, 345, 100)];
//    
//    bottomView.backgroundColor = [UIColor greenColor];
//    
//    [self.view addSubview:bottomView];
//    
//    
//    //제일 큰거
//    UIView *firstView = [[UIView alloc] initWithFrame:
//                         CGRectMake(15, 15, self.view.bounds.size.width-30, self.view.bounds.size.height-30)];
//    
//    firstView.backgroundColor = [UIColor blueColor];
//    
//    [self.view addSubview:firstView];
//
//    
//    //중간 크기
//    UIView *secondView = [[UIView alloc] initWithFrame:
//                          CGRectMake(15, 15, firstView.frame.size.width-30, firstView.frame.size.height-30)];
//    
//    secondView.backgroundColor = [UIColor redColor];
//    
//    [firstView addSubview:secondView];
//    
//    
//    //제일 작은거
//    UIView *thirdView = [[UIView alloc] initWithFrame:
//                          CGRectMake(15, 15, secondView.bounds.size.width-30, secondView.bounds.size.height-30)];
//    
//    thirdView.backgroundColor = [UIColor greenColor];
//    
//    [secondView addSubview:thirdView];
    
    
    
    
    
    // 파란 사각형
    UIView *firstView = [[UIView alloc] initWithFrame:
                         CGRectMake(50, self.view.bounds.size.height/2-100, self.view.bounds.size.width-100, 20)];
    
    firstView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:firstView];
    
    // 빨강 사각형
    UIView *secondView = [[UIView alloc] initWithFrame:CGRectMake(0, 20, 20, 160)];
    
    secondView.backgroundColor = [UIColor redColor];
    
    [firstView addSubview:secondView];
    
    
    // 초록 사각형
    UIView *thirdView = [[UIView alloc] initWithFrame:CGRectMake(firstView.bounds.size.width-20, 0, 20, 160)];
    
    thirdView.backgroundColor = [UIColor greenColor];
    
    [secondView addSubview:thirdView];
    
    
    // 노랑 사각형
    UIView *fourthView = [[UIView alloc] initWithFrame:CGRectMake(0, 160, self.view.bounds.size.width-100, 20)];
    
    fourthView.backgroundColor = [UIColor yellowColor];
    
    [secondView addSubview:fourthView];
    
    
//    UIView *secondView = [[UIView alloc] initWithFrame:
//                         CGRectMake(50, self.view.bounds.size.height/2-80, 20, 160)];
//    
//    secondView.backgroundColor = [UIColor redColor];
//    
//    [self.view addSubview:secondView];
//    
//    
//    
//    UIView *thirdView = [[UIView alloc] initWithFrame:
//                          CGRectMake(self.view.frame.origin.x+30+self.view.bounds.size.width-100    , self.view.bounds.size.height/2-80, 20, 160)];
//    
//    thirdView.backgroundColor = [UIColor greenColor];
//    
//    [self.view addSubview:thirdView];
//    
//    
//    
//    
//    UIView *fourthView = [[UIView alloc] initWithFrame:
//                         CGRectMake(50, self.view.bounds.size.height/2+80, self.view.bounds.size.width-100, 20)];
//    
//    fourthView.backgroundColor = [UIColor yellowColor];
//    
//    [self.view addSubview:fourthView];
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
