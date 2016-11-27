//
//  LinkedList.h
//  Class1006
//
//  Created by chaving on 2016. 10. 6..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface LinkedList : NSObject

@property Node *header;


- (void)push:(NSInteger)value;
- (void)push:(Node *)nowNode newValue:(NSInteger)value;

- (NSString *)pop;
- (NSString *)pop:(Node *)nowNode;

- (void)printAllNode;
- (void)printNode:(Node *)node;

- (BOOL)isEmpty;

- (void)clear;
- (void)clear:(Node *)nowNode;

@end
