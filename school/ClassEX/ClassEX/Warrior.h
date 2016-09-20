//
//  Warrior.h
//  ClassEX
//
//  Created by chaving on 2016. 9. 20..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface Warrior : NSObject

@property id name;
@property id health;
@property id mana;
@property id physicalPower;
@property id magicalPower;
@property id weapon;
@property id skill;

- (id)wheelwind;

- (id)skillTo:(id)someone what:(id)skill damage:(id)damage;

- (id)shout;
- (id)pickUptheItem;


/**
 * @param rating 은 등급을 나타냅니다.
 */
- (id)rating:(id)rating pickUp:(id)item what:(id)something;


- (id)slash;
- (id)crush;
- (id)meleeAttack;

@end
