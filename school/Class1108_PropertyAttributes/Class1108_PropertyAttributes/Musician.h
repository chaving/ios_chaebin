//
//  Musician.h
//  Class1108_PropertyAttributes
//
//  Created by chaving on 2016. 11. 8..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Musician : NSObject

@property (nonnull, readonly) NSString *groupName;
@property (null_resettable) NSNumber *memberCount;
@property (nullable, getter=companyName) NSString *company;
@property (null_unspecified) NSString *manager;

//@property (nonnull) NSString *groupName;
//@property NSNumber *memberCount;
//@property NSString *company;
//@property NSString *manager;


- (void)setGroupName:(NSString * _Nonnull)groupName;
- (instancetype)initWithName:(NSString * _Nonnull)name memberCount:(NSNumber * _Nonnull)memberCount;

@end
