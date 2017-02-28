//
//  NSDictionary+Net.m
//  PBDevelop
//
//  Created by Pengbo on 2017/2/28.
//  Copyright © 2017年 PBDevFoundation. All rights reserved.
//

#import "NSDictionary+Net.h"
#import <SystemConfiguration/CaptiveNetwork.h>

NS_ASSUME_NONNULL_BEGIN

@implementation NSDictionary (Net)

+ (NSDictionary *)p_getCurrentWifiInfo {
    
    NSDictionary * wifiDic = [NSDictionary dictionary];
    CFArrayRef arrayRef = CNCopySupportedInterfaces();
    if (arrayRef != nil) {
        CFDictionaryRef dicRef = CNCopyCurrentNetworkInfo(CFArrayGetValueAtIndex(arrayRef, 0));
        CFRelease(arrayRef);
        
        if (dicRef != nil) {
            wifiDic = (NSDictionary * )CFBridgingRelease(dicRef);
        }
    }
    
    return wifiDic;
}
@end

NS_ASSUME_NONNULL_END
