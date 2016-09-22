//
//  Warrior.h
//  Class0922
//
//  Created by chaving on 2016. 9. 22..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameCharacter.h"

@interface Warrior : GameCharacter 

- (id)jumpTo:(NSString *)location;
- (id)smashTo:(id)someone;


@end
