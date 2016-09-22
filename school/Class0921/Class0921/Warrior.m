//
//  Warrior.m
//  Class0921
//
//  Created by chaving on 2016. 9. 21..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Warrior.h"
#import "Wizard.h"
#import "Skill.h"

@implementation Warrior

///전사가 마법사에게 물리공격을 하는 것
- (id)physicalAttackTo:(Wizard *)someCharacter{
    
    
    // 전사의 물리 공격력 만큼 마법사의 체력을 감소시킵니다.
    
    // 원하는 로그
    // 전사가 마법사에게 물리공력을 가하여
    // XX만큼의 데미지를 입혔습니다.
    // 마법사의 체력이 XX에서 XX으로 변경되없습니다.
    
    // 마법사의 이전 체력
    NSUInteger originHealth = someCharacter.healthPoint;
    
    // 공격!!
    someCharacter.healthPoint = originHealth - (self.physicalDamage - self.physicalDefense);
    
    // 물리공격력 self.physicalDamage; --> 자기 자신의 공격력 알기!
    NSLog(@"\n%@가 %@에게 물리공격을 가하여 %ld 만큼의 공격을 했습니다.", self.nickName, someCharacter.nickName, self.physicalDamage);
    
    // 마법사의 이후 체력
    NSLog(@"\n%@의 체력이 %lu 에서 %lu 로 변경되었습니다.( 물리방어력 : %ld )",
          someCharacter.nickName, originHealth, someCharacter.healthPoint, self.physicalDefense);
    
    return nil;
    
}

///전사가 마법사에게 어떠한 스킬을 사용하는 것
- (id)useTo:(Wizard *)someCharacter skill:(Skill *)skill{
    
    // 전사가 마법사에게 스킬을 사용합니다.
    NSLog(@"\n%@가 %@에게 %@ 을(를) 사용합니다.", self.nickName, someCharacter.nickName, skill.skillName);
    
    // 마법사의 이전 체력
    NSUInteger originHealth = someCharacter.healthPoint;
    
    // 스킬 사용
    someCharacter.healthPoint = originHealth - skill.skillDamage;
    
    // 마법사의 체력이 XX만큼 감소하여 XX에서 XX로 변경되었습니다.
    NSLog(@"\n%@의 체력이 %ld 만큼 감소하여 %lu 에서 %lu 로 변경되었습니다."
          , someCharacter.nickName, skill.skillDamage, originHealth, someCharacter.healthPoint);
    
    return nil;
    
}

///전사가 마법사의 어떠한 위치로 이동 하는 것
- (id)jumpTo:(Wizard *)someCharater where:(NSString *)where{
    
    // 전사는 마법사의 뒤로 이동 합니다.
    NSLog(@"\n%@는 %@의 %@로(으로) 이동 합니다.", self.nickName, someCharater.nickName, where);
    
    return nil;
}



















@end
