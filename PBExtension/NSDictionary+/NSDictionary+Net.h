//
//  NSDictionary+Net.h
//  PBDevelop
//
//  Created by Pengbo on 2017/2/28.
//  Copyright © 2017年 PBDevFoundation. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXPORT NSString * const BSSIDKey;
FOUNDATION_EXPORT NSString * const SSIDKey;
FOUNDATION_EXPORT NSString * const SSIDDATAKey;

@interface NSDictionary (Net)

/**
 获取当前wifi信息
 */

+ (NSDictionary *)p_getCurrentWifiInfo;

@end


NS_ASSUME_NONNULL_END
