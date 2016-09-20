//
//  main.m
//  Study0920
//
//  Created by chaving on 2016. 9. 20..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Band.h"

int main(int argc, const char * argv[]) {
    
    
    Band *fastCampus = [[Band alloc] init];
    
    fastCampus.name = @"패스트캠퍼스";
    fastCampus.established = @"16.09.05";
    fastCampus.master = @"채빈";
    fastCampus.hobby = @"ios 개발";
    
    NSLog(@"%@ 밴드는 %@에 만들어졌다.", fastCampus.name, fastCampus.established);
    NSLog(@"%@의 마스터는 %@ 다.", fastCampus.name, fastCampus.master);
    
    [fastCampus joinTheBand:@"기민"];
    [fastCampus findTheBand:@"건희"];
    
    
    Band *musicSchool = [[Band alloc] init];
    
    musicSchool.name = @"우리동네 음악대장";
    musicSchool.established = @"15.12.31";
    musicSchool.master = @"건희";
    musicSchool.hobby = @"기타";
    
    NSLog(@"%@ 밴드는 %@에 만들어졌다.", musicSchool.name, musicSchool.established);
    NSLog(@"%@의 마스터는 %@ 다.", musicSchool.name, musicSchool.master);
    
    
    return 0;
}
