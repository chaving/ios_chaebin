//
//  ViewController.m
//  Class0930_UI
//
//  Created by chaving on 2016. 9. 30..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    

// 라벨 연습하기 -------------------------------------------------------------------------------------------------
    
    NSInteger fullWidht = self.view.frame.size.width;
    NSInteger fullHeight = self.view.frame.size.height;
    
    UIView *contentView = [[UIView alloc] initWithFrame:
                           CGRectMake(20, 20, fullWidht-40, fullHeight-40)];
    
    [self.view addSubview:contentView];
    
    // 라벨 01
    UILabel *label01 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 150, 30)];
    
    label01.text = @"예제 화면 입니다.";
    
    [contentView addSubview:label01];
    
    // 라벨 02
    UILabel *label02 = [[UILabel alloc] initWithFrame:CGRectMake( 0, 30, fullWidht-40, 30)];
    
    label02.text = @"예쁜 레이블 입니다.";
    label02.textColor = [UIColor redColor];
    label02.textAlignment = NSTextAlignmentRight;
    
    [contentView addSubview:label02];
    
    // 노랑이 네모
    UIView *labelView = [[UIView alloc] initWithFrame:CGRectMake(0, 70, fullWidht-40, 200)];
    
    labelView.backgroundColor = [UIColor yellowColor];
    
    [contentView addSubview:labelView];
    
    
    
    // 노랑이 네모 안에 라벨
    UILabel *labelViewText = [[UILabel alloc] initWithFrame:CGRectMake(0, 170, fullWidht-40, 30)];
    
    labelViewText.text = @"View 위의 레이블 입니다.";
    labelViewText.textAlignment = NSTextAlignmentRight;
    
    [labelView addSubview:labelViewText];
    
    
    // 라벨 03
    UILabel *label03 = [[UILabel alloc] initWithFrame:CGRectMake(0, 300, fullWidht-40, 30)];
    
    label03.text = @"중앙에 있는 레이블 입니다.";
    label03.textAlignment = NSTextAlignmentCenter;
    
    [contentView addSubview:label03];
    
    // 라벨 04
    UILabel *label04 = [[UILabel alloc] initWithFrame:CGRectMake(0, 350, fullWidht-40, 30)];
    
    label04.text = @"폰트는 20 입니다.";
    label04.textAlignment = NSTextAlignmentCenter;
    
    label04.font = [UIFont systemFontOfSize:20.0];
    
    label04.highlightedTextColor = [UIColor redColor];
    
    [contentView addSubview:label04];
    
// -------------------------------------------------------------------------------------------------------
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
