//
//  UIAlertController+MyAlert.m
//  Class1107_AlertCategory
//
//  Created by chaving on 2016. 11. 7..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "UIAlertController+MyAlert.h"

@implementation UIAlertController (MyAlert)

+ (instancetype) alertControllerWithTitle:(NSString *)title message:(NSString *)message cancelTitle:(NSString *)cancelTitle okTitle:(NSString *)okTitle okHandler:(void (^)(UIAlertAction *action))handler{


    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title
                                                                   message:message
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertController alertControllerWithTitle:cancelTitle
                                                                      message:<#(nullable NSString *)#> preferredStyle:<#(UIAlertControllerStyle)#>]
    
    
}

@end
