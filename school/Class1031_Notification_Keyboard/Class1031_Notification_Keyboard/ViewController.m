//
//  ViewController.m
//  Class1031_Notification_Keyboard
//
//  Created by chaving on 2016. 10. 31..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UILabel *keyBoardText;
@property UILabel *keyBoardRectText;
@property UIGestureRecognizer *tapBackground;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didReceiveKeyboardStateNotifecation:)
                                                 name:UIKeyboardDidShowNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didReceiveKeyboardStateNotifecation:)
                                                 name:UIKeyboardDidHideNotification
                                               object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didReceiveKeyboardStateNotifecation:)
                                                 name:UIKeyboardDidChangeFrameNotification
                                               object:nil];
    
    
    self.tapBackground = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                 action:@selector(tapBackground:)];
    
    [self.view addGestureRecognizer:self.tapBackground];
    
    // 컨테이너 뷰
    UIView *containerView = [[UIView alloc] init];
    
    [containerView setFrame:CGRectMake(15, 15, self.view.frame.size.width - 30, self.view.frame.size.height - 30)];
    
    [self.view addSubview:containerView];
    
    
    // 키보드 텍스트
    self.keyBoardText = [[UILabel alloc] init];
    
    self.keyBoardText.frame = CGRectMake(0, 0, containerView.frame.size.width, 35);
    self.keyBoardText.text = @"키보드 없음";
    
    [containerView addSubview:self.keyBoardText];
    
    // 키보드 좌표
    self.keyBoardRectText = [[UILabel alloc] init];
    
    self.keyBoardRectText.frame = CGRectMake(0, 40, containerView.frame.size.width, 35);
    self.keyBoardRectText.text = @"[0.0.0.0]";
    
    [containerView addSubview:self.keyBoardRectText];
    
    // 텍스트 필드
    UITextField *textField = [[UITextField alloc] init];
    
    textField.frame = CGRectMake(0, 80, containerView.frame.size.width, 35);
    textField.borderStyle = UITextBorderStyleRoundedRect;
    
    [containerView addSubview:textField];
    
}

- (void)tapBackground:(id)sender {
    
    for (UIView *subview in [[self view] subviews]) {
        if ([subview isFirstResponder]) {
            [subview resignFirstResponder];
        }
    }
}

- (void)didReceiveKeyboardStateNotifecation:(NSNotification *)noti{

//    NSDictionary *info = [noti userInfo];
    
    if ([[noti name] isEqualToString:UIKeyboardDidShowNotification]) {
        self.keyBoardText.text = @"키보드 있음";
//        self.keyBoardRectText.text =[NSString stringWithFormat:@"%@", [info objectForKey:UIKeyboardFrameBeginUserInfoKey]];
    }else if ([[noti name] isEqualToString:UIKeyboardDidHideNotification]){
        
        self.keyBoardText.text = @"키보드 없음";
//        self.keyBoardRectText.text = [NSString stringWithFormat:@"%@", [info objectForKey:UIKeyboardFrameEndUserInfoKey]];
    }
    
    if ([[noti name] isEqualToString:UIKeyboardDidChangeFrameNotification]) {
        NSValue *frameValue = [[noti userInfo] objectForKey:UIKeyboardFrameEndUserInfoKey];
        
        if ([frameValue isKindOfClass:[NSValue class]]) {
            
            CGRect keyboardFrame = [frameValue CGRectValue];
            
            NSString *frameString = NSStringFromCGRect(keyboardFrame);
            
            [self.keyBoardRectText setText:frameString];
        }
    }
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
