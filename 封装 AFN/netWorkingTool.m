//
//  netWorkingTool.m
//  MyTools
//
//  Created by 李轩霖 on 15/12/14.
//  Copyright © 2015年 李轩霖. All rights reserved.
//

#import "netWorkingTool.h"

@implementation netWorkingTool
+ (void)post:(NSString *)url params:(id)params success:(void (^)(id))success failure:(void (^)(NSError *))failure{
    
    // 1.创建一个请求管理者
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [manager.requestSerializer setValue:@"text/html" forHTTPHeaderField:@"Accept"];
    //    [manager.requestSerializer setValue:TXToken  forHTTPHeaderField:@"token"];
//    [manager.requestSerializer setValue:@"23456"  forHTTPHeaderField:@"token"];
    
    // 2.发送一个POST请求
    [manager POST:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (operation.response.statusCode == 200) {
            success(responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
            //动画效果
//            [SVProgressHUD dismiss];
//            [DealError dealError:error withOperation:operation];
        }
    }];
}

+ (void)get:(NSString *)url params:(id)params success:(void (^)(id))success failure:(void (^)(NSError *))failure{
    // 1.创建一个请求管理者
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    //     [manager.requestSerializer setValue:EWSToken  forHTTPHeaderField:@"token"];
    [manager.requestSerializer setValue:@"123456"  forHTTPHeaderField:@"token"];
    
    // 2.发送一个GET请求
    [manager GET:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        if (operation.response.statusCode == 200) {
            success(responseObject);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
            //动画效果
//            [SVProgressHUD dismiss];
//            [DealError dealError:error];
            
        }
    }];
}


@end
