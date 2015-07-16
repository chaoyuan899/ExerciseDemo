//
//  SongBLL.h
//  ExerciseDemo
//
//  Created by Aaron.zheng on 15/7/16.
//  Copyright (c) 2015年 Aaron.zheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SongEntity.h"

@interface SongBLL : NSObject
-(void)searchSongInfoWithSongName:(NSString*)songName success:(void(^)(SongEntity *songEntity))repBlock failure:(void(^)(NSError *error))expBlock;
@end
