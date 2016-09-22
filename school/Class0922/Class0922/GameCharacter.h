//
//  GameCharacter.h
//  Class0922
//
//  Created by chaving on 2016. 9. 22..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameCharacter : NSObject //NSObject 는 부모클래스다. 지금까지 우리는 NSObject를 상속 받아 쓰고 있었다.

@property NSInteger health;
@property NSInteger mana;
@property NSInteger physicalPower;
@property NSInteger magicalPower;
@property BOOL isDead;
@property NSString *name;
@property NSString *weapon;



- (id)physicalAttackTo:(GameCharacter *)someone;

@end
