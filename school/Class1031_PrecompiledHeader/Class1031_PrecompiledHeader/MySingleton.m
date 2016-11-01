//
//  MySingleton.m
//  Class1031_PrecompiledHeader
//
//  Created by chaving on 2016. 10. 31..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "MySingleton.h"

@implementation MySingleton

+ (instancetype)sharedInstance{

    static MySingleton *instance = nil;
    static dispatch_once_t token;
    
    dispatch_once(&token, ^{
    
        instance = [[self alloc] init];
    });
    
    return instance;
}

- (void) justMethod{

    NSLog(@"method called");
}

@end
