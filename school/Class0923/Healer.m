//
//  Healer.m
//  Class0923
//
//  Created by chaving on 2016. 9. 23..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Healer.h"

@implementation Healer

- (id)Cure:(GameCharater *)someone{

    //내가 누구를 치료했다!
    NSLog(@"%@ 가(이) %@ 를(을) 치료했다!", self.nickName, someone.nickName);
    
    return nil;
}

@end
