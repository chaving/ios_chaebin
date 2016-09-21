//
//  main.m
//  AnimalClass
//
//  Created by chaving on 2016. 9. 21..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cat.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    
    
    Cat *navi = [[Cat alloc] init];
    
    navi.nickName = @"나비";
    navi.age = 3;
    navi.order = 2;
    
    
    Dog *white = [[Dog alloc] init];
    
    white.nickName = @"흰둥이";
    white.age = 2;
    white.order =1;
    
    
    
    [navi meetTo:white where:@"거실코너"];
    [white meetTo:navi where:@"거실코너" status:@"좋아"];
    
    [navi jumpTo:white point:@"등"];
    
    
    return 0;
}
