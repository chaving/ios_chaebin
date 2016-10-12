//
//  ViewController.m
//  Class1011
//
//  Created by chaving on 2016. 10. 11..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"


@interface ViewController () <UIScrollViewDelegate>

@property UILabel *displayLayer;
@property UITextField *textFildeLayer;
@property UIScrollView *scroll;
@property UILabel *pageText;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIScrollView *scrollLayer = [[UIScrollView alloc]init];
    
    scrollLayer.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    [scrollLayer setContentSize:CGSizeMake(self.view.frame.size.width*3, self.view.frame.size.height)];
    
    scrollLayer.delegate=self;
    scrollLayer.pagingEnabled = YES;
    [self.view addSubview:scrollLayer];
    self.scroll = scrollLayer;
    
    UIView *firstLayer = [[UIView alloc]init];
    firstLayer.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    firstLayer.backgroundColor = [UIColor redColor];
    
    [scrollLayer addSubview:firstLayer];
    
    
    UIView *secondLayer = [[UIView alloc]init];
    secondLayer.frame = CGRectMake(self.view.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height);
    secondLayer.backgroundColor = [UIColor orangeColor];
    
    [scrollLayer addSubview:secondLayer];
    
    
    UIView *thirdLayer = [[UIView alloc]init];
    thirdLayer.frame = CGRectMake(self.view.frame.size.width*2, 0, self.view.frame.size.width, self.view.frame.size.height);
    thirdLayer.backgroundColor = [UIColor yellowColor];
    
    [scrollLayer addSubview:thirdLayer];
    
    
    UILabel *pageLB = [[UILabel alloc]init];
    
    pageLB.frame = CGRectMake(20, 35, 50, 50);
    pageLB.text = @"1";
    pageLB.textAlignment = NSTextAlignmentCenter;
    pageLB.layer.cornerRadius = 25.0;
    pageLB.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:pageLB];
    self.pageText = pageLB;
    
    
    // Container -------------------------------------------------------
    
    UIView *container = [[UIView alloc]init];
    
    container.frame = CGRectMake(50, self.view.frame.size.height/2 - 70, self.view.frame.size.width-100, 140);
    container.layer.borderColor = [UIColor colorWithRed:225.f/255.f green:225.f/255.f blue:225.f/255.f alpha:1].CGColor;
    container.layer.borderWidth = 1.0;
    container.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:container];
    
    
    // Content Layer --------------------------------------------------
    
    UIView *contentLayer = [[UIView alloc]init];
    
    contentLayer.frame = CGRectMake(20, 20, container.frame.size.width - 40, container.frame.size.height - 40);
    
    [container addSubview:contentLayer];
    
    
    // TextFilde View --------------------------------------------------
    
    UIView *textFildeView = [[UIView alloc]init];
    
    textFildeView.frame = CGRectMake(0, 0, contentLayer.frame.size.width, 50);
    
    [contentLayer addSubview:textFildeView];
    
    
    // Textfild --------------------------------------------------------
    
    UITextField *inputLayer = [[UITextField alloc]init];
    
    inputLayer.frame = CGRectMake(0, 0, textFildeView.frame.size.width - 70, 30);
    inputLayer.borderStyle = UITextBorderStyleBezel;
    inputLayer.layer.borderColor = [UIColor colorWithRed:225.f/255.f green:225.f/255.f blue:225.f/255.f alpha:1].CGColor;
    inputLayer.delegate = self;
    
    [textFildeView addSubview:inputLayer];
    self.textFildeLayer = inputLayer;
    
    // Textfilde btn ---------------------------------------------------
    
    UIButton *textBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    textBtn.frame = CGRectMake(textFildeView.frame.size.width-50, 0, 50, 30);
    [textBtn setTitle:@"확인" forState:UIControlStateNormal];
    [textBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    textBtn.titleLabel.font = [UIFont systemFontOfSize:13];
    textBtn.layer.borderColor = [UIColor colorWithRed:225.f/255.f green:225.f/255.f blue:225.f/255.f alpha:1].CGColor;
    textBtn.layer.borderWidth = 1.0;
    textBtn.layer.cornerRadius = 5.0;
    
    [textBtn addTarget:self
                action:@selector(onTouchupInsideBtn:)
      forControlEvents:UIControlEventTouchUpInside];
    
    [textFildeView addSubview:textBtn];
    
    
    
    // Display label -------------------------------------------------------
    
    UILabel *displayLB = [[UILabel alloc]init];
    
    displayLB.frame = CGRectMake(0, 50, contentLayer.frame.size.width, 50);
    displayLB.text = @"결과 : 입력하세요.";
    displayLB.textAlignment = NSTextAlignmentCenter;
    
    
    [contentLayer addSubview:displayLB];
    self.displayLayer = displayLB;
}


- (void)onTouchupInsideBtn:(UIButton *)sender{

    NSString *fildeText = self.textFildeLayer.text;
    
    self.displayLayer.text = [NSString stringWithFormat:@"결과 : %@", fildeText];

    [self.textFildeLayer resignFirstResponder];
    

}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{

    [self.textFildeLayer resignFirstResponder];
    
    return nil;
}



- (void)scrollViewDidScroll:(UIScrollView *)scrollView{

    NSInteger scrollOffSetX = scrollView.contentOffset.x;
    
    NSInteger scrollPageText = scrollOffSetX/self.view.frame.size.width+1;
    self.pageText.text = [NSString stringWithFormat:@"%ld", scrollPageText];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
