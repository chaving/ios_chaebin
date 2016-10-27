//
//  ViewController.m
//  Class1027_UIAlertController
//
//  Created by chaving on 2016. 10. 27..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGFloat containerWidth = self.view.frame.size.width - 40;
    CGFloat contianerHeight = self.view.frame.size.height - 40;
    
    
    
    UIView *containerView = [[UIView alloc] init];
    
    containerView.frame = CGRectMake(20, 20, containerWidth, contianerHeight);
    
    [self.view addSubview:containerView];
    
    
    
    UIButton *alertButton = [[UIButton alloc] init];
    
    alertButton.frame = CGRectMake(0, 0, containerWidth, 35);
    [alertButton setTitle:@"Alert Button" forState:UIControlStateNormal];
    [alertButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    alertButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [alertButton addTarget:self action:@selector(onTouchAlert:) forControlEvents:UIControlEventTouchUpInside];
    
    [containerView addSubview:alertButton];
    
    
    
    UIButton *actionSheetButton = [[UIButton alloc] init];
    
    actionSheetButton.frame = CGRectMake(0, 35, containerWidth, 35);
    [actionSheetButton setTitle:@"ActionSheet Button" forState:UIControlStateNormal];
    [actionSheetButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    actionSheetButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [actionSheetButton addTarget:self action:@selector(onTouchActionSheet:) forControlEvents:UIControlEventTouchUpInside];
    
    [containerView addSubview:actionSheetButton];
    
}


- (void)onTouchAlert:(UIButton *)sender{

    [self showAlertController:UIAlertControllerStyleAlert];
}


- (void)onTouchActionSheet:(UIButton *)sender{

    [self showAlertController:UIAlertControllerStyleActionSheet];
}

- (void)showAlertController:(UIAlertControllerStyle)style{

    switch (style) {
        case UIAlertControllerStyleAlert:
        case UIAlertControllerStyleActionSheet:
            
            NSLog(@"제대로 들어왔다!");
            break;
            
        default:
            NSLog(@"스타일이 잘못 들어왔다!");
            return; // 이 케이스는 잘못 되었으니 메소드를 중지 하겠다.
            break;
    }
    
    /*
     switch문을 사용한 이유
     기본적으로 UIAlertControllerStyle 의
     UIAlertControllerStyleAlert / UIAlertControllerStyleActionSheet 로 가보면
     구조체 형식으로 정수값으로 표현되어 있다. 
     그렇기 때문에 style 부분에 정수를 넣어도 오류는 나지 않는다.
     
    */
    
    
    void (^handlerBlock)(UIAlertAction *) = ^(UIAlertAction * _Nonnull action){
    
        switch ([action style]) {
            case UIAlertActionStyleDefault:
                
                if ([[action title] isEqualToString:@"확인"]) {
                    NSLog(@"사용자가 확인 했습니다.");
                }
                
                break;
                
            case UIAlertActionStyleCancel:
                NSLog(@"사용자가 취소 했습니다.");
                break;
            
            case UIAlertActionStyleDestructive:
                NSLog(@"사용자가 파괴 했습니다.");
                break;
                
            default:
                break;
        }
    };
    
    
    UIAlertController *alertController =
    [UIAlertController alertControllerWithTitle:@"빙고"
                                        message:[NSString stringWithFormat:@"Action Sheet"]
                                 preferredStyle:style];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"취소"
                                                           style:UIAlertActionStyleCancel
                                                         handler:handlerBlock];
    
    [alertController addAction:cancelAction];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"확인"
                                                           style:UIAlertActionStyleDefault
                                                         handler:handlerBlock];
    
    [alertController addAction:okAction];
    
    UIAlertAction *destructiveAction = [UIAlertAction actionWithTitle:@"파괴"
                                                       style:UIAlertActionStyleDestructive
                                                     handler:handlerBlock];
    
    [alertController addAction:destructiveAction];
    
    [self presentViewController:alertController animated:YES completion:nil];

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
