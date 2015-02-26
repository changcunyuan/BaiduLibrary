//
//  BaiduUtil.m
//  BaiduLibrary
//
//  Created by zhuayi on 14/10/31.
//  Copyright (c) 2014年 zhuayi inc. All rights reserved.
//

#import "BaiduUtil.h"

@implementation BaiduUtil


+ (NSString * ) formatterTimeToString : (NSTimeInterval) timer  formatterString : (NSString *) string
{
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    [formatter setLocale:[NSLocale currentLocale]];
    [formatter setDateFormat:string];
    
    NSDate * confromTimesp = [NSDate dateWithTimeIntervalSince1970:timer];
    
    NSString * date = [formatter stringFromDate:confromTimesp];
    //NSLog(@"date1:%@",date);

    return  date;
}
@end
