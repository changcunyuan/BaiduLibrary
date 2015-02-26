//
//  DeviceUtil.h
//  BaiduLibrary
//
//  Created by Liang on 14/12/22.
//  Copyright (c) 2014年 zhuayi inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DeviceUtil : NSObject

/**
 *  设备唯一表示符
 */
@property (nonatomic, strong) NSString *deviceUUID;
/**
 *  设备Class 单例模式
 *
 *  @return DeviceUtil
 */
+ (DeviceUtil *)mainDevice;
/**
 *  获取UUID
 *
 *  @return string
 */
+ (NSString *)generatUUID;
@end
