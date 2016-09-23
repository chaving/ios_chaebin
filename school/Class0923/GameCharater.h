//
//  GameCharater.h
//  Class0923
//
//  Created by chaving on 2016. 9. 23..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameCharater : NSObject

@property NSString *className;
@property NSString *nickName;

@property NSInteger healthPoint;
@property NSInteger physicalDamage;
@property NSInteger masicalDamage;

- (instancetype)initWithClassName:(NSString *)className nickName:(NSString *)nickName;

- (id)physicalAttackTo:(GameCharater *)someone;
- (id)pickUp:(NSString *)someItem;

- (id)appear:(GameCharater *)someone where:(NSString *)where;

- (id)skillTo:(NSString *)skillName who:(GameCharater *)someone;
- (id)skillTo:(NSString *)skillName who:(GameCharater *)someone damage:(NSInteger)damage;

@end
