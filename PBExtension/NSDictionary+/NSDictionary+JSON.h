//
//  NSDictionary+JSON.h
//  PBDevelop
//
//  Created by Pengbo on 2017/2/28.
//  Copyright © 2017年 PBDevFoundation. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (JSON)
/**
 json 字符串转换成字典
 
 */

+ (NSDictionary *)p_dictionaryWithJsonString:(NSString *)json;
@end

NS_ASSUME_NONNULL_END
