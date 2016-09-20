//
//  Warrior.h
//  StructureEX
//
//  Created by 임채빈 on 2016. 9. 19..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Warrior : NSObject

/*
워리어의 프로퍼티
출처 : 디아블로 3
*/

@property id hp;
@property id stamina;
@property id gender;

//근접공격의 전문가 - 다양한 근접무기들을 사용할 수 있다.
@property id melee;
//공격 막아내기 - 강력한 힘으로 무거운 방패를 들어 가볍게 공격을 막아낼 수 있습니다.
@property id defence;
//외침 - 외침으로 동료의 사기를 올리고 적을 사기를 떨어뜨립니다.
@property id shout;
//무자비한 공격 - 공격에 자신의 분노를 실어 더욱 강력해 집니다.
@property id ruthlessAttack;

/*
넓은 영역을주석하는 법입니다.
 */

- (id)slash;
- (id)crush;
- (id)wheelwind;
- (id)pickup;
- (id)drow;

@end
