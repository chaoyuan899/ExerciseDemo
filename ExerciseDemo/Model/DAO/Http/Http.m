//
//  Http.m
//  ExerciseDemo
//
//  Created by Aaron.zheng on 15/7/16.
//  Copyright (c) 2015年 Aaron.zheng. All rights reserved.
//

#import "Http.h"

static Http *_shareInstance = nil;
@implementation Http

+(instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shareInstance = [[Http alloc] init];
        _shareInstance.responseSerializer = [AFHTTPResponseSerializer serializer];
//        _shareInstance.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    });
    
    return _shareInstance;
}

-(NSURLSessionDataTask *)httpGET:(NSString *)URLString parameters:(id)parameters success:(void (^)(NSURLSessionDataTask *, id))success failure:(void (^)(NSURLSessionDataTask *, NSError *))failure {
    return [_shareInstance GET:URLString parameters:parameters success:success failure:failure];
}

-(NSURLSessionDataTask *)httpPOST:(NSString *)URLString parameters:(id)parameters success:(void (^)(NSURLSessionDataTask *, id))success failure:(void (^)(NSURLSessionDataTask *, NSError *))failure {
    return [_shareInstance POST:URLString parameters:parameters success:success failure:failure];
}
@end
