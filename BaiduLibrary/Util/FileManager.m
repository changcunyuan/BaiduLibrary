//
//  FileManager.m
//  BaiduLibrary
//
//  Created by Liang on 15/1/7.
//  Copyright (c) 2015年 zhuayi inc. All rights reserved.
//

#import "FileManager.h"

@implementation FileManager

+(void)createDocumentPath:(NSString *)strPath
{
    NSString *strPath2 = [self getFilePathWithFileName:strPath];
    NSFileManager *manager = [NSFileManager defaultManager];
    NSError *error;
    if (![self isExitFileName:strPath2]) {
        [manager createDirectoryAtPath:strPath2 withIntermediateDirectories:YES attributes:nil error:&error];
    }
}


+ (NSString *)getFilePathWithFileName:(NSString *)fileName{
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    return [documentDirectory stringByAppendingPathComponent:fileName];
    
}

+ (BOOL)isExitFileName:(NSString *)fileName{
    
    NSFileManager *manager = [NSFileManager defaultManager];
    BOOL exist = [manager fileExistsAtPath:fileName];
    return exist;
}
+ (BOOL)deleteFilePath:(NSString *)fileName{
    
    NSFileManager *manager = [NSFileManager defaultManager];
    NSString *strPath = [self getFilePathWithFileName:fileName];
    
    BOOL flag = NO;
    if ([self isExitFileName:strPath]) {
        
        flag = [manager removeItemAtPath:strPath error:nil];
        
    }
    return flag;
}
@end
