//
//  ViewController.m
//  Study_Vending_Machine
//
//  Created by chaving on 2016. 10. 3..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// 필요한 데이터
@property (nonatomic)NSArray *productImageName;
@property (nonatomic)NSDictionary *productInfoData;
@property (nonatomic)NSArray *inputCostData;

// 만들어야 할 뷰
// 큰틀
@property (nonatomic,weak)UIView *productContainer;
@property (nonatomic,weak)UIView *displayView;
@property (nonatomic,weak)UIView *inputView;
// 큰틀 안에 들어 갈것
@property (nonatomic)NSMutableArray *productViews;
@property (nonatomic,weak)UILabel *displayLB;
@property (nonatomic)NSMutableArray *inputBtns;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.productImageName = @[@"nikeyeezy01",@"nikeyeezy02",@"yeezy_boost01",@"yeezy_boost02"];
    self.productInfoData = @{@"Nike Yeezy 1":@"234,000 원",
                             @"Nike Yeezy 2":@"234,000 원",
                             @"Yeezy Boost 1":@"199,000 원",
                             @"Yeezy Boost 2":@"199,000 원"};
    self.inputCostData = @[@"100000원",@"50000원",@"10000원",@"5000원"];
    
    self.productViews = [[NSMutableArray alloc]init];
    self.inputBtns = [[NSMutableArray alloc]init];
    
    [self creatUiView];
    [self updateLayout];
    
}

// Creat UI
- (void)creatUiView{
    
    // Base UI View
    UIView *productContainer = [[UIView alloc]init];
    productContainer.backgroundColor = [UIColor clearColor];
    [self.view addSubview:productContainer];
    
    self.productContainer = productContainer;
    
    NSArray *productInfoKey = self.productInfoData.allKeys;
    
    // Product UI View
    for(NSInteger i = 0; i < 4; i++){
    
        // Product View
        UIView *productView = [[UIView alloc]init];
        productView.backgroundColor = [UIColor whiteColor];
        productView.tag = i;
        
        [self.productContainer addSubview:productView];
        [self.productViews addObject:productView];
        
        
        // Product Image
//        UIImageView *img = [[UIImageView alloc]init];
//        img.frame = CGRectMake(0, 0, productView.frame.size.width, 200 - 50);
//        img.contentMode = UIViewContentModeScaleAspectFit;
//        img.image = [UIImage imageNamed:[self.productImageName objectAtIndex:i]];
//        
//        [productView addSubview:img];
        
        
        UIImageView *img = [[UIImageView alloc] init];
        img.frame = CGRectMake(0, 0, productView.frame.size.width, 200 - 50);
        img.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        img.contentMode = UIViewContentModeScaleAspectFit; // autoresizingMask랑 contentMode 가 같이있으면 됨.. 뭐지
        img.image = [UIImage imageNamed:[self.productImageName objectAtIndex:i]];
        [productView addSubview:img];
        
        
        // Product Info - Name
        UILabel *productName = [[UILabel alloc]init];
        productName.frame = CGRectMake(0, 200-50, productView.frame.size.width, 20);
        productName.text = [productInfoKey objectAtIndex:i];
        productName.font = [UIFont systemFontOfSize:14];
        productName.textAlignment = NSTextAlignmentCenter;
        productName.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        
        [productView addSubview:productName];
        
        // Product Info - Cost
        UILabel *productCost = [[UILabel alloc]init];
        productCost.frame = CGRectMake(0, 200 - 30, productView.frame.size.width, 30);
        productCost.text = [self.productInfoData objectForKey:[productInfoKey objectAtIndex:i]];
        productCost.font = [UIFont boldSystemFontOfSize:16];
        productCost.textAlignment = NSTextAlignmentCenter;
        productCost.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        
        [productView addSubview:productCost];
        
        // Product View BTN ------
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(0, 0, productView.frame.size.width, productView.frame.size.height);
//        [btn addTarget:self action:@selector(onTouchupInsideItem:) forControlEvents:UIControlEventTouchUpInside];
        btn.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        btn.tag = i;
        [productView addSubview:btn];
        
        // -----------------------
        
    }
    
    // Product Display View
    UIView *displayView = [[UIView alloc]init];
    displayView.layer.borderColor = [UIColor colorWithRed:225.f/255.f green:225.f/255.f blue:225.f/255.f alpha:1].CGColor;
    displayView.layer.borderWidth = 1.0;
    displayView.layer.cornerRadius = 5.0;
    
    [self.view addSubview:displayView];
    self.displayView = displayView;
    
    UILabel *displayLB = [[UILabel alloc]init];
    
    displayLB.text = @"0";
    displayLB.font = [UIFont boldSystemFontOfSize:35];
    displayLB.textAlignment = NSTextAlignmentRight;
    [displayView addSubview:displayLB];
    
    self.displayLB = displayLB;
    
    // Product Input View
    UIView *inputView = [[UIView alloc]init];
    inputView.backgroundColor = [UIColor clearColor];
    
    [self.view addSubview:inputView];
    self.inputView = inputView;
    
    
    // Product Input bTN
    for(NSInteger i = 0; i < [self.inputCostData count]; i++){
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [btn addTarget:self action:@selector(onTouchupInsideCoin:) forControlEvents:UIControlEventTouchUpInside];
        btn.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin|  UIViewAutoresizingFlexibleHeight;
        [btn setTitle:[self.inputCostData objectAtIndex:i] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateHighlighted];
        btn.tag = i;
        
        btn.titleLabel.font = [UIFont systemFontOfSize:13];
        
        btn.layer.borderColor = [UIColor colorWithRed:225.f/255.f green:225.f/255.f blue:225.f/255.f alpha:1].CGColor;
        btn.layer.borderWidth = 1.0;
        btn.layer.cornerRadius = 5.0;
        
        [inputView addSubview:btn];
        [self.inputBtns addObject:btn];
    
    }

}


// Layout UI
- (void)updateLayout{

    // Base OffSet Y
    CGFloat baseViewOffSetY = 35;
    
    self.productContainer.frame = CGRectMake(20, baseViewOffSetY, self.view.frame.size.width-40, 400+10);
    
    baseViewOffSetY += self.productContainer.frame.size.height+20;
    
    // Product View
    const NSInteger productViewMargin = 10;
    
    for(UIView *productView in self.productViews){
        
        NSInteger row = productView.tag/2;
        NSInteger cal = productView.tag%2;
        
        CGFloat productViewWidth = (self.productContainer.frame.size.width-10)/2;
        CGFloat productViewHeight = (self.productContainer.frame.size.height-10)/2;
        
        productView.frame = CGRectMake((productViewWidth + productViewMargin)*row,
                                       (productViewHeight + productViewMargin)*cal,
                                       productViewWidth,
                                       productViewHeight);
        
    }
    
    
    // Product Display View
    self.displayView.frame = CGRectMake(20, baseViewOffSetY, self.view.frame.size.width-40, 150);
    baseViewOffSetY += self.displayView.frame.size.height+15;
    
    self.displayLB.frame = CGRectMake(15, 10, self.displayView.frame.size.width-30, self.displayView.frame.size.height-20);
    
    // Product Input View
    self.inputView.frame = CGRectMake(20, baseViewOffSetY, self.view.frame.size.width-40,45);
    CGFloat btnWidth = self.inputView.frame.size.width/[self.inputBtns count] - 10;
    
    for(UIView *inputBtn in self.inputBtns){
        inputBtn.frame = CGRectMake(5 + ((btnWidth + 10)*inputBtn.tag), 0, btnWidth, 45);
    }

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
