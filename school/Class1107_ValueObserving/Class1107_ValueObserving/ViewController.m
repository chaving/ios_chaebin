//
//  ViewController.m
//  Class1107_ValueObserving
//
//  Created by chaving on 2016. 11. 7..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *countButton;
@property (weak, nonatomic) IBOutlet UILabel *countNum;
@property NSInteger number;

@property (weak, nonatomic) IBOutlet UITextField *lastNameField;
@property (weak, nonatomic) IBOutlet UITextField *firstNameField;

@property NSString *lastName;
@property NSString *firstName;
@property (readonly) NSString *fullName;

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

//    self.countNum.text = @"0";

    [self addObserver:self
           forKeyPath:@"number"
              options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionPrior | NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
              context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{

    NSLog(@"key path : %@\ninfoDic : %@", keyPath, change);
    
    NSInteger changedValue = [change [NSKeyValueChangeNewKey] integerValue];
    
    self.countNum.text = [NSString stringWithFormat:@"%ld", changedValue];
  
}

- (IBAction)onTouchUpInsideCountNumber:(UIButton *)sender {
    
    switch (sender.tag) {
        case 0:
            self.number += 1;
            break;
            
        case 1:
            self.number -= 1;
            break;
            
        case 2:
            self.number = self.number * 2;
            break;
        
        case 3:
            self.number = self.number / 2;
            break;
            
        default:
            break;
    }

}

//- (void)setNumber:(NSInteger)number{
//
//    _number = number;
//    
//    self.countNum.text = [NSString stringWithFormat:@"%ld", _number];
//}



- (IBAction)printNameLog:(id)sender {
    
    NSLog(@"%@ %@", self.lastNameField.text, self.firstNameField.text);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc{
    [self removeObserver:self forKeyPath:@"number"];
}


@end
