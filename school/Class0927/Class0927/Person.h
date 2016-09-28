//
//  Person.h
//  Class0927
//
//  Created by chaving on 2016. 9. 27..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Animal;

typedef struct character
{
    CGFloat height;
    CGFloat weight;
}character;

@interface Person : NSObject

@property NSString *name;
@property NSInteger age;

@property character info;
@property Animal *animal;

@end
