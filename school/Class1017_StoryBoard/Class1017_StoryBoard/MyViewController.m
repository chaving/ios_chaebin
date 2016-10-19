//
//  MyViewController.m
//  Class1017_StoryBoard
//
//  Created by chaving on 2016. 10. 17..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@property (weak, nonatomic) IBOutlet UIView *bgView;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UISlider *alphaSlider;


@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    self.testLabel.text = @"테스트";
}


- (IBAction)clickButton:(id)sender{

    if ([sender isKindOfClass:[UIButton class]]) {
        UIButton *button = sender;
        NSLog(@"button title %@, tag %ld", [[button titleLabel]text],[button tag]);
    }else{
        NSLog(@"버튼이 아닙니다.");
    }

}


- (IBAction)sliderValueChanged:(id)sender{

    if ([sender isKindOfClass:[UISlider class]]) {
        UISlider *slider = sender;
        NSLog(@"slider Value : %f",slider.value);
    }
}


- (IBAction)segmentSelectionChanged:(id)sender{

    if ([sender isKindOfClass:[UISegmentedControl class]]) {
        UISegmentedControl *segmentControl = sender;
        NSLog(@"SegmentControled : %ld",segmentControl.selectedSegmentIndex);
    }
}

- (IBAction)onOffSwitch:(id)sender{

    if ([sender isKindOfClass:[UISwitch class]]) {
        UISwitch *switchBTN = sender;
        NSLog(@"switch : %d",switchBTN.on);
    }
}

- (IBAction)controlRGBColor:(id)sender{

    float redValue = self.redSlider.value;
    float greenValue = self.greenSlider.value;
    float blueValue = self.blueSlider.value;
    float alphaValue = self.alphaSlider.value;
    
    self.bgView.backgroundColor = [UIColor colorWithRed:redValue green:greenValue blue:blueValue alpha:alphaValue];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
