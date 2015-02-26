//
//  TimeUtil.m
//  BaiduLibrary
//
//  Created by Liang on 14-11-7.
//  Copyright (c) 2014年 zhuayi inc. All rights reserved.
//

#import "TimeUtil.h"

@implementation TimeUtil

+ (NSString *)getTimeHourAndMinWithTimeInterval:(long)timeInterval
                                       timeZone:(NSString *)tz;
{
    
    if (timeInterval == 0) {
        return @"--:--";
    }
    
    NSTimeZone *timeZone = [NSTimeZone timeZoneWithAbbreviation:[self transformation:tz]];
    
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    
    //实例化一个NSDateFormatter对象
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    dateFormatter.locale = [[NSLocale alloc]initWithLocaleIdentifier:@"en_US"];
    [dateFormatter setTimeZone:timeZone];
    //设定时间格式,这里可以设置成自己需要的格式
    [dateFormatter setDateFormat:@"HH:mm"];
    
    //用[NSDate date]可以获取系统当前时间
    NSString *currentDateStr = [dateFormatter stringFromDate:date];

    return currentDateStr;
}

+ (int)calculationDaysBetweenTimeInterval:(long)timeInterval1 other:(long)timeInterval2
{
    
    if (timeInterval1 == 0 || timeInterval2 == 0) {
        return 0;
    }

    NSDate *date1 = [NSDate dateWithTimeIntervalSince1970:timeInterval1];
    NSDate *date2 = [NSDate dateWithTimeIntervalSince1970:timeInterval2];
    
    
    NSCalendar *cal = [NSCalendar currentCalendar];


    unsigned int unitFlag = NSDayCalendarUnit | NSHourCalendarUnit |NSMinuteCalendarUnit;
    NSDateComponents *gap = [cal components:unitFlag fromDate:date1 toDate:date2 options:0];//计算时间差
    
    int days = (int)ABS([gap day]);
    return days;    
    
}

/**
 *  时间差
 *
 *  @param date
 *
 *  @return
 */
+ (NSString *) lastTime : (NSDate *) date
{
    int dateTime = [date timeIntervalSince1970];
    int now = [[NSDate date] timeIntervalSince1970];
    int diffTime = now - dateTime;
    int day = floor(diffTime / 86400);
    int free = diffTime % 86400;
    
    if(day > 0)
    {
        return [NSString stringWithFormat:@"%d 天前",day];
    }
    
    if (free > 0)
    {
        int hour = floor(free / 3600);
        free = free % 3600;
        if(hour > 0)
        {
            return [NSString stringWithFormat:@"%d 小时前",hour];
        }
        else
        {
            int min = floor(free / 60);
            free = free % 60;
            if(min>0)
            {
                return [NSString stringWithFormat:@"%d 分钟前",min];
            }
            else
            {
                return @"刚刚";
            }
        }
    }
    return @"刚刚";
}
/**
 *  根据时间戳获取日期（仅日期 2014年3月5日）
 *
 *  @param timeInterval 时间戳
 *
 *  @return
 */
+ (NSString *) getDateWithTimeInterval:(int)timeInterval
{
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    NSDateFormatter *Formatter=[[NSDateFormatter alloc] init];
    [Formatter setDateFormat:@"yyyy年MM月dd日"];
    
    NSString *resultStr=[Formatter stringFromDate:date];
    return resultStr;
}
/**
 *  获取当前日期的时间戳
 *
 *  @return 不带时间的NSTimeInterval
 */
+ (NSTimeInterval )getCurrentTimeIntervalNoTime
{
    //取当前时间日期，不带时间格式
    NSDate *date = [NSDate date];
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"yyyy-MM-dd"];
    NSString *string = [format stringFromDate:date];
    date = [format dateFromString:string];
    return [date timeIntervalSince1970];
}

/**
 *  转换时区
 *
 *  @param timeZone
 *
 *  @return
 */
+ (NSString *)transformation:(NSString *)timeZone
{
    if ([timeZone isEqualToString:@""]) {
        return @"";
    }
    
    NSString *newTimeZone = [timeZone copy];
    newTimeZone = [newTimeZone stringByReplacingOccurrencesOfString:@" " withString:@""];

    NSString *strSep = @"+";
    NSArray *arr = [newTimeZone componentsSeparatedByString:strSep];
    if (arr.count == 1) {
        
        strSep = @"-";
        
        arr = [newTimeZone componentsSeparatedByString:strSep];
        if (arr.count == 1) {
            return newTimeZone;
        }
    }
    NSArray *lastMinute = [[arr lastObject] componentsSeparatedByString:@":"];

    if (lastMinute.count == 1) {
        return [NSString stringWithFormat:@"%@%@%02d00",[arr firstObject],strSep,[[arr lastObject] intValue]];

    }else{
        return [NSString stringWithFormat:@"%@%@%02d%02d",[arr firstObject],strSep,[[lastMinute firstObject] intValue],[[lastMinute lastObject] intValue]];

    }
    return @"";
}

@end
