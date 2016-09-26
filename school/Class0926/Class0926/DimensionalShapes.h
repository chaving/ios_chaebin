//
//  DimensionalShapes.h
//  Class0926
//
//  Created by chaving on 2016. 9. 26..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DimensionalShapes : NSObject

@property NSInteger length;
@property NSInteger width;
@property NSInteger height;
@property NSInteger oneSide;
@property NSInteger topSide;
@property NSInteger bottomSide;
@property NSInteger radius;


// 정사각형의 넓이

- (CGFloat)squareArea:(NSInteger)oneSide;

// 정사각형의 둘레
- (CGFloat)squarePerimeter:(NSInteger)oneSide;

// 직사각형의 넓이
- (CGFloat)rectangleArea:(NSInteger)length width:(NSInteger)width;

// 직사각형의 둘레
- (CGFloat)rectanglePerimeter:(NSInteger)length width:(NSInteger)width;

// 원의 넓이
- (CGFloat)circleArea:(NSInteger)radius;

// 원의 둘레
- (CGFloat)circlePerimeter:(NSInteger)radius;

// 삼각형의 넓이
+ (CGFloat)triangleArea:(NSInteger)height bottomSide:(NSInteger)bottomeSide;

// 사다리꼴의 넓이
+ (CGFloat)trapezoidArea:(NSInteger)topSide height:(NSInteger)heihgt bottomSide:(NSInteger)bottomSide;

// 정 부피
+ (CGFloat)cubeVolume:(NSInteger)oneSide;

// 직 부피
+ (CGFloat)rectangularSolid:(NSInteger)width length:(NSInteger)length height:(NSInteger)height;

// 원기둥 부피
+ (CGFloat)circularCylinder:(NSInteger)radius height:(NSInteger)heihgt;

// 원 구의 부피
+ (CGFloat)sphere:(NSInteger)radius;

// 원뿔의 부피
+ (CGFloat)cone:(NSInteger)radius height:(NSInteger)height;




@end
