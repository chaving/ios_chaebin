//
//  main.m
//  Class0926
//
//  Created by chaving on 2016. 9. 26..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CalculationSubject.h"
#import "DimensionalShapes.h"
#import "ToolBox.h"
#import "Grade.h"
#import "Month.h"
#import "Number.h"

int main(int argc, const char * argv[]) {
    
//    @autoreleasepool {
//        //객체 생성
//        CalculationSubject *cal = [[CalculationSubject alloc] init];
//        
//        //점수 추가
//        [cal addScore:80];
//        [cal addScore:70];
//        
//        //평균
//        CGFloat average = [cal average];
//        NSLog(@"%lf", average);
//        
//    }
    
    // 학점 평균 ========================================================
    CalculationSubject *chaebin = [[CalculationSubject alloc] init];
    
    CGFloat averageTemp = 0;
    
    [chaebin addScore:80];
    [chaebin addScore:70];
    averageTemp = [chaebin average];

    NSLog(@"채빈의 학점 평균은 %lf 이다.", averageTemp);
    
    
    
    // 도형의 넓이 / 둘레 / 부피 ===========================================
    
    // 정사각형의 넓이 / 둘레
    DimensionalShapes *square = [[DimensionalShapes alloc] init];
    
    square.oneSide = 5;
    
    CGFloat area = [square squareArea:square.oneSide];
    CGFloat perimeter = [square squarePerimeter:square.oneSide];
    
    NSLog(@"한변이 5일때 넓이는 %lf이고 둘레는 %lf 이다.", area, perimeter);
    
    
    // 직사각형의 넓이 / 둘레
    DimensionalShapes *rectangle = [[DimensionalShapes alloc] init];
    
    rectangle.length = 2;
    rectangle.width = 3;
    
    CGFloat rectangleArea = [rectangle rectangleArea:rectangle.length width:rectangle.width];
    CGFloat rectanglePerimeter = [rectangle rectanglePerimeter:rectangle.length width:rectangle.width];
    
    NSLog(@"세로가 %ld 이고 가로가 %ld 일때 넓이는 %.2lf, 둘레는 %.2lf 이다.", rectangle.length, rectangle.width, rectangleArea, rectanglePerimeter);
    
    
    //원의 넓이 / 둘레
    DimensionalShapes *circle = [[DimensionalShapes alloc] init];
    
    circle.radius = 5;
    
    CGFloat circleArea = [circle circleArea:circle.radius];
    CGFloat circlePerimeter = [circle circlePerimeter:circle.radius];
    
    NSLog(@"반지름이 %ld 일때 원의 넓이는 %lf 이고 둘레는 %lf 이다.", circle.radius, circleArea, circlePerimeter);
    
    
    // 삼각형의 넓이 **************************
    CGFloat triangleArea = [DimensionalShapes triangleArea:4 bottomSide:6];
    
    NSLog(@"높이가 4이고 밑변이 6인 삼각형은 넓이가 %lf 이다.", triangleArea);
    
    
    // 사다리꼴의 넓이
    CGFloat trapezoidArea = [DimensionalShapes trapezoidArea:4 height:2 bottomSide:8];
    
    NSLog(@"윗변이 4이고 밑변이 8 높이가 2인 사다리꼴의 넓이는 %lf 이다.", trapezoidArea);
    
    // 정육면체의 부피
    CGFloat cubeArea = [DimensionalShapes cubeVolume:3];
    NSLog(@"한변이 3인 정육면체의 부피는 %lf 이다.", cubeArea);
    
    // 직육면체 부피
    CGFloat rectangularSolidVolume = [DimensionalShapes rectangularSolid:2 length:3 height:4];
    NSLog(@"밑면의 세로가 2 가로가 3 높이가 4 인 직육면체의 부피는 %lf 이다.", rectangularSolidVolume);
    
    // 원기둥 부피
    CGFloat circularVolume = [DimensionalShapes circularCylinder:4 height:6];
    NSLog(@"반지름이 4이고 높이가 6인 원기둥은 부피가 %lf 이다.", circularVolume);
    
    // 구의 부피
    CGFloat sphereVolume = [DimensionalShapes sphere:4];
    NSLog(@"반지름이 4인 구의 부피는 %lf 이다.", sphereVolume);
    
    // 원뿔의 부피
    CGFloat coneVolume = [DimensionalShapes cone:4 height:8];
    NSLog(@"반지름이 4이고 높이가 8인 원뿔의 부피는 %lf 이다.", coneVolume);
    
    
    
    
    
    
    // 단위 변환 ===========================================================
    
    //인치를 센치로
    CGFloat cmResult = [ToolBox convertInch:4];
    
    NSLog(@"%lf cm", cmResult);
    
    //센치를 인치로
    CGFloat inchResult = [ToolBox convertCm:1.574803];
    
    NSLog(@"%lf inch", inchResult);
    
    
    //섭씨를 화씨로
    CGFloat fahrenheitResult = [ToolBox convertFahrenheit:1];
    NSLog(@"%lf F", fahrenheitResult);
    
    //화씨를 섭씨로
    CGFloat celsiusResult = [ToolBox convertCelsius:-17.222222];
    NSLog(@"%lf C", celsiusResult);
    
    
    //메가바이트를 키로바이트로
    CGFloat kbResult = [ToolBox convertMb:1];
    
    NSLog(@"%lf kb", kbResult);
    
    //키로바이트를 메가바이트로
    CGFloat mbResult = [ToolBox convertKB:1024];
    
    NSLog(@"%lf mb", mbResult);
    
    //시간을 초단위로
    NSInteger secResult = [ToolBox convertSec:1 minute:21 sec:30];
    NSLog(@"1시간 21분 30초는 %ld 초 이다.", secResult);
    
    //초 단위를 시간 단위로
    [ToolBox convertHour:5900];
    
    
    // 조건문 사용하기 =====================================================
    
    
    // 점수별 등급 표현하기
    NSString *gradeResult = [Grade gradeType:-10];
    
    NSLog(@"너의 학점은 %@ 야!", gradeResult);
    
    // 스위치문 사용하기 =============================================
    
    
    // void 이용한 스위치문
    [Grade schoolGrade:2];
    
    // 스트링 비교
    CGFloat gradeNumThum = [Grade gradePoint:@"A"];
    NSLog(@"너의 등급이 A니까 점수는 %lf 야", gradeNumThum);
    
    // 월의 마지막날 구하기
    NSInteger monthLastDay = [Month lastDayNum:2];
    NSLog(@"2월의 마지막 날은 %ld일 입니다.", monthLastDay);
    
    
    // 숫자 관련 마직막 문제 ==========================================
    
    
    //절대값 표현하기
    NSInteger numAbsolute = [Number absoluteNum:-10];
    
    NSLog(@"절대값은 %ld 입니다.", numAbsolute);
    
    
    // 3번째 자리에서 반올림하여 2번째 자리까지 보여주기
    CGFloat numRound = [Number roundNum:3.116];
    
    NSLog(@"3째 자리에서 반올림한 값은 %.2lf 입니다.", numRound);
    
    // 윤년 구하는 것
    BOOL yearSelect = [Number checkLeapYear:100];
    
    NSLog(@"윤년입니까? : %d", yearSelect);
    
    
    return 0;
}
