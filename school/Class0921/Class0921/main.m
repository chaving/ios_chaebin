//
//  main.m
//  Class0921
//
//  Created by chaving on 2016. 9. 21..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Skill.h"
#import "Warrior.h"
#import "Wizard.h"

int main(int argc, const char * argv[]) {
    
    
    Warrior *jack = [[Warrior alloc] init];
    
    jack.nickName = @"전사"; // 축약 문법
    // jack.nickName = [[NSString alloc] initWithUTF8String:"전사"]; // 정식문법
    
    jack.healthPoint = 2000;
    jack.manaPoint = 1000;
    jack.physicalDamage = 250;
    jack.magicalDamage = 150;
    jack.physicalDefense = 150;
    jack.magicalDefense = 50;
    jack.isDead = NO;
    
    
    Wizard *rose = [[Wizard alloc] init];
    
    rose.nickName =@"마법사";
    rose.healthPoint = 1500;
    rose.manaPoint = 2500;
    rose.physicalDamage = 100;
    rose.magicalDamage = 300;
    rose.physicalDefense = 50;
    rose.magicalDefense = 200;
    rose.isDead = NO;
    
    Skill *wheelwind = [[Skill alloc] init];
    
    wheelwind.skillName = @"휠윈드";
    wheelwind.skillDamage = 500;
    
    Skill *slash = [[Skill alloc] init];
    
    slash.skillName = @"슬래쉬";
    slash.skillDamage = 400;
    
    
    // 불리언 타입
    BOOL isYagomHandsome = YES;
    BOOL compareResult = NO;
    // - 진동이 켜져 있는가 / 값이 30 보다 큰가 등등 으로 이용 가능함!
    
    // 정수형
    // 부호가 있는 정수 타입------------------------------------------------------------
    NSInteger signedInteger = -100;
    NSInteger twoHundred = 200;
    
    // 부호가 없는 정수 타입------------------------------------------------------------
    NSUInteger unsigendInteger = -100;
    NSUInteger threeHundred = 300;
    
    // EX 비교연산자
    // 이런식으로 표현을 해서 BOOL 타입에 값을 넣을 수도 있다.
    compareResult = twoHundred < threeHundred;
    // 원칙상 다른 타입의 데이터는 비교할수 없다!
    // 하지만 현재는 언어가 똑똑해져서 할 수 있다.
    // 사용하면 안됨!
    
    // 객체형 숫자 타입------------------------------------------------------------
    NSNumber *someNumberObject = [[NSNumber alloc] initWithInt:100]; //정석적인 문법
    // NSNumber *someNumberObject = @100; // 축약 문법
    
    // 타입 뒤에 *이 없으면 value type - 값을 본인이 가지고 있기 때문
    // 타입 뒤에 *이 있으면 레퍼런스 type - 값의 위치를 알려 주기 때문
    
    
    // 실수형 숫자 타입------------------------------------------------------------
    CGFloat height = 200.3;
    CGFloat weight = 100.5;
    
    // 한 글자만 표현 가능한 문자 타입
    char someCharacter = 'a';
    
    // id 타입을 쓰는 이유는 모든 타입을 다 수용 할 수 있기 때문이다.
    // id 는 객체만 담을 수 있음
    id anyObject = @100;
    
    // 값이 들어 왔기 때문에 에러가 남
    //id someoneObject = 100;
    
    
    
    
    
    // 형식 지정자 - Format specifier
    
    
    // 정수 타입 - 부호가 있는 32bit 정수타입 --> 10진수 ( %d )
    // 정수 타입 - 부호가 있는 64bit 정수타입 --> 10진수 ( %ld )
    NSLog(@"Physical Power : %ld", jack.physicalDamage);
    
    // 정수 타입 - 부호가 없는 32bit 정수타입 --> 10진수 ( %u )
    // 정수 타입 - 부호가 없는 64bit 정수타입 --> 10진수 ( %lu )
    NSLog(@"Health Point : %lu", jack.healthPoint);
    
    CGFloat someFloatValue = 101.5;
    // 실수 타입 - 32bit 실수 타입 ( %f )
    // 실수 타입 - 64bit 실수 타입 ( %lf )
    NSLog(@"Float value : %f", someFloatValue);
    
    // 불리언 - 0과 1만 표현하면 되기 때문에 굳이 64bit 를 사용하지 않음
    NSLog(@"Boolean value : %d", YES);
    NSLog(@"Boolean value : %d", NO);
    
    // %를 표현하고 싶어요 - % 뒤에는 형식지정자가 와야 하기 때문에 %% 두개를 쓴다.
    NSLog(@"물리공격력이 5%% 증가하였습니다.");
    
    // 주소값을 보고 싶어요!
    NSLog(@"jack object : %@, Memory address : %p", jack, jack);
    
    // 정수타입을 16진수로 표현 하는 법
    NSLog(@"Physical power(16진수) : %lx", jack.physicalDamage);
    
    // 정수타입을 8진수로 표현 하는 법
    NSLog(@"Physical power(8진수) : %lo", jack.physicalDamage);
    
    // 캐릭터 타입
    NSLog(@"Character : %c %c %c", 'a', 'b', 'c');
    
    // 줄바꿈 - \n
    NSLog(@"줄을 바꿔\n봅시다.");
    
    // 탭을 표현하고 싶어요 - \t
    NSLog(@"사이에 탭\t을 넣어 봅시다.");
    
    NSLog(@"사이에 \"따움표\\을 넣어 봅시다.");
    
    
    // 응용
    NSLog(@"jack의 체력은 %lu\t 마력은 %lu이고, \n물리공격력은 %-5ld, 마법공격력은 %ld 입니다.",
          jack.healthPoint, jack.manaPoint, jack. physicalDamage, jack.magicalDamage);
    
    
    //연습
    NSLog(@"jack은 rose에게 %ld의 마법공격을 받았다!", rose.magicalDamage);
    NSLog(@"jack의 마법방어 %ld");
    
    
    /* 
     오늘의 스터디
     %-5ld
     %-04ld
     %+3ld
     %5.2f
     %-10.3f
     %10.0f
     %.3f
     이것들이 무엇을 뜻하는지 알아보기
     */
    
    
    
    [jack physicalAttackTo:rose];
    [jack physicalAttackTo:rose];
    
    [jack useTo:rose skill:wheelwind];
    [jack useTo:rose skill:slash];
    
    [jack jumpTo:rose where:@"뒤"];
    
    
    
    
    
    
    
    
    
    return 0;
}
