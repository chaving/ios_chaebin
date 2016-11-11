//
//  Person.m
//  Class1107_Property
//
//  Created by chaving on 2016. 11. 7..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)printPersonInfo{
    NSLog(@"이름 : %@ / 나이 : %ld / 몸무게 : %lf", _personName,_age,_weight);
}

//- (void)setPersonInfoName:(NSString *)Name Age:(


- (NSString *)personName{

    return _personName;
}

- (NSInteger)age{
    
    return _age;
}




- (void)setPersonName:(NSString *)name{

    _personName = name;
}

- (void)setPersonAge:(NSInteger)age{
    
    _age = age;
}

- (void)setPersonWeight:(CGFloat)weight{
    
    _weight = weight;
}


@end
