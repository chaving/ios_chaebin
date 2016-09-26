//
//  DimensionalShapes.m
//  Class0926
//
//  Created by chaving on 2016. 9. 26..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "DimensionalShapes.h"

@implementation DimensionalShapes

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.oneSide = 0;
    }
    return self;
}


// 정사각형의 넓이
- (CGFloat)squareArea:(NSInteger)oneSide
{
    return oneSide + oneSide;
}

// 정사각형의 둘레
- (CGFloat)squarePerimeter:(NSInteger)oneSide
{
    return 4 * oneSide;
}

// 직사각형의 넓이
- (CGFloat)rectangleArea:(NSInteger)length width:(NSInteger)width
{
    return length * width;
}

// 직사각형의 둘레
- (CGFloat)rectanglePerimeter:(NSInteger)length width:(NSInteger)width
{
    return 2 * length + 2 * width;
}

// 원의 넓이
- (CGFloat)circleArea:(NSInteger)radius
{
    return 3.14 * radius * radius;
}

// 원의 둘레
- (CGFloat)circlePerimeter:(NSInteger)radius
{
    return 2 * 3.14 * radius;
}

// 삼각혁의 넓이
+ (CGFloat)triangleArea:(NSInteger)height bottomSide:(NSInteger)bottomeSide
{
    return (1/2) * height * bottomeSide;
}


// 사다리꼴의 넓이
+ (CGFloat)trapezoidArea:(NSInteger)topSide height:(NSInteger)height bottomSide:(NSInteger)bottomSide
{
    return (1/2) * height * (topSide + bottomSide );
}

// 정 부피
+ (CGFloat)cubeVolume:(NSInteger)oneSide
{
    return oneSide * oneSide * oneSide;
}

// 직 부피
+ (CGFloat)rectangularSolid:(NSInteger)width length:(NSInteger)length height:(NSInteger)height
{
    return width * length * height;
}

// 원기둥의 부피
+ (CGFloat)circularCylinder:(NSInteger)radius height:(NSInteger)height;
{
    return 3.14 * radius * radius * height;
}

// 원구의 부피
+ (CGFloat)sphere:(NSInteger)radius
{
    return (4/3) * 3.14 * radius * radius * radius;
}

// 원뿔의 부피
+ (CGFloat)cone:(NSInteger)radius height:(NSInteger)height
{
    return (1/3) * 3.14 * radius * radius * height;
}




@end
