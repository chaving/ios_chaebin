//
//  UserData.h
//  Class1107_ValueControl
//
//  Created by chaving on 2016. 11. 7..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserData : NSObject

+ (instancetype)sharedUserInfo;

@property NSString *userId;
@property NSString *userPassword;
@property NSString *lastName;
@property NSString *firstName;
@property (readonly) NSString *fullName;
@property NSString *age;
@property NSString *hobby;

@end
