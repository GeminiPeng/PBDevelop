//
//  NSData+FormData.h
//  PBDevelop
//
//  Created by Pengbo on 2017/3/1.
//  Copyright © 2017年 PBDevFoundation. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (FormData)

/**
 单文件上传,指定"文件数据"形式,不带文本内容

 @param request 网络请求
 @param fileData 文件数据
 @param name 服务器规定的文件字段名
 @param fileName 在服务器端上的文件存储吗
 @param mimType 文件类型,nil 默认设置为 application/octet-stream 通用类型
 image/jpeg                  图片文件
 image/png                   图片文件
 image/gif                   图片文件
 audio/mpeg                  mp3 文件
 video/mp4                   mp4 文件
 text/html                   html 文本文件
 text/plain                  txt 文本文件
 text/rtf                    rtf 文本文件
 application/pdf             pdf 文件
 application/json            json 文件
 application/octet-stream    8 进制流，如果不想告诉服务器具体的文件类型，可以使用这个
 @return 拼接的待上传文件的二进制数据
 */
+ (NSData *)p_formDataWithRequest:(NSMutableURLRequest *)request fileData:(NSData *)fileData name:(NSString *)name fileName:(NSString *)fileName mimeType:(nullable NSString *)mimType;

/**
 单文件上传,指定"文件路径"形式,不带文本内容

 @param request 网络请求
 @param fileURL 文件路径
 @param name 服务器规定的文件字段名
 @param fileName 在服务器端上的文件存储名,nil 默认以文件原名存储
 @param mimeType 文件类型,nil 默认设置application/octet-stream 通用类型
 @return 拼接的待上传文件的二进制数据,fileBoundary 文件分隔符默认设置 @"GeminUploadBoundary"
 */
+ (NSData *)p_formDataWithRequest:(NSMutableURLRequest *)request fileURL:(NSURL *)fileURL name:(NSString *)name fileName:(nullable NSString *)fileName mimeType:(nullable NSString *)mimeType;



/**
 多文件上传,指定"文件数据"形式,带文本内容

 @param request 网络请求
 @param texts 文本内容字符串
 @param textNames 服务器规定的文本内容字段名
 @param fileDatas 文件数据
 @param name 服务器规定的文件字段名
 @param fileNames 在服务器端上的文件存储名
 @param mimeTypes 文件类型
 @return 拼接的待上传文件以及文本的二进制数据
 */
+ (NSData *)p_formDataWithRequest:(NSMutableURLRequest *)request texts:(nullable NSArray<id> *)texts textName:(nullable NSArray<NSString *> *)textNames fileDatas:(NSArray<NSData *> *)fileDatas name:(NSString *)name fileNames:(NSArray<NSString *> *)fileNames mimeTypes:(nullable NSArray<NSString *> *)mimeTypes;


/**
 多文件上传,指定"文件路径"形式,带文本内容

 @param request 网络请求
 @param texts 文本内容字符串,texts = nil 或 texts[] = [NSNull null]默认不添加任何内容
 @param textNames 服务器规定的文本内容字段名,textName = nil 或 textNames[] = [NSNull null] 默认不添加文本内容
 @param fileURLs 文件路径
 @param name 服务器规定的文件字段名
 @param fileNames 在服务器端上的文件存储名,fileNames = nil 或 fileName[] = [NSNull null] 默认以文件原来的名字存储
 @param mimeType 文件类型
 @return 拼接的待上传文件以及文本的二进制数据
 */
+ (NSData *)p_formDataWithRequest:(NSMutableURLRequest *)request texts:(nullable NSArray<id> *)texts textNames:(nullable NSArray<NSString *> *)textNames fileURLs:(NSArray<NSURL *> *)fileURLs name:(NSString *)name fileNames:(nullable NSArray<NSString *> *)fileNames mimeTypes:(nullable NSArray<NSString *> *)mimeType;

@end

@interface NSMutableData (FormData)

- (void)p_setHttpHeaderFieldWithReques:(NSMutableURLRequest *)requset fileBoundary:(nullable NSString *)fileBoundary;


@end

NS_ASSUME_NONNULL_END
