//
//  DoubleLinkedList.m
//  Class0928
//
//  Created by chaving on 2016. 9. 28..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "DoubleLinkedList.h"
#import <QuartzCore/QuartzCore.h>

@implementation DoubleLinkedList

// 초기화
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.header = [[Node alloc] init];
        self.header.nextNode = nil;
        self.header.prevNode = nil;
        self.lastIndex = 0;
        self.nodeCounter = 0;
    }
    return self;
}

// add ( 맨 처음에 데이터 추가 하기 )
- (void)addFirstValue:(NSInteger)value{

    [self addFirstIndexNode:self.header newValue:value];
    
}

- (void)addFirstIndexNode:(Node *)nowNode newValue:(NSInteger)value{
    
    Node *newNode = [[Node alloc] init];
    newNode.value = value;
    
    // nowNode의 prev 가  nil  이다.
    if(self.header.nextNode == nil){
        
        self.header.nextNode = newNode;
        newNode.prevNode = self.header;
        newNode.nextNode = nil;
        
    }else{
        
        newNode.prevNode = self.header;
        newNode.nextNode = self.header.nextNode;
        
        self.header.nextNode.prevNode = newNode;
        self.header.nextNode = newNode;
        
    }
    
}


// add ( 마지막에 테이터를 추가 한다. )
- (void)addLastValue:(NSInteger)value{
    
    [self addLastIndexNode:self.header newValue:value];
    
}

- (void)addLastIndexNode:(Node *)nowNode newValue:(NSInteger)value{

    // nowNode 의 next 가 nil 이다.
    if(nowNode.nextNode == nil){
    
        Node *newNode = [[Node alloc] init];
        newNode.value = value;
        newNode.prevNode = nowNode;
        newNode.nextNode = nil;
        newNode.index = self.lastIndex;
        
        nowNode.nextNode = newNode;
        self.lastIndex = self.lastIndex + 1;
        
    // nil이 아니다.
    }else{
        
        [self addLastIndexNode:nowNode.nextNode newValue:value];
    
    }

}









// removeFirst ( 처음 데이터를 삭제한다. )
- (void)removeFirst{

    [self removeFirstNode:self.header];
    
}

- (void)removeFirstNode:(Node *)nowNode{
    
    // 처음 노드 인것 을 판별하기
    if (nowNode.prevNode == self.header) {
        
        // 처음 노드 인데 다음 값이 nil 일때
        if(nowNode.nextNode == nil){
        
            self.header.nextNode = nil;
            nowNode.nextNode = nil;
        
        // 처음 노드 인데 다음에 또 값이 있을 때
        }else{
        
            Node *nextFirst = nowNode.nextNode;
            
            nextFirst.prevNode = self.header;
            self.header.nextNode = nextFirst;
            nowNode.nextNode = nil;
        
        }
    // 처음 노드가 아니면
    }else{
    
        [self removeFirstNode:nowNode.nextNode];
    
    }

}


// removeLast ( 마지막 데이터를 지운다. )
- (void)removeLast{
    
    [self removeLastNode:self.header];

}

- (void)removeLastNode:(Node *)nowNode{

    if(nowNode.nextNode == nil){
        // nowNode = lastNode
        Node *preLast = nowNode.prevNode;
        preLast.nextNode = nil;
        nowNode.prevNode = nil;
    
    }else{
    
        [self removeLastNode:nowNode.nextNode];
    
    }

}

// count ( 총 노드의 갯수를 구한다. )
- (void)countAll{

    [self countAllNode:self.header];

}


- (void)countAllNode:(Node *)allNode{
    
    // 카운터의 초기값 설정
    if (allNode == self.header) {
        
        self.nodeCounter = 0;
        
    }
    
    NSInteger countNode = self.nodeCounter;
    
    // 노드가 마지막위치 일때
    if (allNode.nextNode == nil) {
        
        NSLog(@"총 노드의 갯수 : %ld", countNode);
    
    // 노드가 마지막 위치가 아닐때
    }else{
        
        // 카운터의 숫자를 1플러스
        self.nodeCounter = countNode + 1;
        
        // 다음 노드로 넘어감
        [self countAllNode:allNode.nextNode];
        
    }

}


// printNode ( 모든 노드의 데이터를 출력한다. )
- (void)printAllNode{

    // 헤더 값 0은 출력 되지 않는 if문
    if(self.header.nextNode != nil){
        
        [self printNode:self.header.nextNode];
        
    }
}

- (void)printNode:(Node *)node{

    // 다음에 값이 없을때 값을 출력하고 끝
    if (node.nextNode == nil) {
    

        NSLog(@"%ld", node.value);

        NSLog(@"%ld / index : %ld", node.value, node.index);

        
    // 값을 출력했는데 다음에 또 값이 있으면 다음으로!
    }else{
        

        NSLog(@"%ld", node.value);

        NSLog(@"%ld / index : %ld", node.value, node.index);

        
        [self printNode:node.nextNode];
    
    }

}

// printIndex ( 해당 인덱스의 노드의 값을 찾는다. )


// serchData ( 원하는 데이터를 찾는 로직 / 중복 내용을 찾아내서 인덱스로 표시 )




@end
