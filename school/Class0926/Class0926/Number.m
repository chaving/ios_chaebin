//
//  Number.m
//  Class0926
//
//  Created by chaving on 2016. 9. 26..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Number.h"

@implementation Number

+ (NSInteger)absoluteNum:(NSInteger)someNum{

    NSInteger selectNum = 0;
    
    if (someNum >= 0) {
        
        selectNum = someNum;
        
    }else if(someNum < 0){
    
        selectNum = someNum * -1;
    
    }
    
    return selectNum;

}



+ (CGFloat)roundNum:(CGFloat)someRoundNum{

    CGFloat selectRonundNum = 0;
    
    selectRonundNum = someRoundNum + 0.005;
    
    NSInteger sumNum = selectRonundNum * 100;
    
    CGFloat result = sumNum * 0.01;
    
    
    return result;
    
}



+ (BOOL)checkLeapYear:(NSInteger)someYear{

    BOOL selectYear = NO;
    
    if((someYear%4 == 0 && someYear%100 != 0) || someYear%400 == 0){
        
        selectYear = YES;
        
    }else{
    
        selectYear = NO;
        
    }
    
    return selectYear;

}















@end
