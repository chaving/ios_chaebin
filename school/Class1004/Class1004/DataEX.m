//
//  DataEX.m
//  Class1004
//
//  Created by chaving on 2016. 10. 4..
//  Copyright © 2016년 chaving. All rights reserved.
//

#import "DataEX.h"

@implementation DataEX

- (NSString *)titleData:(NSDictionary *)data{

    if (data != nil) {
        NSDictionary *album_info = [data objectForKey:@"album_info"];
        NSString *title = [album_info objectForKey:@"title"];
        return title;
    }
    
    return nil;

}

+ (NSArray *)songTitles:(NSDictionary *)data{

    NSArray *song_list = [data objectForKey:@"song_list"];
    
    NSMutableArray *name = [[NSMutableArray alloc]init];
    
    for(NSDictionary *songName in song_list){
        [name addObject:[songName objectForKey:@"name"]];
    }
    return name;

}

+ (NSArray *)songDatas:(NSDictionary *)data{
    
    NSArray *songList = [data objectForKey:@"song_list"];
    
    NSMutableArray *info =[[NSMutableArray alloc] init];
    
    for (NSDictionary *songInfo in songList) {
        [info addObject:[songInfo objectForKey:@"song_info"]];
    }
    
    return info;

}

+ (NSString *)lyricWithData:(NSString *)title data:(NSDictionary *)data{

    NSArray *songList = [data objectForKey:@"song_list"];

    NSMutableDictionary *song_info = [[NSMutableDictionary alloc]init];
    
    for (NSDictionary *songName in songList) {
        
        if ([title isEqualToString:[songName objectForKey:@"name"]]) {
            
            song_info = [songName objectForKey:@"song_info"];
            
        }
        
    }
             
    NSString *lyrics = [song_info objectForKey:@"lyrics"];
    
    return lyrics;
    
}

+ (NSData *)playTimeData:(NSString *)title data:(NSDictionary *)data{

    NSArray *songList = [data objectForKey:@"song_list"];
    
    NSData *songPlayData;
    
    for (NSDictionary *songData in songList) {
        
        if ([title isEqualToString:[songData objectForKey:@"name"]]) {
            
            songPlayData = [songData objectForKey:@"total_play_time"];
            
        }
        
    }
    
    return songPlayData;
}



@end
