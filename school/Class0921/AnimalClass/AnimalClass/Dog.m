//
//  Dog.m
//  AnimalClass
//
//  Created by chaving on 2016. 9. 21..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Dog.h"
#import "Cat.h"

@implementation Dog


- (id)meetTo:(Cat *)someOne where:(NSString *)where status:(NSString *)status{

    //강아지가 고양이를 거실 코너에서 만나 좋아 합니다.
    NSLog(@"\n%@가 %@를 %@에서 만나 %@합니다.", self.nickName, someOne.nickName, where, status);
    
    return nil;
}


@end
