//
//  SongEntity.h
//  ExerciseDemo
//
//  Created by Aaron.zheng on 15/7/16.
//  Copyright (c) 2015年 Aaron.zheng. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Status) {
    StatusNormal,
    StatusReceiveSongNanmeNil,
    StatusNoRoomSingingTheSong,
    StatusServerError
};

@interface SongEntity : NSObject
@property(nonatomic,assign) Status status;
@property(nonatomic,copy) NSString *roomId;
@property(nonatomic,copy) NSString *nickName;
@property(nonatomic,copy) NSString *photoPath;
@end
