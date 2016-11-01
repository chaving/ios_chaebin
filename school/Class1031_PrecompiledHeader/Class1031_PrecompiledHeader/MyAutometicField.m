//
//  MyAutometicField.m
//  Class1031_PrecompiledHeader
//
//  Created by chaving on 2016. 10. 31..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "MyAutometicField.h"

@interface MyAutometicField () <UITextFieldDelegate>

@end

@implementation MyAutometicField


/*
    스토리보드 상에서 올리는 뷰나 텍스트 필드 등은
    기본적으로 초기화가 되는데
    스토리 보드 상에서 만들어 지는 것들에게
    초기화 값을 주기 위해 awakeFromNib 을 이용하여
    초기 값을 주게 된다.
*/
- (void)awakeFromNib{
    [super awakeFromNib];
    
    if ([self delegate] == nil) {
        [self setDelegate:self];
    }

}

@end
