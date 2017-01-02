//
//  Wizard.h
//  Class0923
//
//  Created by chaving on 2016. 9. 23..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "GameCharater.h"

@interface Wizard : GameCharater

@property NSInteger manaPoint;

- (id)magicalAttack:(GameCharater *)someone;

///물리공격에 대한 Wizard 의 재정의
- (id)physicalAttackTo:(GameCharater *)someone;




@end
