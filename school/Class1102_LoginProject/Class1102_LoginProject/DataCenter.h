//
//  DataCenter.h
//  Class1102_LoginProject
//
//  Created by chaving on 2016. 11. 2..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

+ (instancetype)sharedData;

- (BOOL)joinUserID:(NSString *)userID userPW:(NSString *)userPW;

- (BOOL)haveUserID:(NSString *)userID userPW:(NSString *)userPW;

- (void)setAutoLogin:(BOOL)flag;

- (BOOL)isAutoLogin;

- (void)saveUserData:(NSDictionary *)data;

- (NSArray *)loadUserData;


@end
