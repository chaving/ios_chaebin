//
//  Wizard.h
//  Class0921
//
//  Created by chaving on 2016. 9. 21..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Warrior;

@interface Wizard : NSObject

@property NSString *nickName;
@property NSUInteger healthPoint;
@property NSUInteger manaPoint;
@property NSInteger physicalDamage;
@property NSInteger magicalDamage;
@property NSInteger physicalDefense;
@property NSInteger magicalDefense;
@property BOOL isDead;

- (id)physicalAttackTo:(Warrior *)someCharacter;
- (id)magicalAttackTo:(Warrior *)someCharacter;
- (id)jumpTo:(Wizard *)someCharater where:(NSString *)where;
- (id)defenceTo:(NSInteger)someAttack;
- (id)useTo:(Warrior *)someCharacter skill:(NSString *)skill;



@end
