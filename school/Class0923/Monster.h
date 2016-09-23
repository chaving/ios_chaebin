//
//  Monster.h
//  Class0923
//
//  Created by chaving on 2016. 9. 23..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "GameCharater.h"

@interface Monster : GameCharater

@property NSString *monsterState;


// 어디서 누가 나타나는 매서드의 재정의
- (id)appear:(GameCharater *)someone where:(NSString *)where;

- (id)missAttack:(GameCharater *)someone;

@end
