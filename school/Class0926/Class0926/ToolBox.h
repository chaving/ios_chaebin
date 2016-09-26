//
//  ToolBox.h
//  Class0926
//
//  Created by chaving on 2016. 9. 26..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToolBox : NSObject

// 길이변환
+ (CGFloat)convertInch:(CGFloat)cm;
+ (CGFloat)convertCm:(CGFloat)inch;

// 넓이 변환
+ (CGFloat)converSquareMeter:(CGFloat)m2;
+ (CGFloat)converM2:(CGFloat)squarMeter;

// 온도 변환
+ (CGFloat)convertFahrenheit:(CGFloat)celsius;
+ (CGFloat)convertCelsius:(CGFloat)fahrenheit;

// 용량 변환
+ (CGFloat)convertKB:(CGFloat)mb;
+ (CGFloat)convertMb:(CGFloat)kb;

//시간 변환
+ (CGFloat)convertSec:(CGFloat)hour minute:(CGFloat)minute sec:(CGFloat)sec;
+ (CGFloat)convertHour:(CGFloat)sec;



@end
