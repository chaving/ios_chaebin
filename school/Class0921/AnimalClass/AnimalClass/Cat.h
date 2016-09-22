//
//  Cat.h
//  AnimalClass
//
//  Created by chaving on 2016. 9. 21..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Dog;

@interface Cat : NSObject

@property NSString *nickName;
@property NSInteger age;
@property NSInteger order;


- (id)meetTo:(Dog *)someOne where:(NSString *)where;
- (id)jumpTo:(Dog *)someOne point:(NSString *)point;
- (id)meetTo:(NSString *)where;

@end
