//
//  DistanceUtil.h
//  BaiduLibrary
//
//  Created by Liang on 14/11/23.
//  Copyright (c) 2014年 zhuayi inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface DistanceUtil : NSObject
/**
 *  计算2个经纬度之间的距离
 *
 *  @param point1 经纬度1
 *  @param point2 经纬度2
 *
 *  @return 距离
 */
+ (double)calculationDistanceWithPoint:(CLLocationCoordinate2D)point1 disPoint:(CLLocationCoordinate2D)point2;

@end
