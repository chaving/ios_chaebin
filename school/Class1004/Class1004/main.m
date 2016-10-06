//
//  main.m
//  Class1004
//
//  Created by chaving on 2016. 10. 4..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Multication.h"
#import "DataEX.h"


int main(int argc, const char * argv[]) {
    
    [Multication getMultiplicationTable:3];
    
    NSLog(@"-------------------------------------------");
    
    [Multication forMultiplicationTable:3];

    NSLog(@"-------------------------------------------");
    
    [Multication factorial:4];
    
    NSLog(@"-------------------------------------------");
    
    [Multication triangleNum:10];
    [Multication triangleNum:-1];
    
    NSLog(@"-------------------------------------------");
    
    [Multication addAllNum:1234];
    
    NSLog(@"-------------------------------------------");
    
    [Multication game369:400];
    
    NSLog(@"-------------------------------------------");
    
    
    
    
    
    
    
    NSDictionary *aoalbum = @{@"album_info":@{@"title": @"Heart Attack",@"artist": @"AOA",},
                                
                                @"song_list" : @[
                                                 @{@"name":@"심쿵해",
                                                 @"artist":@"AOA",
                                        @"total_play_time": @223,
                                              @"song_info":@{@"writer":@"용감한 형제들",
                                                           @"composer":@"Mr.강",
                                                             @"lyrics":@"완전 반해 반해 버렸어요 부드러운 목소리에 반해 반해 버렸어요 난 떨려 (AOA Let's Go!)"}},
                                                @{@"name":@"Luv Me",
                                                @"artist":@"AOA",
                                       @"total_play_time": @252,
                                             @"song_info":@{@"writer":@"용감한 형제들",
                                                          @"composer":@"JS",
                                                            @"lyrics":@"Do it this do it this girl Do it this do it this hey Do it this do it this girl "}},
                                                 @{@"name":@"한개",
                                                 @"artist":@"AOA",
                                        @"total_play_time": @238,
                                              @"song_info":@{@"writer":@"용감한 형제들",
                                                           @"composer":@"별들의 전쟁",
                                                             @"lyrics":@"딱 하루만 더 내게 시간을 줘 우리 내일 다시 헤어지자고 너와 끼던 반지 한 개 아무 의미 없이 남아 우린 아니라는 말에 세상이 끝나버릴 것만 같아 "}}
                                                 ],
                                
                                @"producer":@"FNC엔터테인먼트",
                                
                                @"album_story":@"AOA 3rd Mini Album [Heart Attack] Information\n\nAOA, 이번엔 ‘섹시 스포티’다! 세 번째 미니 앨범 ‘Heart Attack’ 전격 발매\n\nAOA, 무더위 날려 버릴 상큼발랄 서머송 ‘심쿵해’로 7개월 만의 컴백\n\n"
                                
                                };
    
    
    
    DataEX *albumData = [[DataEX alloc]init];
    
    NSString *albumTitle = [albumData titleData:aoalbum];
    
    NSLog(@"aoa의 앨범 이름은 %@ 이다.", albumTitle);
    
    NSLog(@"-------------------------------------------");
    
    for (NSString *songName in [DataEX songTitles:aoalbum]) {
        NSLog(@"%@", songName);
    }
    
    NSLog(@"-------------------------------------------");
    
    for (NSDictionary *songData in [DataEX songDatas:aoalbum]) {
        
        NSLog(@"\n writer : %@ \n composer : %@ \n lyrics : %@",[songData objectForKey:@"writer"],
                                                           [songData objectForKey:@"composer"],
                                                           [songData objectForKey:@"lyrics"] );
        
    }
    
    NSLog(@"-------------------------------------------");
    
    NSLog(@"%@",[DataEX lyricWithData:@"심쿵해" data:aoalbum]);
    
    NSLog(@"-------------------------------------------");
    
    NSLog(@"%@",[DataEX playTimeData:@"심쿵해" data:aoalbum]);
    
    
    
    
    
    return 0;
}
