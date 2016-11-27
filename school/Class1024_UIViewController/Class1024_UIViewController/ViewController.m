//
//  ViewController.m
//  Class1024_UIViewController
//
//  Created by chaving on 2016. 10. 24..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"
#import "JoinViewController.h"

@interface ViewController () <UITextFieldDelegate, UIScrollViewDelegate>

@property UITextField *idTextField;
@property UITextField *passwordTextField;
@property UIView *loginContentView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.navigationController setNavigationBarHidden:YES];
    
    CGFloat scrollbarY = [UIApplication sharedApplication].statusBarFrame.size.height;
    
    CGFloat containerViewWidth = self.view.frame.size.width - 20;
    CGFloat containerViewHeight = self.view.frame.size.height - scrollbarY -10;
    
    
    
    
    // Container View ------------------------------------------------------------------------
    UIView *containerView = [[UIView alloc] init];
    
    containerView.frame = CGRectMake(10, scrollbarY, containerViewWidth, containerViewHeight);
//    containerView.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:containerView];
    
    
    
    // Scroll View ------------------------------------------------------------------------
    UIScrollView *scrollLayerView = [[UIScrollView alloc] init];
    
    scrollLayerView.frame = CGRectMake(50, 0, containerViewWidth - 100, containerViewHeight);
//    scrollLayerView.backgroundColor = [UIColor redColor];
    scrollLayerView.contentSize = CGSizeMake(containerViewWidth - 100, containerViewHeight + 100);
    scrollLayerView.delegate = self;
    scrollLayerView.scrollEnabled = NO;
    
    [containerView addSubview:scrollLayerView];
    
    
    // LoginContent View -----------------------------------------------------------------------
    self.loginContentView = [[UIView alloc] init];
    
    self.loginContentView.frame = CGRectMake(0, self.view.frame.size.height/2 - 170, containerViewWidth - 100, 170);
//    loginContentView.backgroundColor = [UIColor blackColor];
    
    [scrollLayerView addSubview:self.loginContentView];
    
    
    CGFloat loginContentWidth = self.loginContentView.frame.size.width;
//    CGFloat loginContentHeight = loginContentView.frame.size.height;
    
    
    // Login Label -----------------------------------------------------------------------
    
    UILabel *loginLabel = [[UILabel alloc] init];
    
    loginLabel.frame = CGRectMake(0, 0, loginContentWidth, 50);
    loginLabel.text = @"Login";
    loginLabel.textAlignment = NSTextAlignmentCenter;
    loginLabel.font = [UIFont boldSystemFontOfSize:25];
    loginLabel.textColor = [UIColor darkGrayColor];
    
    [self.loginContentView addSubview:loginLabel];
    
    
    
    // ID TextField -----------------------------------------------------------------------
    
    self.idTextField = [[UITextField alloc] init];
    
    self.idTextField.frame = CGRectMake(0, 70, loginContentWidth, 30);
    self.idTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.idTextField.placeholder = @"아이디";
    self.idTextField.delegate = self;
    self.idTextField.font = [UIFont systemFontOfSize:13];
    
    [self.loginContentView addSubview:self.idTextField];
    
    
    // Password TextField -----------------------------------------------------------------------
    
    self.passwordTextField = [[UITextField alloc] init];
    
    self.passwordTextField.frame = CGRectMake(0, 105, loginContentWidth, 30);
    self.passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.passwordTextField.placeholder = @"비밀번호";
    self.passwordTextField.delegate = self;
    self.passwordTextField.font = [UIFont systemFontOfSize:13];
    
    [self.loginContentView addSubview:self.passwordTextField];
    

    // BTN Layer -------------------------------------------------------------------------------
    
    UIView *buttonLayerView = [[UIView alloc] init];
    
    buttonLayerView.frame = CGRectMake(0, 140, loginContentWidth, 30);
    
    [self.loginContentView addSubview:buttonLayerView];
    
    
    
    // Join BTN ---------------------------------------------------------------------------------
    
    UIButton *joinButton = [[UIButton alloc] init];
    
    joinButton.frame = CGRectMake(0, 0, buttonLayerView.frame.size.width/2-5, 30);
    joinButton.layer.cornerRadius = 5;
    joinButton.backgroundColor = [UIColor colorWithRed:235.f/255.f green:76.f/255.f blue:55.f/255.f alpha:1.0];
    [joinButton setTitle:@"Join Us" forState:UIControlStateNormal];
    joinButton.titleLabel.font = [UIFont boldSystemFontOfSize:14];
    [joinButton addTarget:self action:@selector(onTouchUpInsideJoinButton) forControlEvents:UIControlEventTouchUpInside];
    
    [buttonLayerView addSubview:joinButton];
    
    
    // Login BTN ---------------------------------------------------------------------------------
    
    UIButton *loginButton = [[UIButton alloc] init];
    
    loginButton.frame = CGRectMake(buttonLayerView.frame.size.width/2+5, 0, buttonLayerView.frame.size.width/2-5, 30);
    loginButton.layer.cornerRadius = 5;
    loginButton.backgroundColor = [UIColor colorWithRed:46.f/255.f green:150.f/255.f blue:223.f/255.f alpha:1.0];
    [loginButton setTitle:@"Login" forState:UIControlStateNormal];
    loginButton.titleLabel.font = [UIFont boldSystemFontOfSize:14];
    
    [buttonLayerView addSubview:loginButton];
}


- (void)onTouchUpInsideJoinButton{
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    JoinViewController *joinView = [storyBoard instantiateViewControllerWithIdentifier:@"JoinViewController"];
    
    [joinView setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    
    [self.navigationController pushViewController:joinView animated:YES];
}


// 텍스트 필드에서 리턴값 적용시 이벤트
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    BOOL onOff;
    // textField == self.loginField
    if (textField == self.idTextField) {
        
        [textField resignFirstResponder];
        [self.passwordTextField becomeFirstResponder];
        
        onOff = NO;
        
    }else{
        
        [textField resignFirstResponder];
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.4];
        
        CGRect rect = self.loginContentView.frame;
        rect.origin.y = self.view.frame.size.height/2 - 170;
        self.loginContentView.frame = rect;
        
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
        
        CGRect rect = self.loginContentView.frame;
        rect.origin.y = self.view.frame.size.height/2 - 270;
        self.loginContentView.frame = rect;
        
        [UIView commitAnimations];
        
        startEditing = 1;
        
    }
    
}

// 스크롤 제자리로
-(void)dismissKeyboard:(UITapGestureRecognizer *)sender {
    [self.idTextField resignFirstResponder];
    [self.passwordTextField resignFirstResponder];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.4];
    
    CGRect rect = self.loginContentView.frame;
    rect.origin.y = 0;
    self.loginContentView.frame = rect;
    
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
