//
//  CustomCell.m
//  Class1121_ReTableView
//
//  Created by chaving on 2016. 11. 21..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "CustomCell.h"
#import "ViewController02.h"

@interface CustomCell ()

@end

@implementation CustomCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//- (void)setURLImage:(UITableViewCell *)cell{
//    
//    NSURL *thumbnailURL = [NSURL URLWithString:@"http://image.hankookilbo.com/i.aspx?Guid=178e803b7ded4b10876b2fae5b3190bd&Month=HKSports&size=640"];
//    
//    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
//    
//    id urlImageHandler = ^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        
//        if (data) {
//            
//            UIImage *image = [UIImage imageWithData:data];
//            
//            if (image) {
//                
//                dispatch_async(dispatch_get_main_queue(), ^{
//                    
//                    cell.imageView.image = image;
//                    cell.imageView.contentMode = UIViewContentModeScaleAspectFit;
//                });
//            }
//        }
//        
//    };
//    
//    NSURLSessionTask *task = [session dataTaskWithURL:thumbnailURL
//                                    completionHandler:urlImageHandler];
//    
//    [task resume];
//}

@end
