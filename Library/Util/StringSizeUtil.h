//
//  StringSizeUtil.h
//  PlanHelper
//
//  Created by zhangyihui on 14-7-22.
//  Copyright (c) 2014年 qyer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface StringSizeUtil : NSObject


/**
*  获取文本的高度
*
*  @param content 内容
*  @param pFont   字体
*  @param pWidth  宽度
*
*  @return 文字的高
*/
+(CGFloat)getContentSizeHeight:(NSString *)content font:(UIFont *)pFont width:(CGFloat)pWidth;


/**
 *  获取文本的宽度
 *
 *  @param content 内容
 *  @param pFont   字体
 *  @param pHeight 高度
 *
 *  @return 文本的宽
 */
+(CGFloat)getContentSizeWidth:(NSString *)content font:(UIFont *)pFont height:(CGFloat)pHeight;



/**
 *  根据字体计算文本单行都高度
 *
 *  @param font 字体
 *
 *  @return 文本的高度
 */
+ (CGFloat)getLineHeightWithFont:(UIFont *)font;
@end
