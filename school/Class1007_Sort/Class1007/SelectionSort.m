//
//  SelectionSort.m
//  Class1007
//
//  Created by chaving on 2016. 10. 7..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "SelectionSort.h"

@implementation SelectionSort

// 셀렉션 소트
- (NSArray *)selectionSort:(NSArray *)list{

    NSMutableArray *unSortedList = [[NSMutableArray alloc] initWithArray:list];
    self.totalCompareCount = 0;
    self.totalSwichCount = 0;
    
    
    // 리스트 시작부터 끝까지 확인
    for (NSInteger i = 0; i < unSortedList.count; i += 1) {
        
        // 최소값 구하기
        NSInteger minValue = [unSortedList[i] integerValue];
        NSInteger minIndex = i;
        
        // i 다음번째의 숫자중 가장 작은 수 찾기
        for (NSInteger j = i; j < unSortedList.count; j += 1) {
            
            NSInteger compareValue = [unSortedList[j] integerValue];
            
            self.totalCompareCount++;
            if (minValue > compareValue) {
                
                minValue = compareValue;
                minIndex = j;
                
            }
            
        }
        // 리스트의 데이터 교환
        // i 번째는 minIndex로, minIndex는 i 번째로
        if (i != minIndex) {
            [unSortedList exchangeObjectAtIndex:i withObjectAtIndex:minIndex];
            self.totalSwichCount++;
        }
        
    }

    return unSortedList;
}

// 인서트 소트
- (NSArray *)insertSort:(NSArray *)list{

    NSMutableArray *unSortedList = [[NSMutableArray alloc]initWithArray:list];
    
    for (NSInteger i = 1; i < unSortedList.count; i += 1) {
        
        NSInteger firstValue =  [unSortedList[i-1] integerValue];
        NSInteger secondValue =  [unSortedList[i] integerValue];
        
        if (firstValue > secondValue) {
            
            for (NSInteger j = 0; j < i; j += 1) {
                
                NSInteger compareValue = [unSortedList[j] integerValue];
                
                if (compareValue > secondValue) {
                    
                    NSString *value = [NSString stringWithFormat:@"%ld", secondValue];
                    
                    [unSortedList removeObjectAtIndex:i];
                    [unSortedList insertObject:value atIndex:j];
                    
                    break;
                    
                }
                
                
            }
            
        }
        
    }
    
    return unSortedList;
}



// 버블 소트
- (NSArray *)bubbleSort:(NSArray *)list{
    
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



// Merge sort ----------------------------------------------------------------------------------------

// 나누기
- (NSArray *)mergeSort:(NSArray *)list{

    if (list.count < 2) {
        return list;
    }
    // 중앙지점
    NSInteger centerIndex = list.count/2;
    
    // Left
    NSRange leftRange = NSMakeRange(0, centerIndex);
    NSArray *leftList = [list subarrayWithRange:leftRange];
    
    // Right
    NSRange rightRange = NSMakeRange(centerIndex, list.count - centerIndex);
    NSArray *rightList = [list subarrayWithRange:rightRange];
    
    return [self mergeOfleftList:[self mergeSort:leftList] andrightList:[self mergeSort:rightList]];

}


// 병합하기

- (NSArray *)mergeOfleftList:(NSArray *)LList andrightList:(NSArray *)RList{

    NSMutableArray *leftUnSorted = [NSMutableArray arrayWithArray:LList];
    NSMutableArray *rightUnSorted = [NSMutableArray arrayWithArray:RList];
    
    NSMutableArray *sortedList = [NSMutableArray arrayWithCapacity:LList.count + RList.count];
    
    while (leftUnSorted.count != 0 || rightUnSorted.count != 0) {
        
        // 오른쪽 리스트에만 값이 있다.
        if (leftUnSorted.count == 0) {
            
            [sortedList addObject:rightUnSorted[0]];
            [rightUnSorted removeObjectAtIndex:0];
        
        // 왼쪽 리스트에만 값이 있다.
        }else if(rightUnSorted.count == 0){
        
            [sortedList addObject:leftUnSorted[0]];
            [leftUnSorted removeObjectAtIndex:0];
        
        // 아직 두 리스트에 값이 있다.
        }else{
        
            NSInteger leftValue = [leftUnSorted[0] integerValue];
            NSInteger rightValue = [rightUnSorted[0] integerValue];
            
            //왼쪽 리스트의 값이 작은경우
            if (leftValue < rightValue) {
                
                [sortedList addObject:leftUnSorted[0]];
                [leftUnSorted removeObjectAtIndex:0];
            
            //오른쪽 리스트의 값이 작은 경우
            }else if (leftValue > rightValue){
            
                [sortedList addObject:rightUnSorted[0]];
                [rightUnSorted removeObjectAtIndex:0];
                
            // 두값이 같은경우
            }else{
            
                [sortedList addObject:leftUnSorted[0]];
                [leftUnSorted removeObjectAtIndex:0];
                [sortedList addObject:rightUnSorted[0]];
                [rightUnSorted removeObjectAtIndex:0];
                
            }
            
        }
        
    }
    
    return sortedList;
}



// Quick sort ----------------------------------------------------------------------------------------

- (NSArray *)quickSort:(NSArray *)list{

    NSMutableArray *unSortedList = [[NSMutableArray alloc]initWithArray:list];
    
    NSMutableArray *lessArray = [[NSMutableArray alloc]init];
    NSMutableArray *greaterArray = [[NSMutableArray alloc]init];
    
    if ([unSortedList count] < 1) {
        return nil;
    }
    
    // Pivot 정하기
    NSNumber *pivotValue = unSortedList[0];
    [unSortedList removeObjectAtIndex:0];
    
    // Divide
    for (NSNumber *num in unSortedList) {
        
        if (num < pivotValue) {
            
            [lessArray addObject:num];
            
        }else{
        
            [greaterArray addObject:num];
            
        }
        
    }
    
    // 병합
    NSMutableArray *sortedArray = [[NSMutableArray alloc]init];
    
    [sortedArray addObjectsFromArray:[self quickSort:lessArray]];
    [sortedArray addObject:pivotValue];
    [sortedArray addObjectsFromArray:[self quickSort:greaterArray]];
    
    
    
    return sortedArray;

}






























@end
