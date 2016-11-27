//
//  test.m
//  Class1006
//
//  Created by chaving on 2016. 10. 6..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "test.h"

@implementation test

+ (void)testMethod{

    NSString *str = @"1234";
    
//    // string >> integer
//    NSInteger num = str.integerValue;
//    CGFloat fnum = str.floatValue;
//    
//    NSNumber *number = [NSNumber numberWithInteger:num];
//
//    //integer >> string
//    NSString *str02 = [NSString stringWithFormat:@"%ld",num];
//    
//    NSRange range = NSMakeRange(0, 2);
    
    
    // 시간 표현
    NSDateFormatter *foramtter = [[NSDateFormatter alloc]init];
    
    [foramtter setDateFormat:@"mm:ss"];
    NSDate *date = [foramtter dateFromString:@"13:20"];
    
    NSLog(@"%@",date);
    
    NSString *dateStr = [foramtter stringFromDate:date];
    NSLog(@"%@",dateStr);
}

@end
