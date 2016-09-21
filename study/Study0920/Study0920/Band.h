//
//  Band.h
//  Study0920
//
//  Created by chaving on 2016. 9. 20..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * 네이버 밴드를 이용한 클래스 구축입니다.
 * @discussion 네이버 밴드를 이용하여 프로퍼티와 메서드를 구축해보자
 * @author chaving
 * @version 0.1.0
 */

@interface Band : NSObject

@property id name;
@property id established;
@property id master;
@property id hobby;

/**
 * 네이버 밴드를 이용한 메서드 구축
 * @param person 밴드는 찾아온 사람
 */

- (id)joinTheBand:(id)person;

/**
 * 네이버 밴드를 이용한 메서드 구축
 * @param person 밴드는 찾아온 사람
 */

- (id)findTheBand:(id)person;
- (id)chating;
- (id)notice;
- (id)meeting;

@end
