//
//  ProductView.m
//  Study_Vending_Machine
//
//  Created by chaving on 2016. 10. 11..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ProductView.h"


@interface ProductView ()

// @[@{@"title":string , @"cost"}];

@property NSDictionary *data;
//@property NSString *imageName;

@end



@implementation ProductView

- (instancetype)initWithData:(NSDictionary *)data
{
    self = [super init];
    if (self) {
        
        self.data = data;
        [self creatView];
    }
    return self;
}


- (void)creatView{

    // Product Img-------------------------------------------------------
    UIImageView *img = [[UIImageView alloc] init];
    img.frame = CGRectMake(0, 0, self.frame.size.width/0.7, 215 - 50);
    img.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleWidth;
    img.contentMode = UIViewContentModeScaleAspectFit; // autoresizingMask랑 contentMode 가 같이있으면 됨.. 뭐지
    img.image = [UIImage imageNamed:[self.data objectForKey:@"imagename"]];
    [self addSubview:img];
    
    
    // Product Info - Name
    UILabel *productName = [[UILabel alloc]init];
    productName.frame = CGRectMake(0, 200-50, self.frame.size.width, 20);
    productName.text = [self.data objectForKey:@"title"];
    productName.font = [UIFont systemFontOfSize:14];
    productName.textAlignment = NSTextAlignmentCenter;
    productName.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    
    [self addSubview:productName];
    
    // Product Info - Cost
    UILabel *productCost = [[UILabel alloc]init];
    productCost.frame = CGRectMake(0, 200 - 30, self.frame.size.width, 30);
//    productCost.text = [self.itemCost objectForKey:[productInfoKey objectAtIndex:i]];
    productCost.text = [self.data objectForKey:@"cost"];
    productCost.font = [UIFont boldSystemFontOfSize:16];
    productCost.textAlignment = NSTextAlignmentCenter;
    productCost.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    
    [self addSubview:productCost];
    
    // Product View BTN ------
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    [btn addTarget:self action:@selector(onTouchupInsideItem:) forControlEvents:UIControlEventTouchUpInside];
    btn.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    [self addSubview:btn];
    
    // -----------------------

}

- (void)onTouchupInsideItem:(UIButton *)sender{

    if ([self.delegate respondsToSelector:@selector(didSelectedProductView:)]) {
        [self.delegate didSelectedProductView:self];
    }
    
}

- (NSString *)getTitle{
    
    return [self.data objectForKey:@"title"];
}

- (NSInteger)getCost{

    return [[self.data objectForKey:@"cost"] integerValue];
}


@end
