//
//  GameCharacter.m
//  Class0922
//
//  Created by chaving on 2016. 9. 22..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "GameCharacter.h"

@implementation GameCharacter



- (id)physicalAttackTo:(GameCharacter *)someone{

    //누군가에게 물리공격을 한다!
    NSLog(@"\n%@에게 물리공격을 한다!", someone.name);
    return nil;

}

@end
