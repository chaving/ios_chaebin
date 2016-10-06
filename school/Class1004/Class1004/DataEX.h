//
//  DataEX.h
//  Class1004
//
//  Created by chaving on 2016. 10. 4..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataEX : NSObject

@property(nonatomic)NSDictionary *albumData;

- (NSString *)titleData:(NSDictionary *)data;

+ (NSArray *)songTitles:(NSDictionary *)data;
+ (NSArray *)songDatas:(NSDictionary *)data;

+ (NSString *)lyricWithData:(NSString *)title data:(NSDictionary *)data;
+ (NSData *)playTimeData:(NSString *)title data:(NSDictionary *)data;

@end
