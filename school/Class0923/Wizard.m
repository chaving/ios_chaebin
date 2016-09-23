//
//  Wizard.m
//  Class0923
//
//  Created by chaving on 2016. 9. 23..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Wizard.h"

@implementation Wizard

/// 물리공격에 대한 Wizard 의 재정의
- (id)physicalAttackTo:(GameCharater *)someone{

    //누가 누구를 공격했지만 너무 약해 피해를 주지 못했다.
    NSLog(@"%@가(이) %@ 를(을) 물리 공격했지만 너무 약해 피해를 주지 못했다.", self.nickName, someone.nickName);
    
    return nil;
}

/// 공격을 마법으로 막는 메서드
- (id)magicalAttack:(GameCharater *)someone{

    //누가 누구의 공격을 마법으로 막았다.
    NSLog(@"%@가(이) %@ 의 공격을 마법으로 막았다.", self.nickName, someone.nickName);
    
    return nil;
}






























@end
