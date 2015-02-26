//
//  StringSizeUtil.m
//  PlanHelper
//
//  Created by zhangyihui on 14-7-22.
//  Copyright (c) 2014年 qyer. All rights reserved.
//

#import "StringSizeUtil.h"

#define IOS7 [[[UIDevice currentDevice]systemVersion] floatValue] >= 7.0

@implementation StringSizeUtil


+(CGFloat)getContentSizeHeight:(NSString *)content font:(UIFont *)pFont width:(CGFloat)pWidth
{
    
    CGSize contentSize;
    if (IOS7) {
        
        contentSize = [content boundingRectWithSize:CGSizeMake(pWidth, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:[NSDictionary dictionaryWithObjectsAndKeys:pFont,NSFontAttributeName, nil] context:nil].size;
    }else{
        
        contentSize = [content sizeWithFont:pFont constrainedToSize:CGSizeMake(pWidth, MAXFLOAT) lineBreakMode:NSLineBreakByCharWrapping];
    }
    return contentSize.height;
}

+(CGFloat)getContentSizeWidth:(NSString *)content font:(UIFont *)pFont height:(CGFloat)pHeight
{
    CGSize contentSize;
    if (IOS7) {
        contentSize = [content boundingRectWithSize:CGSizeMake(MAXFLOAT, pHeight) options:NSStringDrawingUsesLineFragmentOrigin attributes:[NSDictionary dictionaryWithObjectsAndKeys:pFont,NSFontAttributeName, nil] context:nil].size;
        
    }else{
        
       contentSize = [content sizeWithFont:pFont constrainedToSize:CGSizeMake(MAXFLOAT, pHeight) lineBreakMode:NSLineBreakByCharWrapping];
    }
    return contentSize.width;
}

+ (CGFloat)getLineHeightWithFont:(UIFont *)font
{
    CGFloat lineHeight;
    if (IOS7) {
        
        lineHeight= [@"样本" sizeWithAttributes:[NSDictionary dictionaryWithObjectsAndKeys:font,NSFontAttributeName, nil]].height;
    }else{
       lineHeight = [@"样本" sizeWithFont:font].height;
    }
    
    return lineHeight;
}
@end
