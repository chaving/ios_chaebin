////
////  keyboard.m
////  Class1031_Notification_Keyboard
////
////  Created by chaving on 2016. 12. 11..
////  Copyright © 2016년 chaving. All rights reserved.
////
//
//#import "keyboard.h"
//
//@interface keyboard () <UITextFieldDelegate>
//@property (weak, nonatomic) IBOutlet UITextField *idTextField;
//@property (weak, nonatomic) IBOutlet UITextField *pwTextField;
//
//@end
//
//@implementation keyboard
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    
//    self.idTextField.delegate = self;
//    self.pwTextField.delegate = self;
//    
//    [self performSelector:@selector(registerKeyboardEvent)];
//}
//#pragma mark - keyboard control
//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    //  bring touch actions.
//    UITouch *touch = [[event allTouches] anyObject];
//    //  if idText is first resoponder and the view where touched is not same.
//    if ([self.idTextField isFirstResponder] && [touch view] != self.idTextField) {
//        //  exit the idTextField.
//        [self.idTextField endEditing:YES];
//        
//    }else if ([self.pwTextField isFirstResponder] && [touch view] != self.pwTextField) {
//        [self.pwTextField endEditing:YES];
//    }
//}
//- (void)keyboardWillShow:(NSNotification *)notification {
//    // variable to contain View information and Keyboard information
//    CGRect rectView;
//    CGRect rectKeyboard;
//    
//    // setting animations
//    [UIView beginAnimations:nil context:NULL];
//    [UIView setAnimationDuration:0.3];
//    
//    //  set rectView frame
//    rectView = self.view.frame;
//    //  set rectKeyboard from noitification
//    [[notification.userInfo valueForKey:UIKeyboardFrameEndUserInfoKey]getValue:&rectKeyboard];
//    
//    //  adjust rectView y when the keyboard appear
//    if ( [self.idTextField isFirstResponder] && self.idTextField.frame.origin.y+self.idTextField.frame.size.height >= self.view.frame.size.height-rectKeyboard.size.height) {
//        rectView.origin.y = 0;
//        rectView.origin.y -= self.pwTextField.frame.origin.y-(self.view.frame.size.height-rectKeyboard.size.height) + self.pwTextField.frame.size.height;
//        
//    }else if ( [self.pwTextField isFirstResponder] && self.pwTextField.frame.origin.y+self.pwTextField.frame.size.height >= self.view.frame.size.height-rectKeyboard.size.height) {
//        rectView.origin.y = 0;
////        rectView.origin.y -= self.loginButton.frame.origin.y -(self.view.frame.size.height-rectKeyboard.size.height) + self.loginButton.frame.size.height;
//        
//    }
//    //  apply rectView y
//    [self.view setFrame:rectView];
//    
//    //  show changed View with animation
//    [UIView commitAnimations];
//}
//- (void)keyboardWillHide:(NSNotification *)notification {
//    //  variable to contain View information and Keyboard information
//    CGRect rectView;
//    CGRect rectKeyboard;
//    
//    //  setting animation
//    [UIView beginAnimations:nil context:NULL];
//    [UIView setAnimationCurve:0.3];
//    
//    //  set rectView frame
//    rectView = self.view.frame;
//    //  set rectKeyboard frame with notification
//    [[notification.userInfo valueForKey:UIKeyboardFrameEndUserInfoKey]getValue:&rectKeyboard];
//    
//    //  adjust rectView y -> 0
//    rectView.origin.y = 0;
//    
//    //  apply rectView y
//    [self.view setFrame:rectView];
//    
//    //  show changed View with animation
//    [UIView commitAnimations];
//}
////  method that register keyboardWillShow & keyboardWillHide to iOS
//- (void)registerKeyboardEvent {
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
//}
////  method when user touch return button in keyboard
//-(BOOL)textFieldShouldReturn:(UITextField *)textField {
//    //  if user touch return with idTextField editing
//    if (textField == self.idTextField) {
//        [self.pwTextField becomeFirstResponder];
//    }
//    //  if user touch return with pwTextField editing
//    else if (textField == self.pwTextField) {
//        [self.pwTextField endEditing:YES];
//    }
//    return YES;
//}
//#pragma mark - segue control with alert
////  segue를 이용한 로그인 컨트롤
//- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
////    //  회원가입 버튼을 누를경우 회원가입 화면으로 넘어간다.
////    if ([identifier isEqualToString:@"loginToSignup"]) {
////        return YES;
////    }
////    // 사용자가 아이디를 입력하지 않았을경우 segue가 진행되지 않게하며 아이디를 입력하라는 경고창을 띄운다.
////    else if ([identifier isEqualToString:@"loginToMain"] && [self.idTextField.text isEqualToString:@""]) {
////        UIAlertController *alertContoller = [UIAlertController alertControllerWithTitle:@"로그인 오류"
////                                                                                message:@"아이디를 입력해주세요"
////                                                                         preferredStyle:UIAlertControllerStyleAlert];
////        UIAlertAction *okButton = [UIAlertAction actionWithTitle:@"확인"
////                                                           style:UIAlertActionStyleCancel handler:nil];
////        [alertContoller addAction:okButton];
////        [self presentViewController:alertContoller animated:YES completion:nil];
////        return NO;
////    }
////    //  사용자가 비밀번호를 입력하지 않았을경우 segue가 진행되지 않게하며 비밀번호를 입력하라는 경고창을 띄운다.
////    else if ([identifier isEqualToString:@"loginToMain"] && [self.pwTextField.text isEqualToString:@""] && ![self.idTextField.text isEqualToString:@""]) {
////        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"로그인 오류"
////                                                                                 message:@"비밀번호를 입력해주세요"
////                                                                          preferredStyle:UIAlertControllerStyleAlert];
////        UIAlertAction *okButton = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:nil];
////        [alertController addAction:okButton];
////        [self presentViewController:alertController animated:YES completion:nil];
////        return NO;
////        
////    }
////    //  Datacenter에 저장된 ID와 현재 idTextField의 문자가 일치하지 않으면 아이디가 없다는 경고창을 띄워준다.
//////    else if(![[[Datacenter manage]loadUserID] isEqualToString:self.idTextField.text]) {
////        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"로그인 오류"
////                                                                                 message:@"아이디가 없습니다."
////                                                                          preferredStyle:UIAlertControllerStyleAlert];
////        UIAlertAction *okButton = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
////            //  커서를 아이디입력창으로 옮겨준다.
////            [self.pwTextField endEditing:YES];
////            [self.idTextField becomeFirstResponder];
////        }];
////        [alertController addAction:okButton];
////        [self presentViewController:alertController animated:YES completion:nil];
////        return NO;
////    }
////    //  Datacenter에 저장된 PW와 현재 pwTextField의 문자가 일치하지 않으면 비밀번호가 불일치 한다는 경고창을 띄워준다.
//////    else if (![[[Datacenter manage] loadUserPW] isEqualToString:self.pwTextField.text]) {
////        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"로그인 오류"
////                                                                                 message:@"비밀번호 불일치"
////                                                                          preferredStyle:UIAlertControllerStyleAlert];
////        UIAlertAction *okButton = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:nil];
////        [alertController addAction:okButton];
////        [self presentViewController:alertController animated:YES completion:nil];
////        return NO;
////    }
////    //  Datacenter에 저장된 ID, PW가 사용자가 입력한 정보랑 일치한다면 메인화면으로 넘어간다.
////    else if ([[[Datacenter manage]loadUserID] isEqualToString:self.idTextField.text] && [[[Datacenter manage]loadUserPW] isEqualToString:self.pwTextField.text]) {
////        return YES;
////    }
////    else {
////        return NO;
////    }
//}
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//
//@end
