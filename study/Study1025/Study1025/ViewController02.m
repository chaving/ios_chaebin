//
//  ViewController02.m
//  Study1025
//
//  Created by chaving on 2016. 10. 25..
//  Copyright © 2016년 chaving. All rights reserved.
//
#import "ViewController.h"
#import "ViewController02.h"
#import "WingNaviBar.h"

@interface ViewController02 ()

@end

@implementation ViewController02

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.navigationController setNavigationBarHidden:YES];
    
    WingNaviBar *viewNavi = [[WingNaviBar alloc] initWithType:WingNaviBarTypePreve ViewController:self target:self action:@selector(onTouchUpToNextPage:)];
    
    self.view.backgroundColor = [UIColor grayColor];
}



- (void)onTouchUpToNextPage:(UIButton *)sender{
    
//    ViewController *vc = [[ViewController alloc] init];
    
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
