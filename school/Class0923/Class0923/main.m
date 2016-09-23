//
//  main.m
//  Class0923
//
//  Created by chaving on 2016. 9. 23..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Person.h"
//#import "Student.h"
#import "Warrior.h"
#import "Wizard.h"
#import "Healer.h"
#import "Monster.h"



int main(int argc, const char * argv[]) {
    
    /*
    Person *jack = [[Person alloc] init];
    jack.name = @"짹";
    jack.age = 28;
    jack.mobileNumber = @"01012341234";
    jack.city = @"수원";
    jack.isHandsome = YES;
    
    Person *rose = [[Person alloc] initWithName:@"로즈" isHandsome:YES];
    
    NSLog(@"%@는 %@", rose.name, rose.isHandsome);
    
    Person *jason = [[Person alloc] initWithName:@"제이슨" city:@"서울"];
    
    NSLog(@"%@은 %@에 삽니다.", jason.name, jason.city);
    
    Person *chaebin = [[Person alloc] initWithName:@"채빈" age:25];
    
    */
    
    
    
    // Hero Class Layer =========================================================
    
    Warrior *jack = [[Warrior alloc] initWithClassName:@"워리어" nickName:@"잭"];
    
    jack.healthPoint = 3000;
    jack.physicalDamage = 200;
    jack.masicalDamage = 150;
    
    
    Wizard *rose = [[Wizard alloc] initWithClassName:@"마법사" nickName:@"로즈"];
    
    rose.healthPoint = 2000;
    rose.physicalDamage = 100;
    rose.masicalDamage =300;
    
    
    Healer *jason = [[Healer alloc] initWithClassName:@"힐러" nickName:@"제이슨"];
    
    jason.healthPoint = 2000;
    jason.physicalDamage = 150;
    jason.masicalDamage = 250;
    
    
    
    // Monster Class Layer =========================================================
    
    Monster *troll = [[Monster alloc] initWithClassName:@"몬스터" nickName:@"트롤"];
    
    troll.healthPoint = 4000;
    troll.physicalDamage = 100;
    troll.monsterState = @"재빠른";
    
    Monster *golraem = [[Monster alloc] initWithClassName:@"몬스터" nickName:@"골램"];
    
    golraem.healthPoint = 4000;
    golraem.physicalDamage = 100;
    golraem.monsterState = @"거대한";
    
    
    
    
    
    // Command Layer ================================================================
    
    [troll appear:troll where:@"풀숲"];
    
    [jack appear:jack where:@"나무 뒤"];
    [jack physicalAttackTo:troll];
    [jack skillTo:@"휠윈드" who:troll];
    
    [troll missAttack:jack];
    
    [rose appear:rose where:@"저기 어디"];
    [rose physicalAttackTo:troll];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
