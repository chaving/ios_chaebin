//
//  Person.h
//  ClassEX
//
//  Created by chaving on 2016. 9. 20..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 * 사람의 특징
 * 고민이 많은 생물
 *
 * @version 1.0
 * @author chaving
 * @가나다라마바사
 * @discussion 사람의 특징에는 뭐가 또 있을까
 * !!! 가나다라마사바
 *
 *
 */

@interface Person : NSObject

/// 사람의 이름을 나타냅니다.
@property id name;

/// 사람의 나이를 나타냅니다.
@property id age;

/// 사람의 전화번호를 나타냅니다.
@property id phoneNum;

/// 사람의 이메일을 나타냅니다.
@property id email;
@property id gender;

- (id)think:(id)people;
- (id)eat:(id)food;
- (id)walk:(id)where;
- (id)run:(id)where;

- (id)runTo:(id)location bySpeed:(id)speed with:(id)someone;

- (id)ride:(id)what;


@end
