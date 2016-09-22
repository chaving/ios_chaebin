//
//  Cat.m
//  AnimalClass
//
//  Created by chaving on 2016. 9. 21..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Cat.h"
#import "Dog.h"

@implementation Cat

- (id)meetTo:(Dog *)someOne where:(NSString *)where{

    //고양이가 강아지를 거실 코너에서 만났습니다.
    NSLog(@"\n%@가 %@를 %@에서 만났습니다.", self.nickName, someOne.nickName, where);
    
    return nil;
}

- (id)jumpTo:(Dog *)someOne point:(NSString *)point{

    //고양이가 강이지 등을 밟고 점프해 도망 갔습니다.
    NSLog(@"\n%@가 %@ %@을 밟고 점프해 도망 갔습니다.", self.nickName, someOne.nickName, point);

    return nil;
}


- (id)meetTo:(NSString *)where{
    
    //고양이가 강아지를 거실 코너에서 만났습니다.
    NSLog(@"고양이가 강아지를 %@에서 만났습니다.", where);
    
    return nil;
}

@end
