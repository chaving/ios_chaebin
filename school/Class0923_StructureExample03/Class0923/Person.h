//
//  Person.h
//  Class0923
//
//  Created by chaving on 2016. 9. 23..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property NSInteger age;
@property NSString *mobileNumber;
@property NSString *city;
@property BOOL isHandsome;
@property NSString *gender;


// init 메서드 / 이니셜라이즈?

// 이름 , 잘생겼느지
- (instancetype)initWithName:(NSString *)name isHandsome:(BOOL)isHandsome;

// 이름 , 나이
- (instancetype)initWithName:(NSString *)name age:(NSInteger)age;

// 이름, 도시
- (instancetype)initWithName:(NSString *)name city:(NSString *)city;

// 나이, 도시, 성별
- (instancetype)initWithAge:(NSInteger)age city:(NSString *)city gender:(NSString *)gender;


@end
