//
//  LinkedList.h
//  Class1118_DataStructure
//
//  Created by chaving on 2016. 11. 18..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface LinkedList : NSObject

@property Node *dummy;

@property Node *head;
@property Node *tail;
@property Node *current;
@property Node *before;

@property NSInteger someNum;

@property NSInteger numOfData;

- (void)addList:(NSInteger)value;
- (BOOL)islistOfFirst;
- (BOOL)isNextOfList;
- (void)printCountList;




@end
