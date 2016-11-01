//
//  SettingViewController.m
//  Class1031_Notifecation_Setting
//
//  Created by chaving on 2016. 10. 31..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "SettingViewController.h"

@interface SettingViewController ()
@property (weak, nonatomic) IBOutlet UILabel *sampleTextLable;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UISegmentedControl *selectFontSizeSegment;
@property (weak, nonatomic) IBOutlet UIButton *popMainViewButton;

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

}

- (IBAction)didChangedSliderValue:(id)sender{

    self.sampleTextLable.textColor = [UIColor colorWithRed:self.redSlider.value
                                                     green:self.greenSlider.value
                                                      blue:self.blueSlider.value
                                                     alpha:1];
}

- (IBAction)didSelectedSegmentedChangeTheFontSize:(id)sender {
    
    switch (self.selectFontSizeSegment.selectedSegmentIndex) {
        case 0:
            self.sampleTextLable.font = [UIFont systemFontOfSize:10];
            break;
        case 1:
            self.sampleTextLable.font = [UIFont systemFontOfSize:20];
            break;
        case 2:
            self.sampleTextLable.font = [UIFont systemFontOfSize:30];
            break;
            
        default:
            break;
    }
}

- (IBAction)onTouchUpInsidePopTheMain:(id)sender {

    
    if ([self sampleTextLable] == nil ||
        [[self sampleTextLable] font] == nil ||
        [[self sampleTextLable] textColor] == nil) {
        return;
    }
    
    NSDictionary *userInfo = @{
                               UserInfoKeyLabelFont : self.sampleTextLable.font,
                               UserInfoKeyLabelTextColor : self.sampleTextLable.textColor
                               };
    
    [[NSNotificationCenter defaultCenter] postNotificationName:DidChangeSettingNotification
                                                        object:self
                                                      userInfo:userInfo];

    
    
    [self.navigationController popViewControllerAnimated:YES];

    
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
