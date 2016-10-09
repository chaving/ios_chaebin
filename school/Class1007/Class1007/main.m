//
//  main.m
//  Class1007
//
//  Created by chaving on 2016. 10. 7..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SelectionSort.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        NSArray *data = @[@10,@3,@2,@1,@4,@6,@9,@7,@8,@5];

        
        // 셀렉션 소트 ------------------------------------------
        SelectionSort *sSort = [[SelectionSort alloc]init];
        
        NSArray *sortedList = [sSort selectionSort:data];
        
        NSLog(@"Selection Sort : %@", sortedList);
        NSLog(@"전체 비교 횟수는 %ld 이고 교환 횟수는 %ld 입니다.", sSort.totalCompareCount, sSort.totalSwichCount);
        
        
        
        // 인서트 소트 -------------------------------------
        SelectionSort *iSort = [[SelectionSort alloc]init];
        
        NSArray *insertSortList = [iSort insertSort:data];
        
        NSLog(@"Insert Sort : %@", insertSortList);

        NSLog(@"------------------------------------------------------");
        
        // 버블소트 -----------------------------------------
        SelectionSort *bSort = [[SelectionSort alloc]init];
        
        NSArray *bubbleSortList = [bSort bubbleSort:data];
        
        NSLog(@"Bubble Sort : %@", bubbleSortList);

        NSLog(@"------------------------------------------------------");

        // 머지 소트 ---------------------------------------
        SelectionSort *mergeSort = [[SelectionSort alloc]init];
        
        NSArray *mergeSortedList = [mergeSort mergeSort:data];
        
        NSLog(@"%@", mergeSortedList);
        
        NSLog(@"------------------------------------------------------");
        
        
        // 퀵소트 --------------------------------------------------
        
        SelectionSort *quickSort = [[SelectionSort alloc]init];
        
        NSArray *quickSortList = [quickSort quickSort:data];
        
        NSLog(@"Quick Sort : %@", quickSortList);
        
        NSLog(@"------------------------------------------------------");
        
    }
    return 0;
}
