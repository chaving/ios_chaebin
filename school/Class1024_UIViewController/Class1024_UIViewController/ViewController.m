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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
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
    UIView *loginContentView = [[UIView alloc] init];
    
    loginContentView.frame = CGRectMake(0, self.view.frame.size.height/2 - 170, containerViewWidth - 100, 170);
//    loginContentView.backgroundColor = [UIColor blackColor];
    
    [scrollLayerView addSubview:loginContentView];
    
    
    CGFloat loginContentWidth = loginContentView.frame.size.width;
//    CGFloat loginContentHeight = loginContentView.frame.size.height;
    
    
    // Login Label -----------------------------------------------------------------------
    
    UILabel *loginLabel = [[UILabel alloc] init];
    
    loginLabel.frame = CGRectMake(0, 0, loginContentWidth, 50);
    loginLabel.text = @"Login";
    loginLabel.textAlignment = NSTextAlignmentCenter;
    loginLabel.font = [UIFont boldSystemFontOfSize:25];
    loginLabel.textColor = [UIColor darkGrayColor];
    
    [loginContentView addSubview:loginLabel];
    
    
    
    // ID TextField -----------------------------------------------------------------------
    
    UITextField *idTextField = [[UITextField alloc] init];
    
    idTextField.frame = CGRectMake(0, 70, loginContentWidth, 30);
    idTextField.borderStyle = UITextBorderStyleRoundedRect;
    idTextField.placeholder = @"아이디";
    idTextField.font = [UIFont systemFontOfSize:13];
    
    [loginContentView addSubview:idTextField];
    
    
    // Password TextField -----------------------------------------------------------------------
    
    UITextField *passwordTextField = [[UITextField alloc] init];
    
    passwordTextField.frame = CGRectMake(0, 105, loginContentWidth, 30);
    passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    passwordTextField.placeholder = @"비밀번호";
    passwordTextField.font = [UIFont systemFontOfSize:13];
    
    [loginContentView addSubview:passwordTextField];
    

    // BTN Layer -------------------------------------------------------------------------------
    
    UIView *buttonLayerView = [[UIView alloc] init];
    
    buttonLayerView.frame = CGRectMake(0, 140, loginContentWidth, 30);
    
    [loginContentView addSubview:buttonLayerView];
    
    
    
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


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
