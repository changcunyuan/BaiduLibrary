//
//  DeviceUtil.m
//  BaiduLibrary
//
//  Created by Liang on 14/12/22.
//  Copyright (c) 2014年 zhuayi inc. All rights reserved.
//

#import "DeviceUtil.h"
static DeviceUtil *share = nil;
@implementation DeviceUtil

/**
 *  设备Class 单例模式
 *
 *  @return DeviceUtil
 */
+ (DeviceUtil *)mainDevice
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        share = [[DeviceUtil alloc] init];
        
    });
    
    return share;
}
/**
 *  获取UUID
 *
 *  @return string
 */
+ (NSString *)generatUUID
{
    CFUUIDRef puuid = CFUUIDCreate(nil);
    CFStringRef uuidString = CFUUIDCreateString(nil, puuid);
    NSString *result = (NSString *)CFBridgingRelease(CFStringCreateCopy(NULL, uuidString));
    
    CFRelease(puuid);
    CFRelease(uuidString);
    return result;
}

@end
