//
//  Person.m
//  ClassEX
//
//  Created by chaving on 2016. 9. 20..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Person.h"

//구현부
@implementation Person


- (id)think:(id)people{
    NSLog(@"%@을(를) 생각을 합니다.", people);
    return nil;
}

- (id)eat:(id)food{
    NSLog(@"%@을(를) 먹습니다.", food);
    return nil;
}

- (id)walk:(id)where{
    NSLog(@"%@로(으로) 걷습니다.", where);
    return nil;
}

- (id)run:(id)where{
    NSLog(@"%@로(으로) 달립니다.", where);
    return nil;
}

- (id)runTo:(id)location bySpeed:(id)speed with:(id)someone{
    NSLog(@"%@로 %@의 속도로 %@와 달려갑니다.", location, speed, someone);
    return nil;
}



- (id)ride:(id)what{
    NSLog(@"%@을(를) 타요", what);
    return nil;
}



@end
