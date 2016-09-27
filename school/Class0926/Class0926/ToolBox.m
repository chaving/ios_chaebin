//
//  ToolBox.m
//  Class0926
//
//  Created by chaving on 2016. 9. 26..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ToolBox.h"

@implementation ToolBox


// cm를 inch 로
+ (CGFloat)convertInch:(CGFloat)cm
{
    return cm / 2.54;
}

// inch 를 cm 로
+ (CGFloat)convertCm:(CGFloat)inch
{
    return inch * 2.54;
}

// m2를 평으로
+ (CGFloat)converSquareMeter:(CGFloat)m2
{
    return m2 / 3.3058;
}

// 평을 m2 로
+ (CGFloat)converM2:(CGFloat)squarMeter
{
    return squarMeter * 3.3058;
}

// 섭씨를 화씨로
+ (CGFloat)convertFahrenheit:(CGFloat)celsius
{
    return (celsius - 32) / 1.8000;
}

// 화씨를 섭씨로
+ (CGFloat)convertCelsius:(CGFloat)fahrenheit
{
    return (fahrenheit*1.8000) + 32;
}


// 메가바이트를 키로바이트로
+ (CGFloat)convertKB:(CGFloat)mb
{
    return 1024 / mb;
}

// 키로바이트를 메가바이트로
+ (CGFloat)convertMb:(CGFloat)kb
{
    return kb * 1024;
}

// 시간 단위 표기를 초 표기로
+ (NSInteger)convertSec:(NSInteger)hour minute:(NSInteger)minute sec:(NSInteger)sec
{
    return (hour * 3600) + (minute * 60) + sec;
}

+ (void)convertHour:(NSInteger)sec
{
    NSInteger returnHour = sec/3600;
    NSInteger returnMinute = (sec%3600)/60;
    NSInteger returnSec = (sec%3600)%60;
    
    NSLog(@"%ld시 %ld분 %ld초", returnHour, returnMinute, returnSec);
    
}



@end
