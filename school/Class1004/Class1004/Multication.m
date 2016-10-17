//
//  Multication.m
//  Class1004
//
//  Created by chaving on 2016. 10. 4..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Multication.h"

@implementation Multication



+ (void)getMultiplicationTable:(NSInteger)multiNum{

    NSInteger index = 0;
    
    while (index < 9) {
        
        index += 1;
        
        NSInteger multiplicationThird = multiNum * index;
        
        NSLog(@"%ld * %ld = %ld", multiNum, index, multiplicationThird);
        
    }

}

+ (void)forMultiplicationTable:(NSInteger)multiNum{

    for(NSInteger i = 1; i < 10; i+=1){
    
        NSInteger multiplicationThird = multiNum * i;
        
        NSLog(@"%ld * %ld = %ld", multiNum, i, multiplicationThird);
        
    }

}


// 팩토리얼 만들기 해보기!!
+ (void)factorial:(NSInteger)multiNum{

    NSInteger factorialResult = 1;
    
    for (NSInteger i=1; i <= multiNum; i+=1) {
    
        factorialResult *= i;
        
    }
    
    NSLog(@"%ld 의 팩토리얼 값은 %ld 입니다.", multiNum, factorialResult);

}

// 삼각수 구하기
+ (void)triangleNum:(NSInteger)sumNum{

    NSInteger triangleResult = 0;
    
    for (NSInteger i = 1; i <= sumNum; i+=1) {
        
        triangleResult += i;
        
    }
    
    NSLog(@"%ld 의 삼각수 값은 %ld 입니다.", sumNum, triangleResult);

}


+ (void)addAllNum:(NSInteger)someNum{
    
    NSInteger firstNum = someNum;
    
    NSInteger result = 0;
    
    while (someNum%10 > 0) {
        
        result += someNum%10;
        someNum = someNum/10;
    
    }
    
    NSLog(@"%ld 의 각자리 수의 합은 %ld 입니다.", firstNum, result);
    
}

+ (void)game369:(NSInteger)someNum{
    
    for (NSInteger i = 1; i <= someNum; i += 1) {
        
        NSInteger num = i;
        
        while (0 < num) {
            NSInteger checkNum = num % 10;
            if (checkNum == 3 || checkNum == 6 || checkNum == 9) {
                NSLog(@"*");
                num = 0;
                
            }else if (num < 10) {
                NSLog(@"%ld",i);
                num = 0;
                
            }else{
                num = num / 10;
            }
        }
    }
    
    
    
//    for (NSInteger i=1; i < someNum; i+=1) {
//      
//        NSInteger selectNum = i;
//        
//        while (0 < i) {
//            
//            if (i%10 == 3 || i%10 == 6 || i%10 == 9) {
//                
//                NSLog(@"*");
//                
//                i = 0;
//                
//            }else if(i < 10){
//                
//                NSLog(@"%ld", selectNum);
//                
//                i = 0;
//                
//            }else{
//                
//                i /= 10;
//                
//            }
//            
//        }
//        
//    }

}




+ (NSString *)integerFactorization:(NSInteger)someNum{
    
    NSString *resultNum = [[NSString alloc]init];
    
    if (someNum == 1) {
        return nil;
    }
    
    NSInteger saveNum = someNum;
    
    NSMutableArray *saveNumArray = [[NSMutableArray alloc]init];
    
    for (NSInteger i = 2; i <= saveNum; i += 1) {
        
        for (NSInteger j = 2; j <= saveNum; j += 1) {
            
            if (someNum % j == 0) {
                
//                NSLog(@"%ld", j);
                
                [saveNumArray addObject:[NSString stringWithFormat:@"%ld", j]];
                
                someNum = someNum / j;
                
                break;
            }
            
        }
        
        if (someNum == 1) {
            
            break;
            
        }
        
    }
    
    
    
    for (NSString *arrayNumber in saveNumArray) {
        
        [resultNum stringByAppendingString:arrayNumber];
        
        NSLog(@"%@", arrayNumber);
        
    }
    
    
    
    return resultNum;
    
}







@end
