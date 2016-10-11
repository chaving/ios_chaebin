//
//  ViewController.m
//  Study1010
//
//  Created by chaving on 2016. 10. 10..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) UIView *container;
@property (nonatomic) NSMutableArray *viewLayer;
@property (nonatomic) NSMutableArray *labelLayer;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.viewLayer = [[NSMutableArray alloc]init];
    self.labelLayer = [[NSMutableArray alloc]init];
    
    [self creatView];
    [self updateLayout];
    
}

- (void)creatView{

    // Container --------------------------------------------------------------------
    UIView *container = [[UIView alloc]init];
    
    [self.view addSubview:container];
    self.container = container;
    
    
    // UIView --------------------------------------------------------------------
    for (NSInteger i=0; i < 9; i += 1) {
        
        UIView *viewLayer = [[UIView alloc]init];
        viewLayer.tag = i;
        viewLayer.layer.borderWidth = 1.0;
        viewLayer.layer.borderColor = [UIColor colorWithRed:225.f/255.f green:225.f/255.f blue:225.f/255.f alpha:1].CGColor;
        
        [container addSubview:viewLayer];
        [self.viewLayer addObject:viewLayer];
        
        UILabel *labelLayer = [[UILabel alloc]init];
        labelLayer.textAlignment = NSTextAlignmentCenter;
        labelLayer.text = [NSString stringWithFormat:@"%ld",i+1];
        labelLayer.tag = i;
        labelLayer.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.1];
        
        [viewLayer addSubview:labelLayer];
        [self.labelLayer addObject:labelLayer];
    }

}

- (void)updateLayout{

    NSInteger fullWidth = self.view.frame.size.width;
    NSInteger fullHeight = self.view.frame.size.height;
    
    self.container.frame = CGRectMake(20, 35, fullWidth-40, fullHeight - 35 - 20);
    
    for (UIView *viewContent in self.viewLayer) {
        
        const NSInteger viewMargin = 10;
        
        NSInteger row = viewContent.tag/3;
        NSInteger cal = viewContent.tag%3;
        
        CGFloat viewWidth = (self.container.frame.size.width-20)/3;
        CGFloat viewHeight = (self.container.frame.size.height-20)/3;
        
        viewContent.frame = CGRectMake((viewWidth + viewMargin)*row,
                                       (viewHeight + viewMargin)*cal, viewWidth, viewHeight);
        
    }
    
    for (UILabel *labelContent in self.labelLayer) {
        
        CGFloat labelWidth = (self.container.frame.size.width-20)/3;
        CGFloat labelHeight = (self.container.frame.size.height-20)/3;
        
        labelContent.frame = CGRectMake(0, labelHeight/2-labelHeight/8, labelWidth, labelHeight/4);
        
    }

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
