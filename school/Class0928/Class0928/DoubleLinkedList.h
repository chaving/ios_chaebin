//
//  DoubleLinkedList.h
//  Class0928
//
//  Created by chaving on 2016. 9. 28..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"


@interface DoubleLinkedList : NSObject

@property Node *header;
@property NSInteger lastIndex;

@property NSInteger nodeCounter;


- (void)addFirstValue:(NSInteger)value;
- (void)addFirstIndexNode:(Node *)nowNode newValue:(NSInteger)value;

- (void)addLastValue:(NSInteger)value;
- (void)addLastIndexNode:(Node *)nowNode newValue:(NSInteger)value;

- (void)printAllNode;
- (void)printNode:(Node *)node;

- (void)removeLast;
- (void)removeLastNode:(Node *)nowNode;

- (void)removeFirst;
- (void)removeFirstNode:(Node *)nowNode;

- (void)countAll;
- (void)countAllNode:(Node *)allNode;

@end
