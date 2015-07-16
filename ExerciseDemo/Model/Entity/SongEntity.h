//
//  SongEntity.h
//  ExerciseDemo
//
//  Created by Aaron.zheng on 15/7/16.
//  Copyright (c) 2015年 Aaron.zheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SongEntity : NSObject
@property(nonatomic,assign) NSInteger status;
@property(nonatomic,copy) NSString *roomId;
@property(nonatomic,copy) NSString *nickName;
@property(nonatomic,copy) NSString *photoPath;

-(instancetype)initWithDictionary:(NSDictionary *)dic;
@end
