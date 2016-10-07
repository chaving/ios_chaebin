//
//  main.m
//  Class1006
//
//  Created by chaving on 2016. 10. 6..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "test.h"
#import "LinkedList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        [test testMethod];
        
        
        LinkedList *stack = [[LinkedList alloc]init];
        
        [stack push:1];
        [stack push:2];
        [stack push:3];
        [stack push:4];
        [stack push:5];
        [stack push:6];
        [stack push:7];
        [stack push:8];
        [stack push:9];
        [stack push:10];
        
        
//        [stack push:10];
        
        NSLog(@"-----------------------------------");
        
        NSLog(@"%d" ,[stack isEmpty]);

        NSLog(@"-----------------------------------");
        
        [stack clear];
        
        NSLog(@"-----------------------------------");
        
        NSLog(@"%d" ,[stack isEmpty]);
        
        NSLog(@"-----------------------------------");
        
        [stack push:10];
        [stack push:9];
        
        NSLog(@"%@", [stack pop]);
        
        [stack push:10];
        [stack push:11];
        [stack push:12];
        
        NSLog(@"%@", [stack pop]);
        
//        [stack printAllNode];
        
        
        
        
//        //스트링 분해
//        NSMutableArray *array = [NSMutableArray array];
//        NSString *str = @"Hello";
//        for (NSInteger i = 0; i < str.length; i+=1) {
//            
//            NSString *ch = [str substringWithRange:(i, 1)];
//            [array addObject:ch];
//        }
        
    }
    return 0;
}
