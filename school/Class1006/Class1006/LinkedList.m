//
//  LinkedList.m
//  Class1006
//
//  Created by chaving on 2016. 10. 6..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.header = [[Node alloc]init];;
        self.header.nextNode = nil;
        self.header.preveNode = nil;
    }
    return self;
}



// Stack 구조 이해하기 ------------------

// Push 맨처음에 추가하기
- (void)push:(NSInteger)value{

    [self push:self.header newValue:value];
    
}

- (void)push:(Node *)nowNode newValue:(NSInteger)value{

    Node *newNode = [[Node alloc]init];
    newNode.value = value;
    
    // header 다음이 nil 일때
    if (self.header.nextNode == nil) {
        
        self.header.nextNode = newNode;
        newNode.nextNode = nil;
//        newNode.preveNode = self.header;
        
    }else{
    
        newNode.nextNode = self.header.nextNode;
//        newNode.preveNode = self.header;
        
        self.header.nextNode = newNode;
    
    }

}

// Pop 맨 마지막에 들어간 데이터 빼기
- (NSString *)pop{
    
    if (self.header.nextNode == nil) {
    
        return nil;
        
    }else{
    
        NSInteger popData = self.header.nextNode.value;
        
        NSString *popDataStr = [NSString stringWithFormat:@"%ld",popData];
        
        [self pop:self.header];
        
        return popDataStr;
    
    }
    
}

- (NSString *)pop:(Node *)nowNode{
    
    self.header.nextNode = self.header.nextNode.nextNode;
    self.header.nextNode.nextNode.preveNode = self.header;
    
    return nil;

}


// 스텍이 비었느냐 확인
- (BOOL)isEmpty{

    if (self.header.nextNode == nil) {
        
        return YES;
        
    }else{
        
        return NO;
    
    }

}


//전체 스텍 다 날리기
- (void)clear{
    
    [self clear:self.header.nextNode];
    
}

- (void)clear:(Node *)nowNode{
   
    // 처음 노드 인데 다음 값이 nil 일때
    if(nowNode.nextNode == nil){
        
        self.header.nextNode = nil;
        nowNode.nextNode = nil;
        
        // 처음 노드 인데 다음에 또 값이 있을 때
    }else{
        
        Node *nextFirst = nowNode.nextNode;
        
        nextFirst.preveNode = self.header;
        self.header.nextNode = nextFirst;
        nowNode.nextNode = nil;
        
        [self clear:nextFirst];
        
    }
    
}






//- (BOOL)checkBracketString:(Node *)node str:(NSString *)str
//{
//    //스트링 분해 하기
//    NSMutableArray *chList = [[NSMutableArray alloc] init];
//    
//    for (NSInteger i = 0; i < str.length; i++) {
//        NSString *ch = [str substringWithRange:NSMakeRange(i, 1)];
//        [chList addObject:ch];
//    }
//    
//    for (NSString *ch in chList) {
//        
//        NSInteger checkBracketType = [self checkedBracket:ch];
//        
//        switch (checkBracketType) {
//        case 1:
//                [self push:ch];
//                break;
//            case 2:
//                NSString *popStr =  [self pop];
//                //한쌍인지 검사
//                if(![self checkPairOpenB:popStr closeB:ch])
//                {
//                    return NO;
//                }
//                break;
//                
//            default:
//                break;
//        }
//        
//    }
//    
//    if ([self isEmpty]) {
//        return YES;
//    }else{
//        return NO;
//    }
//    
//}



- (NSInteger)checkedBracket:(NSString *)bracket{

    if ([bracket isEqualToString:@"{"] || [bracket isEqualToString:@"["] || [bracket isEqualToString:@"("]) {
        return 1;
    }else if ([bracket isEqualToString:@"}"] || [bracket isEqualToString:@"]"] || [bracket isEqualToString:@")"]) {
        return 2;
    }else{
        return 3;
    }
    
}

- (BOOL)checkPairOpenB:(NSString *)openB closeB:(NSString *)closeB{

    NSString *precloseB;
    if ([openB isEqualToString:@"{"]) {
        precloseB = @"}";
    }else if([openB isEqualToString:@"["]){
        precloseB = @"]";
    }else if([openB isEqualToString:@")"]){
        precloseB = @")";
    }
    
    if ([precloseB isEqualToString:closeB]) {
        return YES;
    }else{
        return NO;
    }

}














// 전체 노드 데이터 프린트 하기
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
        
        // 값을 출력했는데 다음에 또 값이 있으면 다음으로!
    }else{
        
        NSLog(@"%ld", node.value);
        
        [self printNode:node.nextNode];
        
    }
    
}




@end
