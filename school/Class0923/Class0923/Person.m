//
//  Person.m
//  Class0923
//
//  Created by chaving on 2016. 9. 23..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name isHandsome:(BOOL)isHandsome{

    self = [super init];
    
    self.name = name;
    self.isHandsome = isHandsome;
    
    return self;

}

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age{
    
    self = [super init];
    
    self.name = name;
    self.age = age;
    
    return self;
    
}

- (instancetype)initWithName:(NSString *)name city:(NSString *)city{

    self = [super init];
    
    self.name = name;
    self.city = city;

    return self;

}

- (instancetype)initWithName:(NSInteger)age city:(NSString *)city gender:(NSString *)gender{

    self = [super init];
    
    self.age = age;
    self.city = city;
    self.gender = gender;
    
    return self;

}

@end






























