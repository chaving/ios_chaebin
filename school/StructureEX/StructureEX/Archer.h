//
//  Archer.h
//  StructureEX
//
//  Created by 임채빈 on 2016. 9. 19..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Archer : NSObject

@property id hp;
@property id stamina;
@property id gender;
@property id rangeAttack;
@property id installTrap;
@property id darkMagic;

- (id)doubleShot;
- (id)trippleShot;

@end
