//
//  RequestObject.h
//  Class1115_NetworkingProject
//
//  Created by chaving on 2016. 11. 15..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RequestObject : NSObject

+ (instancetype)sharedRequest;
- (void)requestImageList;

@end
