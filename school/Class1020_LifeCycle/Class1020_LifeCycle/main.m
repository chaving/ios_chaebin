//
//  main.m
//  Class1020_LifeCycle
//
//  Created by chaving on 2016. 10. 20..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyClass.h"

int main(int argc, const char * argv[]) {
    
    MyClass *instance = [[MyClass alloc] init];
    
    NSLog(@"%@", instance);
    instance = nil;
    
    NSLog(@"END");
    
    
    return 0;
}
