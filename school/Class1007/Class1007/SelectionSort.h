//
//  SelectionSort.h
//  Class1007
//
//  Created by chaving on 2016. 10. 7..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SelectionSort : NSObject

@property NSInteger totalCompareCount;
@property NSInteger totalSwichCount;


- (NSArray *)selectionSort:(NSArray *)list;

- (NSArray *)insertSort:(NSArray *)list;

- (NSArray *)bubbleSort:(NSArray *)list;

- (NSArray *)mergeSort:(NSArray *)list;
- (NSArray *)mergeOfleftList:(NSArray *)LList andrightList:(NSArray *)RList;


- (NSArray *)quickSort:(NSArray *)list;

@end
