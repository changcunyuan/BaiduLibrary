//
//  BdUIView.h
//  BaiduLibrary
//
//  Created by zhuayi on 14/11/7.
//  Copyright (c) 2014年 zhuayi inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (BdUIView)

/**
 * 自定义 uiview
 * @param parentLocation 经纬度
 * @return -
 */

- (void) setTxtAndIcon : (NSString *) txt font : (UIFont *) font color : (UIColor *) color leftIcoName : (NSString *) icon;

@end
