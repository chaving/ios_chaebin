//
//  FizzBuzz.m
//  Class1012_SoftWare
//
//  Created by chaving on 2016. 10. 12..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "FizzBuzz.h"

@implementation FizzBuzz

+ (void)fizzBuzz:(NSInteger)someNum{
    
    for (NSInteger i = 1; i <= someNum; i += 1) {
        
        NSInteger num = i;
        
        NSInteger fizzNum = num % 3;
        NSInteger buzzNum = num % 5;
        
        if (fizzNum == 0) {
            
            if (fizzNum == 0 && buzzNum == 0) {
                NSLog(@"Fizz_Buzz");
                num = 0;
            }
            
            NSLog(@"Fizz");
            num = 0;
            
        }else if (buzzNum == 0) {
            
            if (fizzNum == 0 && buzzNum == 0) {
                NSLog(@"Fizz_Buzz");
                num = 0;
            }
            
            NSLog(@"Buzz");
            num = 0;
            
        }else{
            
            NSLog(@"%ld", num);
            
        }
        
    }
    
}

@end
