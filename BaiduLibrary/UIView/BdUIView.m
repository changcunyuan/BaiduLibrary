//
//  BdUIView.m
//  BaiduLibrary
//
//  Created by zhuayi on 14/11/7.
//  Copyright (c) 2014年 zhuayi inc. All rights reserved.
//

#import "BdUIView.h"

@implementation UIView (BdUIView)


- (void) setTxtAndIcon : (NSString *) txt font : (UIFont *) font color : (UIColor *) color leftIcoName : (NSString *) icon
{
    UILabel * txtlabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 1, 1)];
    txtlabel.text = txt;
    txtlabel.font = font;
    txtlabel.textColor = color;
    [txtlabel sizeToFit];
    [self addSubview:txtlabel];
    
    UIImageView  * leftIco = [[UIImageView alloc] initWithImage:[UIImage imageNamed:icon]];
    [self addSubview:leftIco];
    
    CGRect txtlabelFrame = txtlabel.frame;
    CGRect leftIcoFrame = leftIco.frame;
    CGRect selfFrame = self.frame;
    
    txtlabelFrame.origin.x = leftIco.frame.size.width + 5;
    
    if (leftIco.frame.size.height  > txtlabelFrame.size.height)
    {
        txtlabelFrame.origin.y = (leftIco.frame.size.height - txtlabelFrame.size.height) /2 ;
        selfFrame.size.height = leftIco.frame.size.height;
    }
    else
    {
        leftIcoFrame.origin.y = (txtlabelFrame.size.height - leftIco.frame.size.height) /2 ;
        selfFrame.size.height = txtlabelFrame.size.height;
    }
    selfFrame.size.width = txtlabelFrame.size.width + 5 + leftIcoFrame.size.width;
    
    txtlabel.frame = txtlabelFrame;
    leftIco.frame = leftIcoFrame;
    self.frame = selfFrame;
    
    
    
}

@end
