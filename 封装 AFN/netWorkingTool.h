//
//  netWorkingTool.h
//  MyTools
//
//  Created by 李轩霖 on 15/12/14.
//  Copyright © 2015年 李轩霖. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@interface netWorkingTool : NSObject

/**
 *  post请求
 *
 *  @param url     请求URL
 *  @param params  普通的请求参数
 *  @param success 请求成功后的回调
 *  @param failure 请求失败后的回调
 */
+ (void)post:(NSString *)url params:(id)params success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;
/**
 *  get请求
 *
 *  @param url     请求URL
 *  @param params  普通的请求参数
 *  @param success 请求成功后的回调
 *  @param failure 请求失败后的回调
 */
+ (void)get:(NSString *)url params:(id)params success:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;
@end
