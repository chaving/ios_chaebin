//
//  main.m
//  Class0928
//
//  Created by chaving on 2016. 9. 28..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
#import "DoubleLinkedList.h"


int main(int argc, const char * argv[]) {
    
    DoubleLinkedList *list01 = [[DoubleLinkedList alloc] init];
    
    [list01 addLastValue:1];
    [list01 addLastValue:2];
    [list01 addLastValue:3];
    [list01 addLastValue:4];
    [list01 addLastValue:5];
    [list01 addFirstValue:8];
    [list01 addLastValue:6];
    
//    [list01 addLastIndexNode:5 newValue:3];
    
    [list01 printAllNode];
    NSLog(@"-------------------------------------");
    [list01 removeLast];
    
    [list01 printAllNode];
    NSLog(@"-------------------------------------");
    
//    [list01 removeFirst];
    
    [list01 printAllNode];
    
    NSLog(@"-------------------------------------");
    
//    [list01 removeFirst];
    
    [list01 printAllNode];
    
    NSLog(@"-------------------------------------");
    
    [list01 countAll];
    
    NSLog(@"-------------------------------------");
    
//    [list01 addFirstValue:6];
    
    [list01 printAllNode];
    
    NSLog(@"-------------------------------------");
    
    [list01 countAll];
    
    [list01 countAll];
    
    
    return 0;
}
