//
//  BaseHttpRequest.h
//  BaiduLibrary
//
//  Created by zhuayi on 14/10/21.
//  Copyright (c) 2014年 zhuayi inc. All rights reserved.
//

#import "AFHTTPRequestOperationManager.h"
#import "AppMacro.h"

typedef void(^BdRequestSuccess)(id responseObject);
typedef void(^BdRequestFail)(NSError *error);


@interface BaseHttpRequest : AFHTTPRequestOperationManager

+ (NSOperation *) GET: (NSString *) url parameters : (NSDictionary *) parameters success:(BdRequestSuccess)success failure:(BdRequestFail)failure;
//- (void)POST;

/**
 *  设置 cookie
 */
/**
 *  设置 cookie
 *
 *  @param key
 *  @param value
 */
+ (void)setCookie : (NSString * ) key value : (NSString *) value;
@end
