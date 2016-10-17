//
//  Class1011_SoftWare_TDDTests.m
//  Class1011_SoftWare_TDDTests
//
//  Created by chaving on 2016. 10. 12..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface Class1011_SoftWare_TDDTests : XCTestCase

@end

@implementation Class1011_SoftWare_TDDTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


// Active Code
- (NSString *)testFizzBuzzSay:(NSInteger)number{

    return [NSString stringWithFormat:@"%ld", number];
//    return @"1";
}



- (NSString *)fizzBuzz:(NSInteger)someNum{
    
    if (someNum % 15 == 0) {
        return @"FizzBuzz";
    }else if (someNum % 3 == 0){
        return @"Fizz";
    }else if (someNum % 5 == 0){
        return @"Buzz";
    }else{
        return [NSString stringWithFormat:@"%ld", someNum];
    }
    
}


- (NSString *)integerFactorization:(NSInteger)someNum{

    NSString *resultNum = [[NSString alloc]init];
    
    if (someNum == 1) {
        return nil;
    }
    
    NSMutableArray *saveNumArray = [[NSMutableArray alloc]init];
    NSInteger saveNum = 0;
    
    for (NSInteger i = 2; i < someNum; i += 1) {
        
        for (NSInteger j = 2; j < saveNum; j += 1) {
        
            if (someNum % j == 0) {
                
                [saveNumArray addObject:[NSString stringWithFormat:@"%ld", j]];
                
                saveNum = someNum / j;
                
            }
            
        }
        
    }
    
    for (NSString *arrayNumber in saveNumArray) {
        
        [resultNum stringByAppendingString:arrayNumber];
        
    }
    
    
    return resultNum;

}



- (void)testFizzBuzzShouldSay1{

    XCTAssertEqualObjects(@"1", [self fizzBuzz:1]);
}

- (void)testFizzBuzzShouldSay3{
    
    XCTAssertEqualObjects(@"Fizz", [self fizzBuzz:3]);
}

- (void)testFizzBuzzShouldSay5{
    
    XCTAssertEqualObjects(@"Buzz", [self fizzBuzz:5]);
}

- (void)testFizzBuzzShouldSay15{
    
    XCTAssertEqualObjects(@"FizzBuzz", [self fizzBuzz:15]);
}


- (void)testNum12{
    
    XCTAssertEqualObjects(@"223", [self integerFactorization:12]);
}



- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
