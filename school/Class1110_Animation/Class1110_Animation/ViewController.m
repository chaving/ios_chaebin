//
//  ViewController.m
//  Class1110_Animation
//
//  Created by chaving on 2016. 11. 10..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate, UITextFieldDelegate>

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
    
    joinButton.frame = CGRectMake(0, -500, buttonLayerView.frame.size.width/2-5, 30);
    joinButton.layer.cornerRadius = 5;
    joinButton.backgroundColor = [UIColor colorWithRed:235.f/255.f green:76.f/255.f blue:55.f/255.f alpha:1.0];
    [joinButton setTitle:@"Join Us" forState:UIControlStateNormal];
    joinButton.titleLabel.font = [UIFont boldSystemFontOfSize:14];
    
//    [joinButton addTarget:self
//                   action:@selector(onTouchUpInsideJoinButton)
//         forControlEvents:UIControlEventTouchUpInside];
    
    [buttonLayerView addSubview:joinButton];
    
    
    // Login BTN ---------------------------------------------------------------------------------
    
    UIButton *loginButton = [[UIButton alloc] init];
    
    loginButton.frame = CGRectMake(buttonLayerView.frame.size.width/2+5, -500, buttonLayerView.frame.size.width/2-5, 30);
    loginButton.layer.cornerRadius = 5;
    loginButton.backgroundColor = [UIColor colorWithRed:46.f/255.f green:150.f/255.f blue:223.f/255.f alpha:1.0];
    [loginButton setTitle:@"Login" forState:UIControlStateNormal];
    loginButton.titleLabel.font = [UIFont boldSystemFontOfSize:14];
    
//    [loginButton addTarget:self
//                    action:@selector(onTouchUpInsideLoginButton)
//          forControlEvents:UIControlEventTouchUpInside];
    
    [buttonLayerView addSubview:loginButton];
    
    
    
    // animation ----------------------------------------------
    
    [UIView animateWithDuration:1
                          delay:1
         usingSpringWithDamping:0.5
          initialSpringVelocity:10
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         loginButton.frame = CGRectMake(buttonLayerView.frame.size.width/2+5, 0, buttonLayerView.frame.size.width/2-5, 30);
                     }
                     completion:nil];
    
    
//    [UIView animateWithDuration:1 delay:0.5 options:UIViewAnimationOptionTransitionCurlUp animations:^{
//        
//        loginButton.frame = CGRectMake(buttonLayerView.frame.size.width/2+5, 0, buttonLayerView.frame.size.width/2-5, 30);
//        
//    } completion:^(BOOL finished) {
//        
//        if (finished) {
//            
//        }
//    }];
    
    [UIView animateWithDuration:1 delay:1 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        joinButton.frame = CGRectMake(0, 0, buttonLayerView.frame.size.width/2-5, 30);
        
    } completion:^(BOOL finished) {
        
        if (finished) {
            
        }
    }];
    
    // -------------------------------------------------------------

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
