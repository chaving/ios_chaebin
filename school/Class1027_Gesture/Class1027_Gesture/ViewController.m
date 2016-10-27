//
//  ViewController.m
//  Class1027_Gesture
//
//  Created by chaving on 2016. 10. 27..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIGestureRecognizerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *touchCount;
@property (weak, nonatomic) IBOutlet UILabel *touchOriginXY;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapGestureSection;
@property NSInteger tapCountNum;


@end

@implementation ViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.tapCountNum = 0;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    _tapCountNum += 1;
    
    self.touchCount.text = [NSString stringWithFormat:@"%ld", _tapCountNum];
    
    UITouch *touch = [touches anyObject];
    CGPoint gestureStartPoint = [touch locationInView:self.view];
    
    CGFloat deltaX = gestureStartPoint.x;
    CGFloat deltaY = gestureStartPoint.y;
    
    self.touchOriginXY.text = [NSString stringWithFormat:@"(%.2lf / %.2lf)",deltaX ,deltaY];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
