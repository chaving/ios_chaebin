//
//  Person.h
//  Class1107_Property
//
//  Created by chaving on 2016. 11. 7..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Person : NSObject {

    NSString *_personName;
    NSInteger _age;
    CGFloat _weight;
}

- (NSString *)personName;

- (void)printPersonInfo;
- (void)setPersonName:(NSString *)name;
- (void)setPersonAge:(NSInteger)age;
- (void)setPersonWeight:(CGFloat)weight;

@end
