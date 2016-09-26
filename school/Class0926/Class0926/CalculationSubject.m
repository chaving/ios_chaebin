//
//  CalculationSubject.m
//  Class0926
//
//  Created by chaving on 2016. 9. 26..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "CalculationSubject.h"

@implementation CalculationSubject

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.totalScore = 0;
        self.subjectCount = 0;
    }
    return self;
}

// 점수를 받아서 토탈변수에 더한다.
// 더해진 점수마다 과목 카운트를 하나씩 올린다.
- (void)addScore:(NSInteger)score
{
    // 점수를 계속 더하는 거
    self.totalScore = self.totalScore + score;
    
    // 몇개의 과목을 더했는가
    self.subjectCount = self.subjectCount + 1;
}

// 평균을 구해서 반환 해준다.
- (CGFloat)average
{
    
    //                    self. 앞쪽에 변환해야되는 타입을 설정해 코드상 그 줄에서만 잠시 타입을 변환해줌 이것이 캐스팅!!
    CGFloat averageTemp = (CGFloat)self.totalScore / (CGFloat)self.subjectCount;
    
    return averageTemp;
}

@end
