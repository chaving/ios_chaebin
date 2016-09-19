//
//  Person.h
//  StructureEX
//
//  Created by 임채빈 on 2016. 9. 19..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

/* 프로퍼티와 메서드를 이부분에서 부터 작성합니다. S */

//프로퍼티 정의
// @property <데이터 타입> <프로퍼티 이름>;
@property id name;
@property id bloodtype;
@property id sex;
@property id weight;
@property id height;
@property id age;

//메서드 정의
// - (<반환 타입>)<메서드 이름>;
- (id)run;
- (id)eat;
- (id)think;
- (id)sleep;
- (id)walk;

/* E */

@end
