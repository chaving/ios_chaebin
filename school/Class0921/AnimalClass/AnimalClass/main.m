//
//  main.m
//  AnimalClass
//
//  Created by chaving on 2016. 9. 21..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cat.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    
    
    Cat *navi = [[Cat alloc] init];
    
    navi.nickName = @"나비";
    navi.age = 3;
    navi.order = 2;
    
    
    Dog *white = [[Dog alloc] init];
    
    white.nickName = @"흰둥이";
    white.age = 2;
    white.order =1;
    
    
    
    [navi meetTo:white where:@"거실코너"];
    [white meetTo:navi where:@"거실코너" status:@"좋아"];
    
    [navi jumpTo:white point:@"등"];
    
    [navi meetTo:@"거실"];
    
    
    
    /*
     오늘의 스터디
     %-5ld = 5자리수 만큼 표현 하는데 왼쪽 정렬된 모습으로 보여줌
     %-04ld = 4자리 수만큼 보여주는데 왼쪽 정렬된 모습
     %04ld = 4자리 수 만큼 보여주는데 오른쪽 정렬하고 앞에 빈자리에는 0을 넣어줌
     %+3ld = 3자리 수 만큼 보여주는데 오른쪽 정렬된 모습
     
     %5.2f = 전체 5자리를 보여주고 소수점 밑으로는 2자리만 왼쪽정렬된 모습으로 보여줌
     %-10.3f = 전체 10자리를 보여주고 소수점 밑으로는 3자리만 오른쪽 정렬된 모습으로 보여줌
     %10.0f = 전체 10자리를 보여주고 소수점 밑으로는 표시안함 그리고 왼쪽 정렬으로 보여줌
     %.3f
     이것들이 무엇을 뜻하는지 알아보기
     */
    
    NSInteger someNum = 123;
    CGFloat someNumber = 1.12345;
    CGFloat someFloat = 11234.1236789;
    CGFloat otherFloat = .12;
    
    NSLog(@"1: [%ld]", someNum);
    NSLog(@"2: [%-5ld]", someNum);
    NSLog(@"3: [%5ld]", someNum);
    NSLog(@"4: [%-04ld]", someNum);
    NSLog(@"5: [%04ld]", someNum);
    NSLog(@"6: [%3ld]", someNum);
    
    NSLog(@"7: [%5.2f]", someFloat);
    NSLog(@"8: [%-5.2f]", someFloat);
    
    NSLog(@"9: [%-10.3f]", someNumber);
    NSLog(@"10: [%10.3f]", someNumber);
    
    NSLog(@"11: [%10.0f]", someNumber);
    NSLog(@"12: [%-10.0f]", someNumber);
    
    NSLog(@"13: [%.3f]", otherFloat);
    NSLog(@"14: [%-.3f]", otherFloat);
    
    NSLog(@"15: [%5.4f]", someFloat);
    NSLog(@"16: [%-5.5f]", someFloat);
    
    return 0;
}
