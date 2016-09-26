//
//  GameCharater.m
//  Class0923
//
//  Created by chaving on 2016. 9. 23..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "GameCharater.h"

@implementation GameCharater

///클래스 이름과 닉네임은 빼먹지 않기위한 init 메서드
- (instancetype)initWithClassName:(NSString *)className nickName:(NSString *)nickName{

    self = [super init];
    
    self.className = className;
    self.nickName = nickName;
    
    return self;
}

///누가 누군가를 물리공력하는 메서드
- (id)physicalAttackTo:(GameCharater *)someone{

    //누군가를 물리공격하다.
    NSLog(@"%@가(이) %@를(을) 물리공격 했다!", self.nickName, someone.nickName);
    
    //원래의 체력
    NSInteger originHealth = someone.healthPoint;
    
    //공격했을때의 누구의 체력 변화
    someone.healthPoint = originHealth - self.physicalDamage;
    
    //누가 누구의 공격으로 얼마의 피해를 입어 얼마로 체력이 떨어졌다
    NSLog(@"%@ 가(이) %@ 의 공격으로 %ld 의 피해를 입어 %ld 로 체력이 떨어졌다.", someone.nickName, self.nickName, self.physicalDamage, someone.healthPoint);

    return nil;
}

///누가 어떤 아이템을 줍는 메서드
- (id)pickUp:(NSString *)someItem{

    NSLog(@"%@가(이) %@를(을) 주웠다!", self.nickName, someItem);
    
    return nil;
}

/// 누가 나타나는 메서드
- (id)appear:(GameCharater *)someone where:(NSString *)where{

    //누가 어디에서 나타났다!
    NSLog(@"%@ \"%@\" 가(이) %@ 에서 나타났다!", someone.className, self.nickName, where);
    
    return nil;
}

/// 어떤 클래스가 누구에게 어떤 스킬을 쓰는 메서드
- (id)skillTo:(NSString *)skillName who:(GameCharater *)someone{
    
    //마법사가 누구가 어떤 스킬을 누구에게 사용했다.
    NSLog(@"%@ %@ 가(이) %@ 을 %@ 에게 사용했다.", self.className, self.nickName, skillName, someone.nickName);
    
    return nil;
}

// 스킬을 써서 얼마의 데미지가 들어가는 메서드
- (id)skillTo:(NSString *)skillName who:(GameCharater *)someone damage:(NSInteger)damage{

    //어떤 클래스 누가 어떤 스킬을 누구에게 사용했다.
    NSLog(@"%@ %@ 가(이) %@ 을 %@ 에게 사용했다.", self.className, self.nickName, skillName, someone.nickName);
    
    //원래의 체력
    NSInteger originHealth = someone.healthPoint;
    
    //공격했을때의 누구의 체력 변화
    someone.healthPoint = originHealth - self.physicalDamage;
    
    
    
    return nil;
}


















@end
