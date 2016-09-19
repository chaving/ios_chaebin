//
//  Healer.h
//  StructureEX
//
//  Created by 임채빈 on 2016. 9. 19..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Healer : NSObject

@property id hp;
@property id mp;
@property id gender;
@property id cure;
@property id buff;

- (id)cure;
- (id)heal;
- (id)resurrection;

@end
