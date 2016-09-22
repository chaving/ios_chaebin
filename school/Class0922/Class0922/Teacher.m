//
//  Teacher.m
//  Class0922
//
//  Created by chaving on 2016. 9. 22..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

- (id)teach:(Student *)someone{

    NSLog(@"선생 %@가 학생 %@에게 %@과목을 가르칩니다.", self.name, someone.name, self.subject);
    
    return nil;
}

@end
