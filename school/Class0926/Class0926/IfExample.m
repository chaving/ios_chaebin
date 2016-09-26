//
//  IfExample.m
//  Class0926
//
//  Created by chaving on 2016. 9. 26..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "IfExample.h"

@implementation IfExample

+ (BOOL)isEvenNumber:(NSInteger)number
{
    BOOL isEven = NO;
    
    if(number%2 == 0){
        //짝수
        isEven = YES;
        
    }else{
        //홀수
        isEven = NO;
    
    }
    
    return isEven;
}


@end
