//
//  Chicken.h
//  StructureEX
//
//  Created by 임채빈 on 2016. 9. 19..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Chicken : NSObject

@property id friedType;
@property id sourceType;
@property id bornType;
@property id pickupType;
@property id brand;
@property id price;

- (id)eat;
- (id)accreteWeight;
- (id)enjoyPeople;
- (id)waiting;
- (id)flutter;


@end
