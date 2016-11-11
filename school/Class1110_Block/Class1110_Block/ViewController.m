//
//  ViewController.m
//  Class1110_Block
//
//  Created by chaving on 2016. 11. 10..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

typedef void (^testBlock)(BOOL isLock);


@interface ViewController ()


@property void (^plusNumber)(NSInteger, NSInteger);
@property (nonatomic) testBlock t1;
@property (nonatomic) NSInteger numnumnum;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    // 정의 되어 있는
    self.t1 = ^(BOOL isLock){
    
        NSLog(@"%d", isLock);
    };
    
    
    
    // 값의 제곱을 출력
    void (^printInteger)(NSInteger) = ^(NSInteger num){
    
        num *= num;
        
        NSLog(@"1 : %ld", num);
    };
    
    printInteger(4);
    
    
    // 두개의 파라미터를 받아서 더한 값을 출력
    void (^sumNumber)(NSInteger, NSInteger) = ^(NSInteger num1, NSInteger num2){
    
        NSInteger sumNum = num1 + num2;
        
        NSLog(@"2 : %ld", sumNum);
    };
    
    sumNumber(2,3);
    
    
    // 프로퍼티를 이용한 블럭 함수 이용
    _plusNumber = ^(NSInteger num1, NSInteger num2){
        
        NSInteger plusNum = num1 + num2;
        
        NSLog(@"3 : %ld", plusNum);
    };
    
    _plusNumber(2,8);
    
    
    // This is Block 을 프린트 / 리턴 void 입력도 void
    void (^print)(void) = ^{
    
        NSLog(@"This is Block");
    };
    
    print();
    
    
    void (^numberGame)(NSInteger, NSInteger) = ^(NSInteger num1, NSInteger num2){
    
        NSInteger resultNum = num1 * num2;
        
        NSLog(@"4 : %ld", resultNum);
    };
    
    numberGame(4,8);
    
    
    // retrun 값이 있는 블럭함수의 사용
    NSInteger (^resultNumber)(NSInteger, NSInteger) = ^(NSInteger num1, NSInteger num2){
    
        NSInteger result = num1 + num2;
        
        return result;
    };
    
    NSLog(@"5 : %ld", resultNumber(2,5));
    
    [self testMethod];
    
    
    [self simpleMethod:^(NSString *name) {
        
        NSLog(@"inner Param %@", name);
    }];
}


// 블럭의 캡쳐 이해하기
- (void) testMethod {

//    __block NSInteger anInteger = 42;
    
    ViewController * __weak wself = self; // 굉장히 중요!!! 메모리 누수를 막기위한 것
    
    void (^testBlock)(void) = ^ {
        
//        anInteger = 85;
        
//        self.numnumnum = 15;
//        블럭 안에서 self 로 값을 건드리게 되면 Referance Count가 제대로 해제가 안될 수 있기 때문에 weak로 바꿔서 사용 한다
        
        wself.numnumnum = 15;
        
        NSLog(@"IN Integer is : %ld", wself.numnumnum);
    };
    
//    anInteger = 54;
    self.numnumnum = 23;
    
    NSLog(@"OUT Integer is : %ld", wself.numnumnum);
    
    testBlock();
}


- (void) simpleMethod:(void (^)(NSString *name))param{

    NSLog(@"before StartBlock");
    
    param(@"in param");
    
    NSLog(@"after EndBlock");

}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
