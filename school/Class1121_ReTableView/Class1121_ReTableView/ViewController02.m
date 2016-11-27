//
//  ViewController02.m
//  Class1121_ReTableView
//
//  Created by chaving on 2016. 11. 21..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController02.h"
#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController02 () <UITableViewDelegate, UITableViewDataSource>

@property UILabel *timeLabel;
@property NSString *timeString;

@end

@implementation ViewController02

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = self.timeString;
}

- (void)setTimeLabelText:(NSString *)title{

    self.timeString = title;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 10;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"customCell" forIndexPath:indexPath];
    
    cell.cellTitle.text = [NSString stringWithFormat:@"%ld", indexPath.row];

    NSURL *thumbnailURL = [NSURL URLWithString:@"http://image.hankookilbo.com/i.aspx?Guid=178e803b7ded4b10876b2fae5b3190bd&Month=HKSports&size=640"];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    id urlImageHandler = ^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (data) {
            
            UIImage *image = [UIImage imageWithData:data];
            
            if (image) {
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    cell.cellImage.image = image;
                    cell.imageView.contentMode = UIViewContentModeScaleAspectFit;
                    
                    [tableView reloadData];
                });
            }
        }
        
    };
    
    NSURLSessionTask *task = [session dataTaskWithURL:thumbnailURL
                                    completionHandler:urlImageHandler];
    
    [task resume];
    
    return cell;
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
