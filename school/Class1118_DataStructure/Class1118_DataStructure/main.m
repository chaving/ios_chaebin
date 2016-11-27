//
//  main.m
//  Class1118_DataStructure
//
//  Created by chaving on 2016. 11. 18..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
#import "LinkedList.h"
#import "Sort.h"


int main(int argc, const char * argv[]) {
    
//    LinkedList *list = [[LinkedList alloc] init];
//    
//    [list addList:1];
//    [list addList:3];
//    [list addList:5];
//    [list addList:7];
//    
//    [list printCountList];
    
    NSArray *data = @[@10,@3,@2,@1,@4,@6,@9,@7,@8,@5];
    
    // 버블소트 -----------------------------------------
    Sort *bSort = [[Sort alloc]init];
    
    NSArray *bubbleSortList = [bSort bubbleSort:data];
    NSArray *bubbleSortList2 = [bSort bubbleSort2:data];
    
    NSLog(@"Bubble Sort : %@", bubbleSortList);
    NSLog(@"Bubble Sort2 : %@", bubbleSortList2);
    
    NSLog(@"------------------------------------------------------");

    
    
    return 0;
}


