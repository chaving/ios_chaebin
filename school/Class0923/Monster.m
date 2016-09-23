//
//  Monster.m
//  Class0923
//
//  Created by chaving on 2016. 9. 23..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Monster.h"

@implementation Monster


/// 누가 나타나는 몬스터의 메서드 재정의
- (id)appear:(GameCharater *)someone where:(NSString *)where{
    
    //야생의 어떤 몬스터가 어디에서 나타났다.
    NSLog(@"야생의 %@ %@ %@ 가(이) %@ 에서 나타났다!", self.monsterState, someone.className, self.nickName, where);
    
    return nil;
}

- (id)missAttack:(GameCharater *)someone{

    //누가 누구의 공격을 피햇다.
    NSLog(@"%@ 가(이) %@ 의 공격을 피했다.", self.nickName, someone.nickName);
    
    return nil;
}

@end
