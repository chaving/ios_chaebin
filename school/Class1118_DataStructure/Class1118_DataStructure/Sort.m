//
//  Sort.m
//  Class1118_DataStructure
//
//  Created by chaving on 2016. 11. 25..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Sort.h"

@implementation Sort

- (NSArray *)bubbleSort:(NSArray *)list{
    
    NSMutableArray *unSortList = [[NSMutableArray alloc] initWithArray:list];
    
    for (NSInteger i = 0; i < unSortList.count; i += 1) {
        
        for (NSInteger j = 0; j < unSortList.count - 1; j += 1) {
            
            NSInteger firstValue = [unSortList[i] integerValue];
            NSInteger compareValue = [unSortList[j+1] integerValue];
            
            if (firstValue > compareValue) {
                
                [unSortList exchangeObjectAtIndex:j withObjectAtIndex:j+1];
                
            }
        }
    }
    
    return unSortList;
}

- (NSArray *)bubbleSort2:(NSArray *)list{
    
    NSMutableArray *unSortedList = [[NSMutableArray alloc] initWithArray:list];
    
    for (NSInteger i = 0; i < unSortedList.count; i+=1) {
        
        for (NSInteger j = 0; j < unSortedList.count-1; j += 1) {
            
            NSInteger firstValue = [unSortedList[j] integerValue];
            NSInteger compareValue = [unSortedList[j+1] integerValue];
            
            if (firstValue > compareValue) {
                
                [unSortedList exchangeObjectAtIndex:j withObjectAtIndex:j+1];
                
            }
            
        }
        
    }
    
    return unSortedList;
}



- (NSArray *)quickSort:(NSArray *)list{

    NSMutableArray *unSortedList = [[NSMutableArray alloc] initWithArray:list];
    
    // pivot 정하기
    NSNumber *pivotValue = unSortedList[0];
    NSNumber *low = unSortedList[1];
    NSNumber *high = unSortedList[unSortedList.count];
    
    
    
    
//    [unSortedList removeObjectAtIndex:0];
    
    return nil;
}

- (void)quickSortList:(NSInteger)start end:(NSInteger)end{
    
}


- (NSInteger)prtition:(NSInteger)start end:(NSInteger)end{

//    NSMutableArray *unSortedList = [[NSMutableArray alloc] initWithArray:list];
//    
//    // pivot 정하기
//    NSNumber *pivotValue = unSortedList[0];
//    [unSortedList removeObjectAtIndex:0];
    
    return nil;
}

















@end
