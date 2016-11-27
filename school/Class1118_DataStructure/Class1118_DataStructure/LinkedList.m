//
//  LinkedList.m
//  Class1118_DataStructure
//
//  Created by chaving on 2016. 11. 18..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "LinkedList.h"
#import "Node.h"

@implementation LinkedList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.dummy = [[Node alloc] init];
        self.head = self.dummy;
        self.tail = self.dummy;
        
        self.someNum = 0;
        self.numOfData = 0;
    }
    return self;
}


- (void)addList:(NSInteger)value{

    Node *newNode = [[Node alloc] init];

    newNode.data = value;
    
    self.tail.next = newNode;
    self.tail = newNode;
    
    self.numOfData += 1;
    
    NSLog(@"%ld", value);
}

- (BOOL)islistOfFirst{

    self.before = self.head;
    self.current = self.head.next;
    
    if (self.current != nil) {
        
        self.someNum = self.current.data;
        
        return YES;
    }
    
    return NO;
}


- (BOOL)isNextOfList{

    if (self.current.next == nil) {
        
        return NO;
    }
    
    self.before = self.current;
    self.current = self.current.next;
    
    self.someNum = self.current.data;
    
    return YES;
}

- (void)printCountList{

    NSLog(@"리스트의 갯수 : %ld", self.numOfData);
}



- (void)pushNode:(NSInteger)value{

    Node *newNode = [[Node alloc] init];
    
    self.head.next = newNode;
    newNode.data = value;

}

- (void)popNode:(Node *)deleteNode{

    if (deleteNode == self.head) {
        
        if (deleteNode.next == nil) {
            
            self.head = nil;
        }else{
        
            self.head = deleteNode.next;
            
            deleteNode.next = deleteNode.next.next;
        }
    }
}


- (void)inQueue:(NSInteger)value{

    Node *newNode = [[Node alloc] init];
    
    newNode.data = value;
    
    if (self.head == nil) {
        
        self.head = newNode;
        newNode.next = nil;
    }else{
    
        self.head = newNode;
        newNode.next = self.head.next;
    }
}


- (void)deQueue:(Node *)deleteNode{
    
    if (deleteNode.next == nil) {
        
        
    }
}



- (void)printAllList:(LinkedList *)listName{

    if (listName.islistOfFirst == YES) {
        
        while (listName.isNextOfList == NO) {
            
//            NSLog(@"list : %ld", );
        }
    }

}






@end
































