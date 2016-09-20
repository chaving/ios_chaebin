//
//  Warrior.m
//  ClassEX
//
//  Created by chaving on 2016. 9. 20..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Warrior.h"

@implementation Warrior

- (id)wheelwind{
    NSLog(@"무기를 회오리 바람처럼 빙글빙글 돌며 공격합니다.");
    return nil;
}

- (id)shout{
    NSLog(@"큰 함성으로 동료의 사기를 올리고 적의 사기를 떨어트립니다.");
    return nil;
}

- (id)pickUptheItem{
    NSLog(@"드랍된 아이템을 줍습니다.");
    return nil;
}

- (id)slash{
    NSLog(@"무기를 크게 휘두릅니다.");
    return nil;
}

- (id)skillTo:(id)someone what:(id)skill damage:(id)damage{
    NSLog(@"%@에게 %@을(를) %@의 공격력으로 사용합니다.", someone, skill, damage);
    return nil;
}

- (id)rating:(id)rating pickUp:(id)item what:(id)something{
    NSLog(@"%@의() %@ %@를 주웠습니다.", rating, item, something);
    return nil;
}

@end
