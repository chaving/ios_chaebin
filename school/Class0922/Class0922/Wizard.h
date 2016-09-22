//
//  Wizard.h
//  Class0922
//
//  Created by chaving on 2016. 9. 22..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCharacter.h"

@interface Wizard : GameCharacter

- (id)magicalAttackTo:(id)someone;
- (id)teleportTo:(NSString *)location;
- (id)windstormTo:(id)someone;

@end
