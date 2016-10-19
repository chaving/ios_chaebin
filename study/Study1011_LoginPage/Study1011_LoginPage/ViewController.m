//
//  ViewController.m
//  Study1011_LoginPage
//
//  Created by chaving on 2016. 10. 11..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate, UIScrollViewDelegate>

@property UITextField *loginField;
@property UITextField *passwordField;
@property UIScrollView *scrollLayer;
@property UIView *contentLayerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat containerWidth = self.view.frame.size.width - 40;
    CGFloat containerHeight = self.view.frame.size.height - 40;
    
    
    
    // Container View --------------------------------------------------------------
    
    UIView *containerView = [[UIView alloc]init];
    
    containerView.frame = CGRectMake(20, 20, containerWidth, containerHeight);
    
    [self.view addSubview:containerView];
    
    
    
    
    
    // Scroll View -------------------------------------------------------------------
    
    self.scrollLayer = [[UIScrollView alloc]init];
    
    self.scrollLayer.frame = CGRectMake(0, 0, containerWidth, containerHeight);
    
    [self.scrollLayer setContentSize:CGSizeMake(self.scrollLayer.frame.size.width, self.scrollLayer.frame.size.height+100)];
    self.scrollLayer.delegate = self;
    self.scrollLayer.scrollEnabled = NO;
    self.scrollLayer.bounces = NO;
    self.scrollLayer.showsVerticalScrollIndicator = NO;
    
    
    [containerView addSubview:self.scrollLayer];
    
    
    
    // Scroll Content Layer ------------------------------------------------------
    
    UIView *contentLayer = [[UIView alloc]init];
    
    contentLayer.frame = CGRectMake(0, 0, containerWidth, containerHeight);
//    contentLayer.backgroundColor = [UIColor redColor];
    
    [self.scrollLayer addSubview:contentLayer];
    self.contentLayerView = contentLayer;
    
    
    
    
    // Scroll Content -------------------------------------------------------------
    
    UIView *loginContentLayer = [[UIView alloc]init];
    
    loginContentLayer.frame = CGRectMake(40, containerHeight/2-165, containerWidth-80, 290);
//    loginContentLayer.backgroundColor = [UIColor grayColor];
    
    [contentLayer addSubview:loginContentLayer];
    
    
    
    // Page Content ------------------------------------------------------------------
    
    // Page Content
    UIView *pageContent = [[UIView alloc]init];
    
    pageContent.frame = CGRectMake(0, 0, containerWidth-80, 150);
    
    [loginContentLayer addSubview:pageContent];
    
    CGFloat pageContentWidth = pageContent.frame.size.width;
    
    // Login Page Logo
    UIImageView *loginLogo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"login_icon"]];
    
    loginLogo.frame = CGRectMake(pageContentWidth/2-50, 0, 100, 100);
    loginLogo.contentMode = UIViewContentModeScaleAspectFit;
    
    [pageContent addSubview:loginLogo];
    
    // Login Label
    UILabel *loginText = [[UILabel alloc]init];
    
    loginText.frame = CGRectMake(0, 100, pageContentWidth, 50);
    loginText.text = @"Login";
    loginText.font = [UIFont boldSystemFontOfSize:30];
    loginText.textAlignment = NSTextAlignmentCenter;
    loginText.textColor = [UIColor colorWithRed:68.f/255.f green:68.f/255.f blue:68.f/255.f alpha:1.0];
    
    [pageContent addSubview:loginText];
    
    
    
    // Text Field -----------------------------------------------------------------
    
    CGFloat contentWidth = loginContentLayer.frame.size.width;
    
    // Text Field Layer
    UIView *textFieldLayer = [[UIView alloc]init];
    
    textFieldLayer.frame = CGRectMake(0, 170, contentWidth, 75);
    
    [loginContentLayer addSubview:textFieldLayer];
    
    
    
    // Login
    self.loginField = [[UITextField alloc]init];
    
    self.loginField.frame = CGRectMake(0, 0, contentWidth, 35);
    self.loginField.borderStyle = UITextBorderStyleRoundedRect;
    self.loginField.layer.borderWidth = 1.0;
    self.loginField.layer.borderColor = [UIColor colorWithRed:225.f/255.f green:225.f/255.f blue:225.f/255.f alpha:1.0].CGColor;
    self.loginField.layer.cornerRadius = 5;
    self.loginField.font = [UIFont systemFontOfSize:13];
    self.loginField.textColor = [UIColor colorWithRed:68.f/255.f green:68.f/255.f blue:68.f/255.f alpha:1.0];
    self.loginField.delegate=self;
    self.loginField.placeholder = @"아이디";
    self.loginField.clearsOnBeginEditing = YES;
    self.loginField.clearButtonMode = YES;
    
    [textFieldLayer addSubview:self.loginField];
    
    // Password
    self.passwordField = [[UITextField alloc]init];
    
    self.passwordField.frame = CGRectMake(0, 40, contentWidth, 35);
    self.passwordField.borderStyle = UITextBorderStyleRoundedRect;
    self.passwordField.layer.borderWidth = 1.0;
    self.passwordField.layer.borderColor = [UIColor colorWithRed:225.f/255.f green:225.f/255.f blue:225.f/255.f alpha:1.0].CGColor;
    self.passwordField.layer.cornerRadius = 5;
    self.passwordField.font = [UIFont systemFontOfSize:13];
    self.passwordField.textColor = [UIColor colorWithRed:68.f/255.f green:68.f/255.f blue:68.f/255.f alpha:1.0];
    self.passwordField.delegate=self;
    self.passwordField.placeholder = @"비밀번호";
    self.passwordField.secureTextEntry = YES;
    self.passwordField.clearsOnBeginEditing = YES;
    self.passwordField.clearButtonMode = YES;
    
    [textFieldLayer addSubview:self.passwordField];
    
    
    // BTN Content ------------------------------------------------------------------------
    
    // Btn layer
    UIView *btnLayer = [[UIView alloc]init];
    
    btnLayer.frame = CGRectMake(0, 255, contentWidth, 35);
    
    [loginContentLayer addSubview:btnLayer];
    
    // Join Btn
    UIButton *joinBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    joinBtn.frame = CGRectMake(0, 0, contentWidth/2-5, 35);
    joinBtn.layer.cornerRadius = 5;
    joinBtn.backgroundColor = [UIColor colorWithRed:235.f/255.f green:76.f/255.f blue:55.f/255.f alpha:1.0];
    [joinBtn setTitle:@"Join Us" forState:UIControlStateNormal];
    joinBtn.titleLabel.font = [UIFont boldSystemFontOfSize:14];
    
    [btnLayer addSubview:joinBtn];
    
    
    // Login btn
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    loginBtn.frame = CGRectMake(contentWidth/2+5, 0, contentWidth/2-5, 35);
    loginBtn.layer.cornerRadius = 5;
    loginBtn.backgroundColor = [UIColor colorWithRed:46.f/255.f green:150.f/255.f blue:223.f/255.f alpha:1.0];
    [loginBtn setTitle:@"Login" forState:UIControlStateNormal];
    loginBtn.titleLabel.font = [UIFont boldSystemFontOfSize:14];
    
    [btnLayer addSubview:loginBtn];
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard:)];
    
    [self.view addGestureRecognizer:tap];
    
    
}


// 텍스트 필드에서 리턴값 적용시 이벤트
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    BOOL onOff;
    // textField == self.loginField
    if (textField == self.loginField) {
        
        [textField resignFirstResponder];
        [self.passwordField becomeFirstResponder];
        
        onOff = NO;
        
    }else{
        
        [textField resignFirstResponder];
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.4];
        
        CGRect rect = self.contentLayerView.frame;
        rect.origin.y = 0;
        self.contentLayerView.frame = rect;
        
        [UIView commitAnimations];
    
        onOff = YES;
    }
    
    return onOff;
}

// 텍스트 필드 선택시 스크롤업
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    
    NSInteger startEditing = 0;
    
    if (startEditing == 0) {
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.4];
        
        CGRect rect = self.contentLayerView.frame;
        rect.origin.y = -100;
        self.contentLayerView.frame = rect;
        
        [UIView commitAnimations];
        
        startEditing = 1;
    
    }
    
}

// 스크롤 제자리로
-(void)dismissKeyboard:(UITapGestureRecognizer *)sender {
    [self.loginField resignFirstResponder];
    [self.passwordField resignFirstResponder];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.4];
    
    CGRect rect = self.contentLayerView.frame;
    rect.origin.y = 0;
    self.contentLayerView.frame = rect;
    
    [UIView commitAnimations];
}




// 텍스트 필드 글자수 제한
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{

    NSInteger maxChar = 16;
    
    NSString *replacedString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    
    NSInteger len = [replacedString length];
    
    if( len <= maxChar ){
        return YES;
    }
    
    return NO;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
