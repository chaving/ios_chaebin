//
//  Healer.h
//  Class0923
//
//  Created by chaving on 2016. 9. 23..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "GameCharater.h"

@interface Healer : GameCharater

@property NSInteger manaPoint;

- (id)Cure:(GameCharater *)someone;

@end
