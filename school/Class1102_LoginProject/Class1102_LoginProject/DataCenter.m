//
//  DataCenter.m
//  Class1102_LoginProject
//
//  Created by chaving on 2016. 11. 2..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "DataCenter.h"
#import "ViewController.h"
#import "MainViewController.h"

@interface DataCenter ()

@property NSUserDefaults *userDefaults;

@end


@implementation DataCenter

+ (instancetype)sharedData{

    static DataCenter *userDataCenter = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
    
        userDataCenter = [[self alloc] init];
    
    });
    
    return userDataCenter;
    
}


- (void)setUserID:(NSString *)userID{
    
    self.userDefaults = [NSUserDefaults standardUserDefaults];
    
    [self.userDefaults setObject:userID forKey:@"ID"];

}

- (void)setUserPassward:(NSString *)userPassward{
    
    self.userDefaults = [NSUserDefaults standardUserDefaults];
    
    [self.userDefaults setObject:userPassward forKey:@"PW"];

}



// 회원가입 할때 실행
- (BOOL)joinUserID:(NSString *)userID userPW:(NSString *)userPW{

    BOOL confirmUserData = NO;
    
    self.userDefaults = [NSUserDefaults standardUserDefaults];
    
    if (![userID isEqualToString:[self.userDefaults objectForKey:@"ID"]]) {
        
        [self setUserID:userID];
        [self setUserPassward:userPW];
        
        confirmUserData = YES;
        
    }
    
    return confirmUserData;
}


// 로그인 할때 실행
- (BOOL)haveUserID:(NSString *)userID userPW:(NSString *)userPW{

    BOOL confirmUserData = NO;
    
    self.userDefaults = [NSUserDefaults standardUserDefaults];
    
    if ([userID isEqualToString:[self.userDefaults objectForKey:@"ID"]]
        && [userPW isEqualToString:[self.userDefaults objectForKey:@"PW"]]) {
        
        confirmUserData = YES;
        
    }
    
    return confirmUserData;
}


// Auto Login 로직?
- (void)setAutoLogin:(BOOL)flag{
    
    self.userDefaults = [NSUserDefaults standardUserDefaults];
    
    NSNumber *changeBOOL = [NSNumber numberWithBool:flag];
    
    [self.userDefaults setObject:changeBOOL forKey:@"State_of_Login"];
}


// Auto Login 시킬 것이냐
- (BOOL)isAutoLogin{

    self.userDefaults = [NSUserDefaults standardUserDefaults];
    
    BOOL startAutoLogin = [self.userDefaults objectForKey:@"State_of_Login"];
    
    
    if (startAutoLogin == 1) {
        
        startAutoLogin = YES;
    }
    
    return startAutoLogin;
}


// 회원 가입 할때 데이터 저장
- (void)saveUserData:(NSDictionary *)data{


}


// 로그인하거나 할때 불러와서 사용
- (NSArray *)loadUserData{

    return nil;
}


@end
