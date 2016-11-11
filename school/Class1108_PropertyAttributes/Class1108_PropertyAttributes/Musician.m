//
//  Musician.m
//  Class1108_PropertyAttributes
//
//  Created by chaving on 2016. 11. 8..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Musician.h"

@implementation Musician

- (void)dealloc{

    NSLog(@"%@ dealloc",self.groupName);
}



- (instancetype)init
{
    self = [super init];
    if (self) {
        _memberCount = @0;
    }
    return self;
}

- (void)setGroupName:(NSString * _Nonnull)groupName{

    _groupName = groupName;
}

- (instancetype)initWithName:(NSString * _Nonnull)name
                 memberCount:(NSNumber * _Nonnull)memberCount{

    self = [super init];
    
    if (self) {
        _groupName = name;
        _memberCount = memberCount;
    }
    return self;
}

@end
