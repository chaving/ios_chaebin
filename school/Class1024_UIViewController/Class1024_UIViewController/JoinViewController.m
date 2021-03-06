//
//  JoinViewController.m
//  Class1024_UIViewController
//
//  Created by chaving on 2016. 10. 24..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "JoinViewController.h"

@interface JoinViewController () <UITextFieldDelegate, UIScrollViewDelegate>

@property UITextField *idTextField;
@property UITextField *passwordTextField;
@property UITextField *rePasswordTextField;
@property UIView *joinContentView;

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
    
    self.joinContentView = [[UIView alloc] init];
    
    self.joinContentView.frame = CGRectMake(0, self.view.frame.size.height/2-200, scrollLayerView.frame.size.width, 205);
//    joinContentView.backgroundColor = [UIColor redColor];
    
    [scrollLayerView addSubview:self.joinContentView];
    
    
    CGFloat joinContentWidht = self.joinContentView.frame.size.width;
    
    
    // Join Label ------------------------------------------------------------------------
    
    UILabel *joinLabelText = [[UILabel alloc] init];
    
    joinLabelText.frame = CGRectMake(0, 0, joinContentWidht, 50);
    joinLabelText.text = @"Join";
    joinLabelText.font = [UIFont boldSystemFontOfSize:30];
    joinLabelText.textColor = [UIColor darkGrayColor];
    
    [self.joinContentView addSubview:joinLabelText];
    
    
    // id TextField -----------------------------------------------------------------------
    
    self.idTextField = [[UITextField alloc] init];
    
    self.idTextField.frame = CGRectMake(0, 60, joinContentWidht, 30);
    self.idTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.idTextField.placeholder = @"아이디";
    self.idTextField.delegate = self;
    self.idTextField.font = [UIFont systemFontOfSize:13];
    
    [self.joinContentView addSubview:self.idTextField];
    
    
    // Password TextField -----------------------------------------------------------------------
    
    self.passwordTextField = [[UITextField alloc] init];
    
    self.passwordTextField.frame = CGRectMake(0, 95, joinContentWidht, 30);
    self.passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.passwordTextField.placeholder = @"비밀번호";
    self.passwordTextField.delegate = self;
    self.passwordTextField.font = [UIFont systemFontOfSize:13];
    
    [self.joinContentView addSubview:self.passwordTextField];
    
    
    // rePassword TextField -----------------------------------------------------------------------
    
    self.rePasswordTextField = [[UITextField alloc] init];
    
    self.rePasswordTextField.frame = CGRectMake(0, 130, joinContentWidht, 30);
    self.rePasswordTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.rePasswordTextField.placeholder = @"비밀번호 확인";
    self.rePasswordTextField.delegate = self;
    self.rePasswordTextField.font = [UIFont systemFontOfSize:13];
    
    [self.joinContentView addSubview:self.rePasswordTextField];
    
    
    
    // BTN Layer -------------------------------------------------------------------------------
    
    UIView *buttonLayerView = [[UIView alloc] init];
    
    buttonLayerView.frame = CGRectMake(0, 165, joinContentWidht, 30);
    
    [self.joinContentView addSubview:buttonLayerView];
    
    
    
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


// 텍스트 필드에서 리턴값 적용시 이벤트
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    BOOL onOff;
    // textField == self.loginField
    if (textField == self.idTextField) {
        
        [textField resignFirstResponder];
        [self.passwordTextField becomeFirstResponder];
        
        onOff = NO;
        
    }else if(textField == self.passwordTextField){
        
        [textField resignFirstResponder];
        [self.rePasswordTextField becomeFirstResponder];
        
        onOff = NO;
        
    }else{
        
        [textField resignFirstResponder];
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.4];
        
        CGRect rect = self.joinContentView.frame;
        rect.origin.y = self.view.frame.size.height/2-200;
        self.joinContentView.frame = rect;
        
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
        
        CGRect rect = self.joinContentView.frame;
        rect.origin.y = self.view.frame.size.height/2 - 250;
        self.joinContentView.frame = rect;
        
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
    
    CGRect rect = self.joinContentView.frame;
    rect.origin.y = 0;
    self.joinContentView.frame = rect;
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
