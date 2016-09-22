//
//  Teacher.h
//  Class0922
//
//  Created by chaving on 2016. 9. 22..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Person.h"
#import "Student.h"

@interface Teacher : Person

@property NSString *subject;

- (id)teach:(Student *)someone; // Student * 는 Student의 특성을 가지고 있는 애들은 다 괜찮다!

@end
