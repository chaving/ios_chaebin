//
//  Dog.h
//  AnimalClass
//
//  Created by chaving on 2016. 9. 21..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Cat;

@interface Dog : NSObject

@property NSString *nickName;
@property NSInteger age;
@property NSInteger order;

- (id)meetTo:(Cat *)someOne where:(NSString *)where status:(NSString *)status;
- (id)jumpTo:(Cat *)someOne point:(NSString *)point;

@end
