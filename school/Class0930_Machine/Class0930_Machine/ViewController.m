//
//  ViewController.m
//  Class0930_Machine
//
//  Created by chaving on 2016. 9. 30..
//  Copyright © 2016년 chaving. All rights reserved.
//
#import <QuartzCore/QuartzCore.h>
#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    NSInteger fullWidth = self.view.frame.size.width;
    NSInteger fullHeight = self.view.frame.size.height-35;
    
    // 메인 뷰
    UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(20, 35, fullWidth-40, fullHeight-20)];
    [self.view addSubview:containerView];
    
    // 자판기 이름 부분
    UILabel *machineName = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, fullWidth-40, 30)];
    machineName.text = @"Yeezy Boost Machine";
    machineName.textAlignment = NSTextAlignmentCenter;
    machineName.font = [UIFont systemFontOfSize:25];
    
    [containerView addSubview:machineName];
    
    
    // 상단 제품 영역 ---------------------------------------------------------------------------------------------
    
    // 자판기 제품 영역
    UIView *productView = [[UIView alloc] initWithFrame:CGRectMake(0, 50, fullWidth-40, 410)];
    [machineName addSubview:productView];
    
    
    // 1번 제품
    UIView *product01 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, (fullWidth-50)/2, 200)];
    
    [productView addSubview:product01];
    
    // 제품 이미지
    UIImageView *product01img = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, (fullWidth-50)/2, 150)];
    product01img.image = [UIImage imageNamed:@"nikeyeezy01"];
    product01img.contentMode = UIViewContentModeScaleAspectFit;
    
    [product01 addSubview:product01img];
    
    // 제품 가격
    UILabel *product01Price = [[UILabel alloc] initWithFrame:CGRectMake(0, 160, (fullWidth-50)/2, 40)];
    product01Price.text = @"199900 원";
    product01Price.textAlignment = NSTextAlignmentCenter;
    
    product01Price.layer.borderColor = [UIColor colorWithRed:225.f/255.f green:225.f/255.f blue:225.f/255.f alpha:1].CGColor;
    product01Price.layer.borderWidth = 1.0;
    product01Price.layer.cornerRadius = 5.0;
    
    [product01 addSubview:product01Price];
    
    // 오버 버튼
    UIButton *productButton01 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, (fullWidth-50)/2, 200)];
    [product01 addSubview:productButton01];
    
    
    
    // 2번 제품
    UIView *product02 = [[UIView alloc] initWithFrame:CGRectMake((fullWidth-50)/2+10, 0, (fullWidth-50)/2, 200)];
//    product02.backgroundColor = [UIColor blueColor];
    
    [productView addSubview:product02];
    
    // 제품 이미지
    UIImageView *product02img = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, (fullWidth-50)/2, 150)];
    product02img.image = [UIImage imageNamed:@"nikeyeezy02"];
    product02img.contentMode = UIViewContentModeScaleAspectFit;
    
    [product02 addSubview:product02img];
    
    // 제품 가격
    UILabel *product02Price = [[UILabel alloc] initWithFrame:CGRectMake(0, 160, (fullWidth-50)/2, 40)];
    product02Price.text = @"199900 원";
    product02Price.textAlignment = NSTextAlignmentCenter;
    
    product02Price.layer.borderColor = [UIColor colorWithRed:225.f/255.f green:225.f/255.f blue:225.f/255.f alpha:1].CGColor;
    product02Price.layer.borderWidth = 1.0;
    product02Price.layer.cornerRadius = 5.0;
    
    [product02 addSubview:product02Price];
    
    // 오버 버튼
    UIButton *productButton02 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, (fullWidth-50)/2, 200)];
    [product02 addSubview:productButton02];
    
    
    // 3번 제품
    UIView *product03 = [[UIView alloc] initWithFrame:CGRectMake(0, 210, (fullWidth-50)/2, 200)];
//    product03.backgroundColor = [UIColor blueColor];
    
    [productView addSubview:product03];
    
    // 제품 이미지
    UIImageView *product03img = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, (fullWidth-50)/2, 150)];
    product03img.image = [UIImage imageNamed:@"yeezy_boost01"];
    product03img.contentMode = UIViewContentModeScaleAspectFit;
    
    [product03 addSubview:product03img];
    
    // 제품 가격
    UILabel *product03Price = [[UILabel alloc] initWithFrame:CGRectMake(0, 160, (fullWidth-50)/2, 40)];
    product03Price.text = @"234000 원";
    product03Price.textAlignment = NSTextAlignmentCenter;
    
    product03Price.layer.borderColor = [UIColor colorWithRed:225.f/255.f green:225.f/255.f blue:225.f/255.f alpha:1].CGColor;
    product03Price.layer.borderWidth = 1.0;
    product03Price.layer.cornerRadius = 5.0;
    
    [product03 addSubview:product03Price];
    
    // 오버 버튼
    UIButton *productButton03 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, (fullWidth-50)/2, 200)];
    [product03 addSubview:productButton03];
    
    
    // 4번 제품
    UIView *product04 = [[UIView alloc] initWithFrame:CGRectMake((fullWidth-50)/2+10, 210, (fullWidth-50)/2, 200)];
//    product04.backgroundColor = [UIColor blueColor];
    
    [productView addSubview:product04];
    
    // 제품 이미지
    UIImageView *product04img = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, (fullWidth-50)/2, 150)];
    product04img.image = [UIImage imageNamed:@"yeezy_boost02"];
    product04img.contentMode = UIViewContentModeScaleAspectFit;
    
    [product04 addSubview:product04img];
    
    // 제품 가격
    UILabel *product04Price = [[UILabel alloc] initWithFrame:CGRectMake(0, 160, (fullWidth-50)/2, 40)];
    product04Price.text = @"234000 원";
    product04Price.textAlignment = NSTextAlignmentCenter;
    
    product04Price.layer.borderColor = [UIColor colorWithRed:225.f/255.f green:225.f/255.f blue:225.f/255.f alpha:1].CGColor;
    product04Price.layer.borderWidth = 1.0;
    product04Price.layer.cornerRadius = 5.0;
    
    [product04 addSubview:product04Price];
    
    // 오버 버튼
    UIButton *productButton04 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, (fullWidth-50)/2, 200)];
    [product04 addSubview:productButton04];
    
    
    // 중간 가격 영역 ---------------------------------------------------------------------------------------------
    UIView *priceView = [[UIView alloc] initWithFrame:CGRectMake(0, 425, fullWidth-40, 100)];
    priceView.backgroundColor = [UIColor grayColor];
    
    [productView addSubview:priceView];
    
    
    // 하단 버튼 영역 ---------------------------------------------------------------------------------------------
    UIView *buttonLayerView = [[UIView alloc] initWithFrame:CGRectMake(0, 115, fullWidth-40, 60)];
    [priceView addSubview:buttonLayerView];
    
    // 1번 버튼
    UILabel *button01 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, (fullWidth-70)/4, 60)];

    button01.text = @"100000원";
    button01.textColor = [UIColor grayColor];
    button01.textAlignment = NSTextAlignmentCenter;
    
    button01.layer.borderColor = [UIColor grayColor].CGColor;
    button01.layer.borderWidth = 1.0;
    button01.layer.cornerRadius = 10;
    
    [buttonLayerView addSubview:button01];
    
    
    NSInteger buttonSize = button01.bounds.size.width;
    
    
    // 2번 버튼
    UILabel *button02 = [[UILabel alloc] initWithFrame:CGRectMake(buttonSize+10, 0, (fullWidth-70)/4, 60)];
    
    button02.text = @"50000원";
    button02.textColor = [UIColor grayColor];
    button02.textAlignment = NSTextAlignmentCenter;
    
    button02.layer.borderColor = [UIColor grayColor].CGColor;
    button02.layer.borderWidth = 1.0;
    button02.layer.cornerRadius = 10;
    
    [button01 addSubview:button02];
    
    
    // 3번 버튼
    UILabel *button03 = [[UILabel alloc] initWithFrame:CGRectMake(buttonSize+10, 0, (fullWidth-70)/4, 60)];
    
    button03.text = @"10000원";
    button03.textColor = [UIColor grayColor];
    button03.textAlignment = NSTextAlignmentCenter;
    
    button03.layer.borderColor = [UIColor grayColor].CGColor;
    button03.layer.borderWidth = 1.0;
    button03.layer.cornerRadius = 10;
    
    [button02 addSubview:button03];
    
    
    // 4번 버튼
    UILabel *button04 = [[UILabel alloc] initWithFrame:CGRectMake(buttonSize+10, 0, (fullWidth-70)/4, 60)];
    
    button04.text = @"5000원";
    button04.textColor = [UIColor grayColor];
    button04.textAlignment = NSTextAlignmentCenter;
    
    button04.layer.borderColor = [UIColor grayColor].CGColor;
    button04.layer.borderWidth = 1.0;
    button04.layer.cornerRadius = 10;
    
    [button03 addSubview:button04];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
