//
//  ViewController.h
//  Study1025_Homework
//
//  Created by chaving on 2016. 10. 25..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

+ (UIViewController*) viewControllerWithRestorationIdentifierPath:(NSArray *)identifierComponents
                                                            coder:(NSCoder *)coder;

@end

