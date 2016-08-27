//
//  ALEXBaseReq.m
//  ios架构
//
//  Created by 栾有数 on 16/7/19.
//  Copyright © 2016年 栾有数. All rights reserved.
//

#import "ALEXBaseReq.h"

@implementation ALEXBaseReq
- (RACSignal *)request:(ALEXBaseReq *)api {
    return [[RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber) {
        [api startWithCompletionBlockWithSuccess:^(YTKBaseRequest *request) {
            NSDictionary *resp = request.responseJSONObject;
            
            NSError *err = nil;
            
            if ([resp isKindOfClass:[NSDictionary class]] && [resp[@"errcode"] integerValue]) {
                err = [NSError errorWithDomain:resp[@"msg"] code:[resp[@"errcode"] integerValue]  userInfo:@{@"msg" : resp[@"msg"]}];
            }
            if (err) {
                [subscriber sendError:err];
            }
            else {
                [subscriber sendNext:resp];
                [subscriber sendCompleted];
            }
        } failure:^(YTKBaseRequest *request) {
//            NSDictionary *resp = request.responseJSONObject;
            NSError *error = request.requestOperation.error;
            NSError * nserror = [NSError errorWithDomain:error.localizedDescription code:error.code userInfo:nil];
            [subscriber sendError:nserror];
        }];
        
        return [RACDisposable disposableWithBlock:^{
            [api stop];
        }];
    }] replayLazily];
}

@end
