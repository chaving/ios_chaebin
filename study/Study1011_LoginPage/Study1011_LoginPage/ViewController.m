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
@property UIScrollView *scrollLayerView;
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
    
    self.scrollLayerView = [[UIScrollView alloc]init];
    
    self.scrollLayerView.frame = CGRectMake(0, 0, containerWidth, containerHeight);
    
    [self.scrollLayerView setContentSize:CGSizeMake(self.scrollLayerView.frame.size.width, self.scrollLayerView.frame.size.height+100)];
    self.scrollLayerView.delegate = self;
    self.scrollLayerView.scrollEnabled = NO;
    self.scrollLayerView.bounces = NO;
    self.scrollLayerView.showsVerticalScrollIndicator = NO;
    
    
    [containerView addSubview:self.scrollLayerView];
    
    
    
    // Scroll Content Layer ------------------------------------------------------
    
    UIView *contentLayerView = [[UIView alloc]init];
    
    contentLayerView.frame = CGRectMake(0, 0, containerWidth, containerHeight);
//    contentLayer.backgroundColor = [UIColor redColor];
    
    [self.scrollLayerView addSubview:contentLayerView];
    self.contentLayerView = contentLayerView;
    
    
    
    
    // Scroll Content -------------------------------------------------------------
    
    UIView *loginContentLayerView = [[UIView alloc]init];
    
    loginContentLayerView.frame = CGRectMake(40, containerHeight/2-165, containerWidth-80, 290);
//    loginContentLayer.backgroundColor = [UIColor grayColor];
    
    [contentLayerView addSubview:loginContentLayerView];
    
    
    
    // Page Content ------------------------------------------------------------------
    
    // Page Content
    UIView *pageContentView = [[UIView alloc]init];
    
    pageContentView.frame = CGRectMake(0, 0, containerWidth-80, 150);
    
    [loginContentLayerView addSubview:pageContentView];
    
    CGFloat pageContentWidth = pageContentView.frame.size.width;
    
    // Login Page Logo
    UIImageView *loginLogoImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"login_icon"]];
    
    loginLogoImageView.frame = CGRectMake(pageContentWidth/2-50, 0, 100, 100);
    loginLogoImageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [pageContentView addSubview:loginLogoImageView];
    
    // Login Label
    UILabel *loginLabel = [[UILabel alloc]init];
    
    loginLabel.frame = CGRectMake(0, 100, pageContentWidth, 50);
    loginLabel.text = @"Login";
    loginLabel.font = [UIFont boldSystemFontOfSize:30];
    loginLabel.textAlignment = NSTextAlignmentCenter;
    loginLabel.textColor = [UIColor colorWithRed:68.f/255.f green:68.f/255.f blue:68.f/255.f alpha:1.0];
    
    [pageContentView addSubview:loginLabel];
    
    
    
    // Text Field -----------------------------------------------------------------
    
    CGFloat contentWidth = loginContentLayerView.frame.size.width;
    
    // Text Field Layer
    UIView *textFieldLayerView = [[UIView alloc]init];
    
    textFieldLayerView.frame = CGRectMake(0, 170, contentWidth, 75);
    
    [loginContentLayerView addSubview:textFieldLayerView];
    
    
    
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
    
    [textFieldLayerView addSubview:self.loginField];
    
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
    
    [textFieldLayerView addSubview:self.passwordField];
    
    
    // BTN Content ------------------------------------------------------------------------
    
    // Btn layer
    UIView *buttonLayerView = [[UIView alloc]init];
    
    buttonLayerView.frame = CGRectMake(0, 255, contentWidth, 35);
    
    [loginContentLayerView addSubview:buttonLayerView];
    
    // Join Btn
    UIButton *joinButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    joinButton.frame = CGRectMake(0, 0, contentWidth/2-5, 35);
    joinButton.layer.cornerRadius = 5;
    joinButton.backgroundColor = [UIColor colorWithRed:235.f/255.f green:76.f/255.f blue:55.f/255.f alpha:1.0];
    [joinButton setTitle:@"Join Us" forState:UIControlStateNormal];
    joinButton.titleLabel.font = [UIFont boldSystemFontOfSize:14];
    
    [buttonLayerView addSubview:joinButton];
    
    
    // Login btn
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    loginButton.frame = CGRectMake(contentWidth/2+5, 0, contentWidth/2-5, 35);
    loginButton.layer.cornerRadius = 5;
    loginButton.backgroundColor = [UIColor colorWithRed:46.f/255.f green:150.f/255.f blue:223.f/255.f alpha:1.0];
    [loginButton setTitle:@"Login" forState:UIControlStateNormal];
    loginButton.titleLabel.font = [UIFont boldSystemFontOfSize:14];
    
    [buttonLayerView addSubview:loginButton];
    
    
    UITapGestureRecognizer *tapTheOtherView = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard:)];
    
    [self.view addGestureRecognizer:tapTheOtherView];
    
    
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
