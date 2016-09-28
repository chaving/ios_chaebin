//
//  Person.m
//  Class0927
//
//  Created by chaving on 2016. 9. 27..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Person.h"
#import "Animal.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name
{

    self = [super init];
    
    if (self){
        self.name = name ;
    }
    
    return self;
}

- (void)setHeight:(CGFloat)height weight:(CGFloat)weight{
    
//    self.info.height = height; 안되는 것
//    self.info.weight = weight; 안되는 것
//    _info.height = height;
//    _info.weight = weight;
    
    // 다른 버전
    character tempInfo = {height,weight};
    self.info = tempInfo;

}

- (character)personInfo{
    
    return self.info;

}

@end
