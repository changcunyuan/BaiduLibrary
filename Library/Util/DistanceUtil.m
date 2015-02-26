//
//  DistanceUtil.m
//  BaiduLibrary
//
//  Created by Liang on 14/11/23.
//  Copyright (c) 2014年 zhuayi inc. All rights reserved.
//

#import "DistanceUtil.h"

@implementation DistanceUtil

+ (double)calculationDistanceWithPoint:(CLLocationCoordinate2D)point1 disPoint:(CLLocationCoordinate2D)point2
{
    
    CLLocation *orig = [[CLLocation alloc] initWithLatitude:point1.latitude longitude:point1.longitude];
    CLLocation *dist = [[CLLocation alloc] initWithLatitude:point2.latitude longitude:point2.longitude];
    CLLocationDistance kilometers= [orig distanceFromLocation:dist]/1000;
    return kilometers;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
