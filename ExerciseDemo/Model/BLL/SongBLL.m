//
//  SongBLL.m
//  ExerciseDemo
//
//  Created by Aaron.zheng on 15/7/16.
//  Copyright (c) 2015年 Aaron.zheng. All rights reserved.
//

#import "SongBLL.h"
#import "Http.h"
#import "MJExtension.h"

static NSString * const baseURLString = @"http://song.room.fanxing.com/mobquery?songName=";

@implementation SongBLL
-(void)searchSongInfoWithSongName:(NSString *)songName success:(void (^)(SongEntity *))repBlock failure:(void (^)(NSError *))expBlock {
    NSString *songInfoURLString = [NSString stringWithFormat:@"%@%@",baseURLString,songName];
    [[Http shareInstance] httpGET:songInfoURLString parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        NSError *error;
        if (responseObject != nil) {
            SongEntity *songEntity = [SongEntity objectWithKeyValues:responseObject];
            if (repBlock) {
                repBlock(songEntity);
            }
        }else {
            expBlock(error);
        }
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (expBlock) {
            expBlock(error);
        }
    }];
}
@end
