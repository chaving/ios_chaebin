//
//  UserInformation.m
//  Class1115_NetworkingProject
//
//  Created by chaving on 2016. 11. 15..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "UserInformation.h"

@interface UserInformation ()

@property NSUserDefaults *userDataCenter;

@end

@implementation UserInformation

+ (instancetype)sharedData{
    
    static UserInformation *userDataCenter = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        userDataCenter = [[self alloc] init];
        
    });
    
    return userDataCenter;
    
}

@end


