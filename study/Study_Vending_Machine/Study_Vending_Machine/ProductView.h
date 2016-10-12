//
//  ProductView.h
//  Study_Vending_Machine
//
//  Created by chaving on 2016. 10. 11..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <UIKit/UIKit.h>

// 프로토콜 선언  -  알려주기
@protocol  ProductViewDelegate;


@interface ProductView : UIView

@property (nonatomic,weak) id <ProductViewDelegate> delegate;

- (instancetype)initWithData:(NSDictionary *)data;

- (NSString *)getTitle;
- (NSInteger)getCost;

@end


@protocol ProductViewDelegate <NSObject>

- (void)didSelectedProductView:(ProductView *)productView;

@end
