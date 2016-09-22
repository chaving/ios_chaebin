//
//  main.m
//  Class0922
//
//  Created by chaving on 2016. 9. 22..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Warrior.h"
#import "Wizard.h"
#import "UniversityStudent.h"
#import "Teacher.h"
#import "Student.h"
#import "Dog.h"
#import "Cat.h"



#import "Animal.h"

int main(int argc, const char * argv[]) {
    
    Warrior *jack = [[Warrior alloc] init];
    jack.name = @"잭";
    jack.health = 2500;
    jack.mana = 1500;
    
    Warrior *jason = [[Warrior alloc] init];
    jason.name = @"제이슨";
    
    Wizard *rose = [[Wizard alloc] init];
    rose.name =@"로즈";
    rose.health = 1500;
    rose.mana = 3000;
    
    
    [jack physicalAttackTo:rose];
    [jack physicalAttackTo:jason];
    [jason physicalAttackTo:jack];
    
    UniversityStudent *chaebin = [[UniversityStudent alloc] init];
    chaebin.name = @"채빈";
    
    [chaebin eatTo:@"사과"];
    
    
    
    Teacher *computerTeacher = [[Teacher alloc] init];
    
    computerTeacher.name=@"철수";
    computerTeacher.subject=@"컴퓨터";
    
    
    Student *justStudent = [[Student alloc] init];
    
    justStudent.name = @"영희";
    
    Student *anotherStudent = [[Student alloc] init];
    
    anotherStudent.name = @"민희";
    
    [computerTeacher teach:justStudent];
    [computerTeacher teach:anotherStudent];
    
    
//    Student *min = [[UniversityStudent alloc] init];
    
//    UniversityStudent *chul = [[Student alloc] init];
    
    
    
    Dog *white = [[Dog alloc] init];
    white.name = @"흰둥이";
    
    Cat *navi = [[Cat alloc] init];
    
    [justStudent adopt:white];
    
    [white cry];
    [navi cry];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}
