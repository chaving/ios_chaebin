//
//  ViewController.m
//  Class1017_StoryBoardLogin
//
//  Created by chaving on 2016. 10. 17..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *idField;
@property (weak, nonatomic) IBOutlet UITextField *pwField;
@property (weak, nonatomic) IBOutlet UIButton *checkBoxBTN;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.checkBoxBTN.layer.cornerRadius = 5;
    
}
- (IBAction)touchAutoLogin:(id)sender {
    
    if ([sender isKindOfClass:[UIButton class]]) {
        UIButton *autoLoginButton = sender;
        [autoLoginButton setSelected:![autoLoginButton isSelected]];
    }
}


- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    NSLog(@"BeginEditing");
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{

    if (textField.secureTextEntry) {
        [textField endEditing:YES];
    }else{
    }
    
    
    ;
    
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
