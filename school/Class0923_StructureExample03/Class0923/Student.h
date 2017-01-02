//
//  Student.h
//  Class0923
//
//  Created by chaving on 2016. 9. 23..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Person.h"

@interface Student : Person

@property NSString *school;
@property NSInteger grade;
@property NSString *credit;

- (id)study;

//이름, 도시, 학교
- (instancetype)initWithName:(NSString *)name city:(NSString *)city schoolName:(NSString *)school;

// 이름, 도시, 학교, 학년
- (instancetype)initWithName:(NSString *)name city:(NSString *)city schoolName:(NSString *)school grade:(NSInteger)grade;

// 이름, 도시, 학교, 학년, 성적
- (instancetype)initWithName:(NSString *)name city:(NSString *)city schoolName:(NSString *)school grade:(NSInteger)grade credit:(NSString *)credit;

@end
