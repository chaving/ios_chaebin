//
//  MainViewController.m
//  Class1102_LoginProject
//
//  Created by chaving on 2016. 11. 2..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "MainViewController.h"
#import "ViewController.h"
#import "MainViewController.h"

@interface MainViewController () <UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIButton *logoutButton;
@property (weak, nonatomic) IBOutlet UILabel *userIDLabel;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.navigationController setNavigationBarHidden:NO];
    
    DataCenter *userDataCenter = [DataCenter sharedData];
    

    
    self.userIDLabel.text = @"userID : &@";
}

- (IBAction)onTouchLogoutButton:(id)sender {
    
    DataCenter *userDataCenter = [DataCenter sharedData];
    
    [userDataCenter setAutoLogin:NO];
    
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    UIViewController *secondRoot = [storyBoard instantiateInitialViewController];
    
    UIApplication *application = [UIApplication sharedApplication];
    
    UIWindow *window = [application.delegate window];
    window.rootViewController = secondRoot;

    [window makeKeyWindow];
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
