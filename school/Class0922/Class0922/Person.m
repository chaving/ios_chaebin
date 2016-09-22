//
//  Person.m
//  Class0922
//
//  Created by chaving on 2016. 9. 22..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Person.h"

@implementation Person

-(id)eatTo:(NSString *)someThing{

    //어떤것을 먹는다.
    NSLog(@"%@을(를) 먹는다.", someThing);
    return nil;
    
}

-(id)adopt:(Animal *)someAnimal{

    NSLog(@"%@가 동물이름 %@를 입양했습니다.", self.name, someAnimal.name);
    
    return nil;
}


@end
