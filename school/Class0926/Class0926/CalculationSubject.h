//
//  CalculationSubject.h
//  Class0926
//
//  Created by chaving on 2016. 9. 26..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 학점 계산기 클래스 만들기
 - Property 만들기
 - method 만들기
    1. 과목 점수 더하는 함수
    2. 평균 구하는 함수
 */


@interface CalculationSubject : NSObject

@property NSInteger totalScore;
@property NSInteger subjectCount;

- (void)addScore:(NSInteger)score;
- (CGFloat)average;


@end
