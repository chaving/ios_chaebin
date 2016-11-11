//
//  UserData.m
//  Class1107_ValueControl
//
//  Created by chaving on 2016. 11. 7..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "UserData.h"

@implementation UserData

+ (instancetype)sharedUserInfo {
    static UserData *object = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        if (object == nil) {
            object = [[UserData alloc] init];
        }
    });
    return object;
}





@end
