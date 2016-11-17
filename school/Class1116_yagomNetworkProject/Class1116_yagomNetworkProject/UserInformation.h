//
//  UserInformation.h
//  Class1116_yagomNetworkProject
//
//  Created by chaving on 2016. 11. 16..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInformation : NSObject

@property NSString *userId;
@property NSArray *imageInfoList;

+ (instancetype)sharedUserInfo;

@end
