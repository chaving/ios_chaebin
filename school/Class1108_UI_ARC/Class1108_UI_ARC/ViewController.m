//
//  ViewController.m
//  Class1108_UI_ARC
//
//  Created by chaving on 2016. 11. 8..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *strongLabel;
@property (weak, nonatomic) IBOutlet UILabel *weakLabel;

@property UILabel *testLabel;
@property UILabel *testLabel2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.testLabel = [[UILabel alloc] init];
    
    self.testLabel.frame = CGRectMake(0, 200, self.view.frame.size.width, 40);
    self.testLabel.text = @"text 왜 copy 인가?";
    self.testLabel.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:self.testLabel];
    
    
    
    self.testLabel2 = [[UILabel alloc] init];
    
    self.testLabel2.frame = CGRectMake(0, 300, self.view.frame.size.width, 40);
    self.testLabel2.text = self.testLabel.text;
    self.testLabel.text = @"카피 맞아?";
    self.testLabel2.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:self.testLabel2];
    
    
    NSLog(@"%@ / %@", self.testLabel.text,self.testLabel2.text);
}

- (IBAction)removeFromSuperView:(id)sender {
    
    [self.strongLabel removeFromSuperview];
    [self.weakLabel removeFromSuperview];
    
}

- (IBAction)reAddView:(id)sender {
    
    [self.view addSubview:self.strongLabel];
    [self.view addSubview:self.weakLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
