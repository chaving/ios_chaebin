//
//  Wizard.h
//  ClassEX
//
//  Created by chaving on 2016. 9. 20..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

/*!
 * @brief The car will drive, and then execute the drive block
 * @param completion A driveCompletion block
 * @code [car driveCarWithCompletion:^(CGFloat distance){
 NSLog(@"Distance driven %f", distance);
 }];
 */


@interface Wizard : NSObject

// !!!: Holy cow, it should be checked!
@property id name;
@property id health;
@property id mana;
@property id physicalPower;
@property id magicalPower;
@property id weapon;

- (id)firewall;
- (id)icespear;
- (id)hellfire;
- (id)pickUptheItem;
- (id)rangeAttack;

/**
 *
 * @param to 스킬을 받은 대상
 *
 */
- (id)windstorm:(id)to;
- (id)windstorm:(id)to damage:(id)damage;


- (id)magicalAttack:(id)to;
- (id)magicalAttack:(id)to damage:(id)damage;

- (id)heal:(id)to;
- (id)heal:(id)to critical:(id)critical percent:(id)percent;


@end
