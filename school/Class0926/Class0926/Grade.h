//
//  Grade.h
//  Class0926
//
//  Created by chaving on 2016. 9. 26..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Grade : NSObject

+ (NSString *)gradeType:(NSInteger)score;

+ (CGFloat)gradePoint:(NSString *)gradeName;

+ (void)schoolGrade:(NSInteger)grade;


@end
