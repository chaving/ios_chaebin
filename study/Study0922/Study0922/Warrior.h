//
//  Warrior.h
//  Study0922
//
//  Created by chaving on 2016. 9. 22..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "GameCharacter.h"

//@interface Warrior : GameCharacter
@interface Warrior : NSObject

@property NSString *nickName;

- (id)physicalAttack:(Warrior *)someone;

@end
