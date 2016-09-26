//
//  Grade.m
//  Class0926
//
//  Created by chaving on 2016. 9. 26..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "Grade.h"

@implementation Grade


// 점수별 문자로 등급표현하기
+ (NSString *)gradeType:(NSInteger)score
{

    NSString *gradeScore = @"F";
    
    if(score > 100){
    
        gradeScore = @"Error";
        
    }else if(score <= 100 && score >= 95){
    
        gradeScore = @"A+";
        
    }else if(score >= 90){
        
        gradeScore = @"A";
        
    }else if (score >= 85){
        
        gradeScore = @"B+";
        
    }else if(score >= 80){
    
        gradeScore = @"B";
        
    }else if(score >= 75){
        
        gradeScore = @"C+";
        
    }else if(score >= 70){
        
        gradeScore = @"C";
        
    }else if(score >= 60){
        
        gradeScore = @"D";
        
    }else if(score < 60 && score >= 0){
    
        gradeScore = @"F";
    
    }else{
    
        gradeScore = @"Error";
    
    }
    
    return gradeScore;
    
}







+ (CGFloat)gradePoint:(NSString *)gradeName{

    CGFloat pointNum = 0;
    
    if([gradeName isEqualToString:@"A"]){
    
       pointNum = 4.5;
        
    }else if([gradeName isEqualToString:@"B"]){
    
       pointNum = 3.5;
        
    }else if([gradeName isEqualToString:@"C"]){
    
        pointNum = 3;
    
    }else{
    
        pointNum = 0;
    
    }
    
    return pointNum;

}



+ (void)schoolGrade:(NSInteger)grade
{
    switch (grade)
    {
        case 1:
            NSLog(@"전액 장학금 입니다.");
            break;
        case 2:
            NSLog(@"50% 장학금 입니다.");
            break;
        case 3:
            NSLog(@"25% 장학금 입니다.");
            break;
        case 4:
            NSLog(@"10% 장학금 입니다.");
            break;
        default:
            NSLog(@"없습니다.");
            break;
    }
    
    
}




















@end
