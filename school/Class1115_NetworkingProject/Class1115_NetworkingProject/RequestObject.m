//
//  RequestObject.m
//  Class1115_NetworkingProject
//
//  Created by chaving on 2016. 11. 15..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "RequestObject.h"
#import "ViewController.h"

@interface RequestObject ()

@property NSMutableDictionary *list;

@end

@implementation RequestObject

+ (instancetype)sharedRequest{
    
    static RequestObject *userRequest = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        userRequest = [[self alloc] init];
        
    });
    
    return userRequest;
}


- (void)requestImageList{

    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURL *serverURL = [NSURL URLWithString:@"http://iosschool.yagom.net:8080/api/list?user_id=200"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:serverURL];
    
    request.HTTPMethod = @"GET";
    
    NSURLSessionTask *userRequestList = [session dataTaskWithURL:serverURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if(data){
            NSLog(@"success!");
            NSDictionary *receiveDic = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSLog(@"receive :%@",data);
            
            self.list = [receiveDic objectForKey:@"list"];
            NSLog(@"list :%@",self.list);
        }
    }];
    
    [userRequestList resume];
}


@end
