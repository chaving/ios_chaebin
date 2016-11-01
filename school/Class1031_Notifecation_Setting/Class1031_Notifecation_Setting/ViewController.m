//
//  ViewController.m
//  Class1031_Notifecation_Setting
//
//  Created by chaving on 2016. 10. 31..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *mainTextLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didChangeMainLabel:)
                                                 name:DidChangeSettingNotification
                                               object:nil];
    
}

- (void)didChangeMainLabel:(NSNotification *)noti{

    UIFont *fontSize = [[noti userInfo] objectForKey:UserInfoKeyLabelFont];
    UIColor *fontColor = [[noti userInfo] objectForKey:UserInfoKeyLabelTextColor];
    
    self.mainTextLabel.font = fontSize;
    self.mainTextLabel.textColor = fontColor;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
