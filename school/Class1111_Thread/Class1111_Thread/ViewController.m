//
//  ViewController.m
//  Class1111_Thread
//
//  Created by chaving on 2016. 11. 11..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UILabel *timerLabel;
@property UIButton *timerButton;

@property NSThread *timeThread;
@property NSInteger timerSecond;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.timerSecond = 0;
    
    UIView *timerLayerView = [[UIView alloc] init];
    
    timerLayerView.frame = CGRectMake(25, self.view.frame.size.height/2-100, self.view.frame.size.width-50, 200);
    timerLayerView.backgroundColor = [UIColor colorWithRed:29.f/255.f green:140.f/255.f blue:249.f/255.f alpha:1];
    
    [self.view addSubview:timerLayerView];
    
    
    self.timerLabel = [[UILabel alloc] init];
    
    self.timerLabel.frame = CGRectMake(0, 0, timerLayerView.frame.size.width, 150);
    self.timerLabel.textColor = [UIColor whiteColor];
    self.timerLabel.textAlignment = NSTextAlignmentCenter;
    self.timerLabel.text = @"Timer";
    self.timerLabel.font = [UIFont boldSystemFontOfSize:30];
    
    [timerLayerView addSubview:self.timerLabel];
    
    
    self.timerButton = [[UIButton alloc] init];
    
    self.timerButton.frame = CGRectMake(0, 150, timerLayerView.frame.size.width, 50);
    [self.timerButton setTitle:@"Start" forState:UIControlStateNormal];
    [self.timerButton setTitle:@"Stop" forState:UIControlStateSelected];
    [self.timerButton addTarget:self action:@selector(threadAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [timerLayerView addSubview:self.timerButton];
    
    
    self.timeThread = [[NSThread alloc] initWithTarget:self selector:@selector(startThread) object:nil];
    
}


- (void)threadAction:(UIButton *)sender{

    if (self.timerButton.selected) {
        
        self.timerButton.selected == NO;
        
        [self.timeThread start];
    }else{
    
        self.timerButton.selected = YES;
        [self.timeThread cancel];
    }
    
    
    
    
}


- (void)changeText{

    self.timerLabel.text = [NSString stringWithFormat:@"%ld", self.timerSecond];
}


- (void) stopForThread{


}

- (void)startThread{

    while (!self.timeThread.cancelled) {
        
        [self performSelectorOnMainThread:@selector(changeText) withObject:self waitUntilDone:NO];
        
        sleep(1);
        
        self.timerSecond += 1;
    }
    
    self.timeThread = nil;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
