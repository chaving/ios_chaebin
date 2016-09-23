//
//  Student.m
//  Class0923
//
//  Created by chaving on 2016. 9. 23..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Student.h"

@implementation Student


//이름, 도시, 학교, 학년
- (instancetype)initWithName:(NSString *)name city:(NSString *)city schoolName:(NSString *)school grade:(NSInteger)grade{

    self = [self initWithName:name
                         city:city
                   schoolName:school];
    
//    self.name = name;
//    self.city = city;
//    self.school = school;
    self.grade = grade;
    
    return self;

}

//이름, 도시, 학교, 학년, 성적
- (instancetype)initWithName:(NSString *)name city:(NSString *)city schoolName:(NSString *)school grade:(NSInteger)grade
                      credit:(NSString *)credit{

    self = [self initWithName:name
                         city:city
                   schoolName:school
                        grade:grade];
    
    self.credit = credit;
    
    return self;
}


@end
