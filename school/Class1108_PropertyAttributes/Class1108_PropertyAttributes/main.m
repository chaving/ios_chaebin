//
//  main.m
//  Class1108_PropertyAttributes
//
//  Created by chaving on 2016. 11. 8..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Musician.h"
#import "BroadcatStation.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Musician *blackPink = [[Musician alloc] initWithName:@"blackPink" memberCount:@4];
//        // retain count == 1;
//        
//        NSLog(@"retain count 1 : %ld", blackPink.retainCount);
//        
//        [blackPink retain]; // retain count == 2;
//        
//        NSLog(@"retain count 2 : %ld", blackPink.retainCount);
//        
//        [blackPink release]; // retain count ==  1;
//        
//        NSLog(@"retain count 3 : %ld", blackPink.retainCount);
//        
//        [blackPink release]; // retain count == 0; 이상태에서 객체가 dealloc됨
//        
//        NSLog(@"retain count 4 : %ld", blackPink.retainCount);
        
        blackPink.company = @"YG";
        blackPink.memberCount = @5;
        blackPink.manager = @"정준하";
        
        
        
        BroadcatStation *mbc = [[BroadcatStation alloc] init];
        BroadcatStation *sbs = [[BroadcatStation alloc] init];
        BroadcatStation *kbs = [[BroadcatStation alloc] init];
        
        mbc.musician = blackPink;
        
        
        sbs.musician = blackPink;
        
        
        kbs.musician = blackPink;
        
        
        mbc.musician = nil;
        
        
        sbs.musician = nil;
        
        NSLog(@"%@", kbs.musician.groupName);

        
    }
    return 0;
}


