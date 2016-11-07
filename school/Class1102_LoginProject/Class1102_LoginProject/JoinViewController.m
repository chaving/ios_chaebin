//
//  JoinViewController.m
//  Class1024_UIViewController
//
//  Created by chaving on 2016. 10. 24..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "JoinViewController.h"
#import "MainViewController.h"

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
    
    UIButton *closeButton = [[UIButton alloc] init];
    
    closeButton.frame = CGRectMake(0, 0, buttonLayerView.frame.size.width/2-5, 30);
    closeButton.layer.cornerRadius = 5;
    closeButton.backgroundColor = [UIColor colorWithRed:235.f/255.f green:76.f/255.f blue:55.f/255.f alpha:1.0];
    [closeButton setTitle:@"Cancel" forState:UIControlStateNormal];
    closeButton.titleLabel.font = [UIFont boldSystemFontOfSize:14];
    
    [closeButton addTarget:self
                   action:@selector(onTouchUpInsideCancelButton)
         forControlEvents:UIControlEventTouchUpInside];
    
    [buttonLayerView addSubview:closeButton];
    
    
    // Join BTN ---------------------------------------------------------------------------------
    
    UIButton *joinButton = [[UIButton alloc] init];
    
    joinButton.frame = CGRectMake(buttonLayerView.frame.size.width/2+5, 0, buttonLayerView.frame.size.width/2-5, 30);
    joinButton.layer.cornerRadius = 5;
    joinButton.backgroundColor = [UIColor colorWithRed:46.f/255.f green:150.f/255.f blue:223.f/255.f alpha:1.0];
    [joinButton setTitle:@"Join Us" forState:UIControlStateNormal];
    joinButton.titleLabel.font = [UIFont boldSystemFontOfSize:14];
    
    [joinButton addTarget:self
                   action:@selector(onTouchUpInsideLoginButton)
         forControlEvents:UIControlEventTouchUpInside];
    
    [buttonLayerView addSubview:joinButton];
    
    
}

- (void)onTouchUpInsideCancelButton{
    
    [self.navigationController popViewControllerAnimated:YES];
}

// Join Us 버튼 클릭 액션
- (void)onTouchUpInsideLoginButton{
    
    DataCenter *userDataCenter = [DataCenter sharedData];
    
    NSString *confirmID = self.idTextField.text;
    NSString *bagicPassward = self.passwordTextField.text;
    NSString *confirmPassward = self.rePasswordTextField.text;
    
    
    // 아이디 필드 값이 비었을때
    if ([confirmID isEqualToString:@""]){
        
        UIAlertController *alertController =
        [UIAlertController alertControllerWithTitle:@"오류"
                                            message:[NSString stringWithFormat:@"아이디를 입력하세요."]
                                     preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"확인"
                                                               style:UIAlertActionStyleCancel
                                                             handler:^(UIAlertAction * _Nonnull action){}];
        
        [alertController addAction:cancelAction];
        
        [self presentViewController:alertController animated:YES completion:nil];
        
    }
    
    // 비밀번호 두개 필드가 비었을때
    if([bagicPassward isEqualToString:@""] || [confirmPassward isEqualToString:@""]){
    
        UIAlertController *alertController =
        [UIAlertController alertControllerWithTitle:@"오류"
                                            message:[NSString stringWithFormat:@"비밀번호를 입력하세요"]
                                     preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"확인"
                                                               style:UIAlertActionStyleCancel
                                                             handler:^(UIAlertAction * _Nonnull action){}];
        
        [alertController addAction:cancelAction];
        
        [self presentViewController:alertController animated:YES completion:nil];
    
    }
    
    // 비밀번호가 같을때 메인으로 넘겨주는 블록 함수
    void (^actionHandler)(UIAlertAction * _Nonnull action) = ^(UIAlertAction * _Nonnull action){
        
        UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        MainViewController *mainView = [storyBoard instantiateViewControllerWithIdentifier:@"MainViewController"];
        
        [mainView setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
        
        [self presentViewController:mainView animated:YES completion:^{}];
    };
    
    // 비밀번호가 같은지 확인
    if ([bagicPassward isEqualToString:confirmPassward]) {
        
        // 아이디 중복 검사를 하고
        if ([userDataCenter joinUserID:confirmID userPW:confirmPassward] == YES) {
            
            [userDataCenter setAutoLogin:YES];
            
            UIAlertController *alertController =
            [UIAlertController alertControllerWithTitle:@"확인"
                                                message:[NSString stringWithFormat:@"가입이 완료되었습니다."]
                                         preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"확인"
                                                                   style:UIAlertActionStyleCancel
                                                                 handler:actionHandler];
            
            [alertController addAction:cancelAction];
            
            [self presentViewController:alertController animated:YES completion:nil];
            
        }else{
        
            UIAlertController *alertController =
            [UIAlertController alertControllerWithTitle:@"오류"
                                                message:[NSString stringWithFormat:@"중복된 아이디 입니다."]
                                         preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"확인"
                                                                   style:UIAlertActionStyleCancel
                                                                 handler:nil];
            
            [alertController addAction:cancelAction];
            
            [self presentViewController:alertController animated:YES completion:nil];
        }
        
    }else{
    
        UIAlertController *alertController =
        [UIAlertController alertControllerWithTitle:@"오류"
                                            message:[NSString stringWithFormat:@"비밀번호가 같지 않습니다."]
                                     preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"확인"
                                                               style:UIAlertActionStyleCancel
                                                             handler:^(UIAlertAction * _Nonnull action){}];
        
        [alertController addAction:cancelAction];
        
        [self presentViewController:alertController animated:YES completion:nil];
    
    }
    
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
