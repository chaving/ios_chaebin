//
//  RequestObject.m
//  Class1116_yagomNetworkProject
//
//  Created by chaving on 2016. 11. 16..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "RequestObject.h"

@implementation RequestObject

// load image
+ (void)requstImageList{

    NSString *userId = [[UserInformation sharedUserInfo] userId];
    
    NSString *destinationURLStirng =
    [NSString stringWithFormat:@"http://iosschool.yagom.net:8080/api/list?user_id=%@", userId];
    
    NSURL *destinationURL = [NSURL URLWithString:destinationURLStirng];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    
    request.HTTPMethod = @"GET";
    request.URL = destinationURL;
    
    //dataTask Handler
    id taskHandler = ^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
//        NSLog(@"request image list response : %@, error : %@", response, error);
        
        NSError *jsonParsingError;
        NSDictionary *jsonResult = [NSJSONSerialization JSONObjectWithData:data
                                                                   options:NSJSONReadingMutableLeaves
                                                                     error:&jsonParsingError/*이중 포인터*/];
        
//        NSLog(@"json parsing error : %@ / json result : %@", jsonParsingError, jsonResult);
        
        NSArray *imageInfoList = [jsonResult objectForKey:@"list"];
        
        [[UserInformation sharedUserInfo] setImageInfoList:imageInfoList];
        
        
        NSString *notificationName = nil;
        
        if (imageInfoList == nil) {
            
            notificationName = ImageListupdateFailNotification;
            
        } else {
        
            notificationName = ImageListupdatedNotification;
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            [[NSNotificationCenter defaultCenter] postNotificationName:notificationName
                                                                object:nil];
        });
    };
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request
                                                completionHandler:taskHandler];
    
    [dataTask resume];
}

// Upload image
+ (void)requestUplodImage:(UIImage *)image title:(NSString *)title{

    NSString *userId = [[UserInformation sharedUserInfo] userId];
    
    NSString *destinationURLStirng = @"http://iosschool.yagom.net:8080/api/upload";
    
    NSURL *destinationURL = [NSURL URLWithString:destinationURLStirng];
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    request.HTTPMethod = @"POST";
    request.URL = destinationURL;
    
    
    // MultyPart - Form Setting
    NSString *boundaryString = @"----------BOUNDARY_STRING";
    NSString *contentDescription = [NSString stringWithFormat:@"multipart/form-data; boundary=%@", boundaryString];
    
    [request addValue:contentDescription forHTTPHeaderField:@"Content-Type"];
    
    NSData *boundaryData = [[NSString stringWithFormat:@"--%@\r\n", boundaryString] dataUsingEncoding:NSUTF8StringEncoding];
    
    NSMutableData *bodyData = [[NSMutableData alloc] init];
    
    
    // MultyPart - From Start
    [bodyData appendData:boundaryData]; //-------------------------------------------------------------------------
    
    // User - Id 파라메터 정보 추가
    NSData *nameData = [@"Content-Disposition: form-data; name=\"user_id\"\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:nameData];
    
    NSData *valueData = [[NSString stringWithFormat:@"%@\r\n", userId] dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:valueData];
    
    
    [bodyData appendData:boundaryData]; //-------------------------------------------------------------------------
    
    // title(이미지 제목) 추가
    nameData = [@"Content-Disposition: form-data; name=\"title\"\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:nameData];
    
    valueData = [[NSString stringWithFormat:@"%@\r\n", title] dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:valueData];
    
    
    [bodyData appendData:boundaryData]; //-------------------------------------------------------------------------
    
    // image 추가
    nameData = [@"Content-Disposition: form-data; name=\"image_data\"; filename=\"image.jpeg\"\r\n" dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:nameData];
    
    // 일반 텍스트 데이터 일때는 생략 가능함
    NSData *imageContentTypeData = [@"Content-Type: image/jpeg\r\n\r\n" dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:imageContentTypeData];
    
    NSData *imageData = UIImageJPEGRepresentation(image, 0.1);
    [bodyData appendData:imageData];
    
    
    NSData *finishBoudarydata = [[NSString stringWithFormat:@"\r\n--%@--\r\n", boundaryString] dataUsingEncoding:NSUTF8StringEncoding];
    [bodyData appendData:finishBoudarydata]; //-------------------------------------------------------------------------
    
    [request setHTTPBody:bodyData];
    // MultyPart - From END

    
    id uploadHandler = ^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error != nil) {
            NSLog(@"Error occured : %@", error);
            return;
        }
        
        if (data == nil) {
            NSLog(@"Data dosen't exist");
            return;
        }
        
        NSLog(@"%@", response);
        
        NSDictionary *jsonResult = [NSJSONSerialization JSONObjectWithData:data
                                                                   options:NSJSONReadingMutableLeaves
                                                                     error:nil];
        
        NSLog(@"%@", jsonResult);
        
        if ([[jsonResult objectForKey:@"result"] isEqualToString:@"success"]) {
            
            [self requstImageList];
        }
    };
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionUploadTask *uploadTask = [session uploadTaskWithRequest:request
                                                               fromData:nil
                                                      completionHandler:uploadHandler];
    
    [uploadTask resume];
}

@end
































