//
//  JoinViewController.m
//  Class1024_UIViewController
//
//  Created by chaving on 2016. 10. 24..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "JoinViewController.h"

@interface JoinViewController () <UITextFieldDelegate, UIScrollViewDelegate>

@end

@implementation JoinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
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
    

    
    
    
    
    // Join content -----------------------------------------------------------------------
    
    UIView *joinContentView = [[UIView alloc] init];
    
    joinContentView.frame = CGRectMake(0, self.view.frame.size.height/2-200, scrollLayerView.frame.size.width, 205);
//    joinContentView.backgroundColor = [UIColor redColor];
    
    [scrollLayerView addSubview:joinContentView];
    
    
    CGFloat joinContentWidht = joinContentView.frame.size.width;
    
    
    // Join Label ------------------------------------------------------------------------
    
    UILabel *joinLabelText = [[UILabel alloc] init];
    
    joinLabelText.frame = CGRectMake(0, 0, joinContentWidht, 50);
    joinLabelText.text = @"Join";
    joinLabelText.font = [UIFont boldSystemFontOfSize:30];
    joinLabelText.textColor = [UIColor darkGrayColor];
    
    [joinContentView addSubview:joinLabelText];
    
    
    // id TextField -----------------------------------------------------------------------
    
    UITextField *idTextField = [[UITextField alloc] init];
    
    idTextField.frame = CGRectMake(0, 60, joinContentWidht, 30);
    idTextField.borderStyle = UITextBorderStyleRoundedRect;
    idTextField.placeholder = @"아이디";
    idTextField.font = [UIFont systemFontOfSize:13];
    
    [joinContentView addSubview:idTextField];
    
    
    // Password TextField -----------------------------------------------------------------------
    
    UITextField *passwordTextField = [[UITextField alloc] init];
    
    passwordTextField.frame = CGRectMake(0, 95, joinContentWidht, 30);
    passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    passwordTextField.placeholder = @"비밀번호";
    passwordTextField.font = [UIFont systemFontOfSize:13];
    
    [joinContentView addSubview:passwordTextField];
    
    
    // rePassword TextField -----------------------------------------------------------------------
    
    UITextField *rePasswordTextField = [[UITextField alloc] init];
    
    rePasswordTextField.frame = CGRectMake(0, 130, joinContentWidht, 30);
    rePasswordTextField.borderStyle = UITextBorderStyleRoundedRect;
    rePasswordTextField.placeholder = @"비밀번호 확인";
    rePasswordTextField.font = [UIFont systemFontOfSize:13];
    
    [joinContentView addSubview:rePasswordTextField];
    
    
    
    // BTN Layer -------------------------------------------------------------------------------
    
    UIView *buttonLayerView = [[UIView alloc] init];
    
    buttonLayerView.frame = CGRectMake(0, 165, joinContentWidht, 30);
    
    [joinContentView addSubview:buttonLayerView];
    
    
    
    // Cancel BTN ---------------------------------------------------------------------------------
    
    UIButton *joinButton = [[UIButton alloc] init];
    
    joinButton.frame = CGRectMake(0, 0, buttonLayerView.frame.size.width/2-5, 30);
    joinButton.layer.cornerRadius = 5;
    joinButton.backgroundColor = [UIColor colorWithRed:235.f/255.f green:76.f/255.f blue:55.f/255.f alpha:1.0];
    [joinButton setTitle:@"Cancel" forState:UIControlStateNormal];
    joinButton.titleLabel.font = [UIFont boldSystemFontOfSize:14];
    [joinButton addTarget:self
                   action:@selector(onTouchUpInsideCancelButton)
         forControlEvents:UIControlEventTouchUpInside];
    
    [buttonLayerView addSubview:joinButton];
    
    
    // Join BTN ---------------------------------------------------------------------------------
    
    UIButton *loginButton = [[UIButton alloc] init];
    
    loginButton.frame = CGRectMake(buttonLayerView.frame.size.width/2+5, 0, buttonLayerView.frame.size.width/2-5, 30);
    loginButton.layer.cornerRadius = 5;
    loginButton.backgroundColor = [UIColor colorWithRed:46.f/255.f green:150.f/255.f blue:223.f/255.f alpha:1.0];
    [loginButton setTitle:@"Join Us" forState:UIControlStateNormal];
    loginButton.titleLabel.font = [UIFont boldSystemFontOfSize:14];
    
    [buttonLayerView addSubview:loginButton];
    
    
}

- (void)onTouchUpInsideCancelButton{

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
