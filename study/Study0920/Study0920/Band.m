//
//  Band.m
//  Study0920
//
//  Created by chaving on 2016. 9. 20..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Band.h"

@implementation Band


-(id)joinTheBand:(id)person{
    NSLog(@"%@가 밴드에 가입하셨습니다.", person);
    return nil;
}

-(id)findTheBand:(id)person{
    NSLog(@"%@가 밴드를 찾았습니다.", person);
    return nil;
}

-(id)chating{
    NSLog(@"밴드원과 채팅을 합니다.");
    return nil;
}

-(id)notice{
    NSLog(@"밴드에 공지를 합니다.");
    return nil;
}

-(id)meeting{
    NSLog(@"밴드원과 모임을 합니다.");
    return nil;
}


@end
