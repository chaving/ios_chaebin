//
//  Month.m
//  Class0926
//
//  Created by chaving on 2016. 9. 26..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Month.h"

@implementation Month

+ (NSInteger)lastDayNum:(NSInteger)month
{

    NSInteger lastDay = 0;
    
    switch (month) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
            lastDay = 31;
            break;
        case 2:
            lastDay = 28;
            break;
        default:
            lastDay = 30;
            break;
    }
    
    return lastDay;
    
}

@end
