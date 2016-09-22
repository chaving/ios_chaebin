//
//  Person.h
//  Class0922
//
//  Created by chaving on 2016. 9. 22..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"

@interface Person : NSObject

@property NSString *name;
@property NSInteger age;


-(id)eatTo:(NSString *)someThing;
-(id)adopt:(Animal *)someAnimal;


@end
