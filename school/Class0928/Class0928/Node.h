//
//  Node.h
//  Class0928
//
//  Created by chaving on 2016. 9. 28..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

// 노드에 어떤 내용이 들어가야 할까요
@property NSInteger value;

@property Node *nextNode;
@property Node *prevNode;

@property NSInteger index;


@end
