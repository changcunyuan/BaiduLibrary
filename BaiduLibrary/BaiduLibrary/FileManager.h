//
//  FileManager.h
//  BaiduLibrary
//
//  Created by Liang on 15/1/7.
//  Copyright (c) 2015年 zhuayi inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileManager : NSObject

/**
 *  创建路径
 *
 *  @param strPath
 */
+ (void)createDocumentPath:(NSString *)strPath;

/**
 *  获取document下路径
 *
 *  @param fileName 文件名字
 *
 *  @return 文件路径
 */
+ (NSString *)getFilePathWithFileName:(NSString *)fileName;


/**
 *  删除Document下路径
 *
 *  @param fileName 文件名字
 *
 *  @return 是否删除
 */
+ (BOOL)deleteFilePath:(NSString *)fileName;

/**
 *  是否存在文件路径
 *
 *  @param fileName 文件路径
 *
 *  @return BOOL
 */
+ (BOOL)isExitFileName:(NSString *)fileName;

@end




