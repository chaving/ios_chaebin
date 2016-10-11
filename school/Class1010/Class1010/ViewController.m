//
//  ViewController.m
//  Class1010
//
//  Created by chaving on 2016. 10. 10..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) NSMutableArray *selectedBtns;
@property (nonatomic,weak) UILabel *displayLB;
@property (nonatomic,weak) UIButton *selectionBTN;
@property (nonatomic,weak) UIButton *beforeBTN;
@property (nonatomic,weak) UISwitch *switchAction;
@property (nonatomic,weak) UISlider *sliderAction;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIButton *okBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    okBtn.frame = CGRectMake(30, 50, 200, 35);
//    [okBtn setTitle:@"OK" forState:UIControlStateNormal];
//    [okBtn setTitle:@"Touch Down" forState:UIControlStateHighlighted];
//    [okBtn setTitle:@"Selected" forState:UIControlStateSelected];
//    [okBtn setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
//    [okBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateHighlighted];
//    [okBtn setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
//    
//    okBtn.titleLabel.font = [UIFont systemFontOfSize:30];
//    okBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
//    
//    [okBtn addTarget:self
//              action:@selector(touchUpInsideOKBtn:)
//    forControlEvents:UIControlEventTouchUpInside];
//    
//    [self.view addSubview:okBtn];
    
    self.selectedBtns = [[NSMutableArray alloc]init];
    [self creatBtn];
    [self upDateLayout];
    
}


- (void)creatBtn{

    
    // UISwitch ----------------------------------------------------------------
    UISwitch *switchBtn = [[UISwitch alloc]initWithFrame:CGRectMake(self.view.frame.size.width-60, 35, 50, 30)];
    [switchBtn setOn:NO];
    [switchBtn addTarget:self action:@selector(switchValue:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:switchBtn];
    self.switchAction = switchBtn;
    
    // UISlider ----------------------------------------------------------------
    UISlider *slideLayer = [[UISlider alloc]init];
    slideLayer.frame = CGRectMake(50, self.view.frame.size.height-60, self.view.frame.size.width-100, 40);
    slideLayer.value = 0.0;
    slideLayer.minimumValue = 0.0;
    slideLayer.maximumValue = 1.0;
    [slideLayer addTarget:self action:@selector(slideValue:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:slideLayer];
    self.sliderAction = slideLayer;
    
    
    // 컨텐츠 컨테이너 ----------------------------------------------------------------
    UIView *contentContainer = [[UIView alloc]
                                initWithFrame:CGRectMake(50, self.view.frame.size.height/2 - 120, self.view.frame.size.width - 100, 240)];
    
    contentContainer.layer.borderColor = [UIColor colorWithRed:225.f/255.f green:225.f/255.f blue:225.f/255.f alpha:1].CGColor;
    contentContainer.layer.borderWidth = 1.0;
    contentContainer.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:contentContainer];
    
    // 컨텐츠 레이어 ----------------------------------------------------------------
    UIView *contentLayer = [[UIView alloc]init];
    
    contentLayer.frame = CGRectMake(20, 20, contentContainer.frame.size.width-40, contentContainer.frame.size.height -40);
    
    [contentContainer addSubview:contentLayer];
    
    
    // 컨텐츠 타이틀 ----------------------------------------------------------------
    UILabel *contentTitle = [[UILabel alloc]init];
    contentTitle.frame = CGRectMake(0, 0, contentLayer.frame.size.width, 70);
    contentTitle.text = @"Select Button EX";
    contentTitle.textAlignment = NSTextAlignmentCenter;
    
    contentTitle.font = [UIFont boldSystemFontOfSize:20];
    
    [contentLayer addSubview:contentTitle];

    
    // 실제 버튼 ----------------------------------------------------------------
    UIView *btnLayer = [[UIView alloc]init];
    btnLayer.frame = CGRectMake(5, 70, contentLayer.frame.size.width-10, 70);
    
    [contentLayer addSubview:btnLayer];
    
    for (NSInteger i = 0; i < 4; i += 1) {
        
        UIButton *selectBtn = [[UIButton alloc]init];
        selectBtn.layer.borderWidth = 1.0;
        selectBtn.layer.borderColor = [UIColor orangeColor].CGColor;
        selectBtn.tag = i;
        [selectBtn setTitle:[NSString stringWithFormat:@"%ld 번 버튼",i+1]  forState:UIControlStateNormal];
        [selectBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//        [selectBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
        [selectBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
        
        selectBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        
        selectBtn.backgroundColor = [UIColor whiteColor];
        selectBtn.layer.cornerRadius = 15.0;
        
        [selectBtn addTarget:self action:@selector(touchUpInsideOKBtn:) forControlEvents:UIControlEventTouchUpInside];
        
        [btnLayer addSubview:selectBtn];
        [self.selectedBtns addObject:selectBtn];
        self.selectionBTN = selectBtn;
    }
    
    // 버튼 라벨 ----------------------------------------------------------------
    UILabel *selectLabel = [[UILabel alloc]init];
    selectLabel.frame = CGRectMake(0, 90, contentLayer.frame.size.width, 40);
    selectLabel.textAlignment = NSTextAlignmentCenter;
    selectLabel.text = @"선택된 버튼이 없습니다.";
    
    [btnLayer addSubview:selectLabel];
    self.displayLB = selectLabel;
    
    

}

- (void)upDateLayout{

    // Product View
    const NSInteger btnMargin = 10;
    
    for(UIView *btn in self.selectedBtns){
        
        NSInteger row = btn.tag/2;
        NSInteger cal = btn.tag%2;
        
        CGFloat btnWidth = (self.view.frame.size.width - 140)/2 - btnMargin;
        CGFloat btnHeight = 30;
        
        btn.frame = CGRectMake((btnWidth + btnMargin)*row, (btnHeight + btnMargin)*cal, btnWidth, btnHeight);
        
    }

}


- (void)touchUpInsideOKBtn:(UIButton *)sender{

    NSInteger selectedTag = sender.tag;
    self.selectionBTN = sender;
    
    if (sender.selected) {
        
        self.displayLB.text = [NSString stringWithFormat:@"선택된 버튼이 없습니다."];
        sender.selected = NO;
        self.selectionBTN.backgroundColor = [UIColor whiteColor];
        
    }else{
        
        self.beforeBTN.backgroundColor = [UIColor whiteColor];
        self.beforeBTN.selected = nil;
        
        self.displayLB.text = [NSString stringWithFormat:@"선택된 버튼은 : %ld 번 입니다.", selectedTag+1];
        sender.selected = YES;
        self.selectionBTN.backgroundColor = [UIColor orangeColor];
        self.beforeBTN = sender;
    }
    
}

- (void)switchValue:(UISwitch *)switched{

    if (switched.on) {
        self.view.backgroundColor = [UIColor blackColor];
        self.sliderAction.value = 0.0;
    }else{
        self.view.backgroundColor = [UIColor whiteColor];
        self.sliderAction.value = 1.0;
    }

}

- (void)slideValue:(UISlider *)slided{

    self.view.backgroundColor = [UIColor colorWithRed:255.f/255.f green:255.f/255.f blue:255.f/255.f alpha:slided.value];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
