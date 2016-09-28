//
//  main.m
//  Class0927
//
//  Created by chaving on 2016. 9. 27..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    
    Person *me = [[Person alloc]init];
    
    [me setHeight:170.3 weight:63.3];
    
    character temp = me.info;
    
    NSLog(@"%lf %lf",temp.height,temp.weight);
    
    return 0;
}
