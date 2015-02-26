//
//  TimeUtil.h
//  BaiduLibrary
//
//  Created by Liang on 14-11-7.
//  Copyright (c) 2014年 zhuayi inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeUtil : NSObject
/**
 *  根据时间戳获取时钟和分钟
 *
 *  @param timeInterval 时间戳
 *
 *  @return 时钟和分钟，例：09:20
 */
+ (NSString *)getTimeHourAndMinWithTimeInterval:(long)timeInterval
                                       timeZone:(NSString *)tz;
/**
 *  计算2个时间戳之间相隔的天数
 *
 *  @param timeInterval1 时间戳1
 *  @param timeInterval2 时间戳2
 *
 *  @return 天数
 */
+ (int)calculationDaysBetweenTimeInterval:(long)timeInterval1 other:(long)timeInterval2;

/**
 *  时间差
 *
 *  @param date
 *
 *  @return
 */
+ (NSString *) lastTime : (NSDate *) date;
/**
 *  根据时间戳获取日期（仅日期 2014年3月5日）
 *
 *  @param timeInterval 时间戳
 *
 *  @return
 */
+ (NSString *) getDateWithTimeInterval:(int)timeInterval;

/**
 *  获取当前日期的时间戳
 *
 *  @return 不带时间的NSTimeInterval
 */
+ (NSTimeInterval )getCurrentTimeIntervalNoTime;

/**
 *  转换时区
 *
 *  @param timeZone
 *
 *  @return
 */
+ (NSString *)transformation:(NSString *)timeZone;
@end


