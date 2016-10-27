//
//  ViewControllerWidthXib.m
//  Class1024_UIViewControllerObject
//
//  Created by chaving on 2016. 10. 24..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewControllerWidthXib.h"
#import "ViewController02.h"

@interface ViewControllerWidthXib ()

@end

@implementation ViewControllerWidthXib

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//- (void)loadView{
//    [super loadView];
//    
//    NSLog(@"Load View");
//}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:nil];
    
    NSLog(@"Will Appear");
}

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    NSLog(@"Will Layout SubViews");
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    
    NSLog(@"Did Layout Subviews");
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:nil];

    NSLog(@"Did Disappear");
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:nil];
    
    NSLog(@"Will disappear");
}


- (IBAction)onTouchupInsideNextButton:(id)sender{

    // 객체만들기
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController02 *vc2 = [storyBoard instantiateViewControllerWithIdentifier:@"ViewController02"];
  
    [vc2 setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    
    // Present
//    [self presentViewController:vc2 animated:YES completion:nil];
    
    [self.navigationController pushViewController:vc2 animated:YES];

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
