//
//  Http.h
//  ExerciseDemo
//
//  Created by Aaron.zheng on 15/7/16.
//  Copyright (c) 2015年 Aaron.zheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPSessionManager.h"

@interface Http : AFHTTPSessionManager
+(instancetype)shareInstance;
-(NSURLSessionDataTask *)httpGET:(NSString *)URLString parameters:(id)parameters success:(void(^)(NSURLSessionDataTask *task, id responseObject))success failure:(void(^)(NSURLSessionDataTask *task, NSError *error))failure;

-(NSURLSessionDataTask *)httpPOST:(NSString *)URLString parameters:(id)parameters success:(void(^)(NSURLSessionDataTask *task, id responseObject))success failure:(void(^)(NSURLSessionDataTask *task, NSError *error))failure;
@end
