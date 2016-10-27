//
//  MyClass.m
//  Class1020_LifeCycle
//
//  Created by chaving on 2016. 10. 20..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass

+ (instancetype)alloc{

    NSLog(@"My class instance alloc");
    return [super alloc];
}

- (instancetype)init{

    NSLog(@"My class instance init");
    return [super init];
}

- (void)dealloc{

    NSLog(@"My class instance dealloc");
}

//- (void)

@end
