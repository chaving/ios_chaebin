//
//  ViewController02.m
//  Class1024_UIViewControllerObject
//
//  Created by chaving on 2016. 10. 24..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController02.h"

@interface ViewController02 ()

@end

@implementation ViewController02

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:nil];
    
    NSLog(@"Will Appear2");
}

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    NSLog(@"Will Layout SubViews2");
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    
    NSLog(@"Did Layout Subviews2");
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:nil];
    
    NSLog(@"Did Disappear2");
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:nil];
    
    NSLog(@"Will disappear2");
}




- (IBAction)onTouchUpInsideDismissButton:(id)sender{

//    [self dismissViewControllerAnimated:YES completion:nil];
    
    [self.navigationController popViewControllerAnimated:YES];

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
