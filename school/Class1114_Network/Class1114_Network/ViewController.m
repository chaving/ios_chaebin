//
//  ViewController.m
//  Class1114_Network
//
//  Created by chaving on 2016. 11. 14..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indecator;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSURLRequest
    
    [self.indecator startAnimating];
    
    NSURL *thumbnailURL = [NSURL URLWithString:@"http://image.hankookilbo.com/i.aspx?Guid=178e803b7ded4b10876b2fae5b3190bd&Month=HKSports&size=640"];
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURLSessionTask *task = [session dataTaskWithURL:thumbnailURL
                                    completionHandler:^(NSData * _Nullable data,
                                                        NSURLResponse * _Nullable response,
                                                        NSError * _Nullable error) {
        
        if (data) {
            
            UIImage *image = [UIImage imageWithData:data];
            
            if (image) {
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    sleep(1);
                    
                    [self.indecator stopAnimating];
                    [self.indecator setHidden:YES];
                    [self.indecator hidesWhenStopped];
                    
                    self.imageView.image = image;
                    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
                });
            }
        }
                                        
    }];
    
    [task resume];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
