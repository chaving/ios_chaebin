//
//  Warrior.m
//  Class0923
//
//  Created by chaving on 2016. 9. 23..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Warrior.h"

@implementation Warrior

- (id)defence:(GameCharater *)someone{
    
    //누가 누구의 공격을 막았다.
    NSLog(@"%@가(이) %@ 의 공격을 막았다!", self.nickName, someone.nickName);

    return nil;
}

@end
