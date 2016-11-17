//
//  UserInformation.m
//  Class1116_yagomNetworkProject
//
//  Created by chaving on 2016. 11. 16..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "UserInformation.h"

@implementation UserInformation

+ (instancetype)sharedUserInfo{
    
    static UserInformation *userInfomation = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        userInfomation = [[self alloc] init];
        
    });
    
    return userInfomation;
}

@end
