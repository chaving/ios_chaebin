//
//  DataCenter.m
//  Class1103_Data
//
//  Created by chaving on 2016. 11. 3..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "DataCenter.h"

@interface DataCenter ()

@end


@implementation DataCenter

+ (instancetype)sharedData{
    
    static DataCenter *userDataCenter = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        userDataCenter = [[self alloc] init];
        
    });
    
    return userDataCenter;
    
}


- (void)listSave:(NSArray *)list{

    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    
    NSString *docuPath = [docPath stringByAppendingPathComponent:@"TableCellData"];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if (![fileManager fileExistsAtPath:docuPath]) {
        
        NSString *bundlePath = [NSBundle mainBundle] pah
    }
    
    
}

@end
