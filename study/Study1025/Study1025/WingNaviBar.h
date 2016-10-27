//
//  WingNaviBar.h
//  Study1025
//
//  Created by chaving on 2016. 10. 25..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{
    
    WingNaviBarTypeNormal = 0,
    WingNaviBarTypeAdd = 1,
    WingNaviBarTypePreve = 2
    
}WingNaviBarType;

@interface WingNaviBar : UIView

- (instancetype)initWithType:(WingNaviBarType)type ViewController:(UIViewController *)vc target:(id)target action:(SEL)action;

@end
