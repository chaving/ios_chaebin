//
//  MySingleton.h
//  Class1031_PrecompiledHeader
//
//  Created by chaving on 2016. 10. 31..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MySingleton : NSObject

+ (instancetype)sharedInstance;
- (void) justMethod;

@end
