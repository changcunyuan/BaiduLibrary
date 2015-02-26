//
//  BaiduUtil.h
//  BaiduLibrary
//
//  Created by zhuayi on 14/10/31.
//  Copyright (c) 2014年 zhuayi inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaiduUtil : NSObject

/**
 * 时间戳转换字符串
 *
 * @param timer 时间戳
 * @param formatterString 转后的格式如: YYYY-MM-dd HH:mm:ss
 *
 * @return return NSString
 */
+ (NSString *) formatterTimeToString : (NSTimeInterval) timer  formatterString : (NSString *)  formatterString;
@end
