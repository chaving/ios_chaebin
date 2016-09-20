//
//  main.m
//  ClassEX
//
//  Created by chaving on 2016. 9. 20..
//  Copyright © 2016년 chaving. All rights reserved.
//


// < Framwork에서 제공해 주는 것을 import 할때는 꺽쇠 괄호 >
#import <Foundation/Foundation.h>

// " 내가 만든 것을 import 할때는 따움표 "
#import "Person.h"
#import "Warrior.h"
#import "Wizard.h"


int main(int argc, const char * argv[]) {
    
    
    //me 라는 변수에 메모리상에 위치하는 객체의 주소를 넣어줌
    //<데이터 이름> *<변수이름> = <객체의 주소>;
    
    
    // Class Person --------------------------------------------------------------------------------
    Person *me = [[Person alloc] init];
    me.name = @"chaebin";
    me.age = @"28";
    me.gender = @"man";
    me.phoneNum = @"01022727748";
    me.email = @"lcb0811@gmail.com";
    
    NSLog(@"My name is %@", me.name);
    NSLog(@"My name is %@, Gender : %@", me.name, me.gender);
    NSLog(@"My name is %@, Gender : %@, age : %@", me.name, me.gender, me.age);
    NSLog(@"My phone number is %@", me.phoneNum);
    
    [me eat:@"사과"];
    [me think:@"너"];
    [me run:@"패스트캠퍼스"];
    [me walk:@"패스트캠퍼스"];
    [me ride:@"지하철"];
    
    
    
    
    Person *he = [[Person alloc] init];
    he.name = @"chulsu";
    he.age = me.age;
    
    NSLog(@"His name is %@", he.name);
    NSLog(@"His age is %@", he.age);
    NSLog(@"His age is %@", me.age);
    
    [he walk:me.name];
    [he run:me.name];
    
    [me runTo:@"부산" bySpeed:@"100km" with:he.name];
    
    
    Person *she = [[Person alloc] init];
    Person *chaebin = [[Person alloc] init];
    Person *grandfa = [[Person alloc] init];
    Person *grandma = [[Person alloc] init];
    
    
    // Class Warrior ----------------------------------------------------------------------------------
    Warrior *jack = [[Warrior alloc] init];
    jack.name = @"잭";
    jack.health = @3000;
    jack.mana = @1000;
    jack.physicalPower = @250;
    jack.magicalPower = @150;
    jack.weapon = @"sword";
    jack.skill = @"휠윈드";
    
    NSLog(@"Jack HP : %@ / MP : %@", jack.health, jack.mana);
    
    [jack wheelwind];
    [jack slash];
    [jack shout];
    [jack pickUptheItem];
    
    [jack skillTo:@"트롤" what:jack.skill damage:jack.physicalPower];
    [jack rating:@"전설" pickUp:@"트롤의 황금" what:@"도끼" ];
    
    Warrior *chulsu = [[Warrior alloc] init];
    Warrior *younghi = [[Warrior alloc] init];
    
    
    // Class Wizard -----------------------------------------------------------------------------------
    Wizard *rose = [[Wizard alloc] init];
    rose.name = @"로즈";
    rose.health = @"2000";
    rose.mana = @"3000";
    rose.physicalPower = @"150";
    rose.magicalPower = @"300";
    rose.weapon = @"wand";
    
    [rose windstorm:@"골램"];
    [rose windstorm:@"골램" damage:rose.magicalPower];
    [rose magicalAttack:@"가고일"];
    [rose magicalAttack:@"가고일" damage:rose.magicalPower];
    
    [rose heal:@"파티원"];
    [rose heal:jack.name];
    [rose heal:jack.name critical:@"크리티컬" percent:@"10%"];
    
    [rose magicalAttack:jack.name];
    
    
    
    Wizard *strange = [[Wizard alloc] init];
    Wizard *trash = [[Wizard alloc] init];
    
    [rose firewall];
    [rose icespear];
    [rose hellfire];
    
    
    return 0;
}

































